define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	require("cordova!org.apache.cordova.geolocation");
	require("cordova!com.justep.cordova.plugin.baidulocation");
	require("cordova!org.apache.cordova.device");
	
	var fenlei=0;
	var select;
	var Model = function(){
		this.callParent();
		this.userID;
		this.loadUser=true;
		this.loadOrder=true;
	};
		//this.comp("orderinfo").setOrderBy("ordetime", "asc");//排序
		//this.comp("orderinfo").setFilter("f1", "id= 1");//对数据进行过滤显示
		
	Model.prototype.modelLoad = function(event){
		var me=this;
		this.userID = "user11";
		this.comp("userinfo").setFilter("filter1", "userid= '" + this.userID + "' ");
		this.comp("orderinfo").setFilter("filter1", "userid= '" + this.userID + "'");
		// 配置过滤条件
		if (justep.Browser.isX5App) {
			document.addEventListener("deviceready", function() {
				me.userID = window.device.uuid;
			})
		}
	};
	
	Model.prototype.getImgUrl = function(imgUrl){
		return require.toUrl("./img/"+imgUrl);
	};
	
	Model.prototype.detailButtonClick = function(event){
		// 将ShopList当前行的数据传送到detail.w详细界面
		var row = event.bindingContext.$object;
		this.comp("detailWindowDialog").open({
			"data" : {
				"operate" : "new",
				"rowData" : row.toJson()
			}
		})
	};
	Model.prototype.searchListDivClick = function(event){
		// 将SearchList当前行的数据传送到detail.w详细界面
		var row = event.bindingContext.$object;
		var searsh = this.comp("searsh");
		this.comp("detailWindowDialog").open({
			"data" : {
				"operate" : "new",
				"rowData" : row.toJson()
			}
		})
		searsh.clear();
	};
	//减数量
	Model.prototype.reductionBtnClick = function(event){
	    //减少数量按钮绑定点击事件onClick()
		//点击按钮，当前记录的count值减1
		// count为1时不再相减
		var row = event.bindingContext.$object;
		var n=row.val("count");
		if(n>0){
			row.val("count",n-1);
		}
	};
	//加数量
	Model.prototype.addButtonClick = function(event){
        //1、增加数量按钮绑定点击事件onClick()
		//2、点击按钮，当前记录的count值加1
		var row = event.bindingContext.$object;
		row.val("count",row.val("count")+1);
	};
	
	
   //判断loadUser，是否加载userinfo
	Model.prototype.loadUserData = function(event){
		if(this.loadUser){
			var userinfo=this.comp("userinfo");
			userinfo.refreshData();
			if(userinfo.getCount()==0){
				userinfo.newData({
					defaultValues : [ {
						"userid" : this.userID,
						"username" : "新用户"
					} ]
				})
			}
			this.loadUser=false;
		}
	};
    //刷新加载userinfo
	Model.prototype.carContentActive = function(event){
		this.loadUserData();
	};
	
    //保存用户信息
	Model.prototype.saveuserBtnClick = function(event){
		this.comp("userinfo").saveData({
		"onSuccess":function(){
			justep.Util.hint("用户信息保存成功")}
		})
	};
	
	Model.prototype.orderBtnClick = function(event){
		var orderinfo = this.comp("orderinfo");
		var userinfo = this.comp("userinfo");
		var carData = this.comp("carData");
		var calcData = this.comp("calcData");
		var shopinfo = this.comp("shopinfo");
		var me = this;
		var sContent = "";
		var moneySum=0;
		var paystate=0;
		// 数据校验
		if ($.trim(userinfo.val("username")) === "" ||$.trim(userinfo.val("userstatus")) === '1' || $.trim(userinfo.val("phone")) === "" || $.trim(userinfo.val("school")) === "") {
			justep.Util.hint("请填写完整的用户信息", {
				"type" : "danger"
			});
			return;
		}
		carData.each(function(options) {
			// 回调函数每一行触发一次
			// 合并订单内容shopname+count到Content
			sContent = sContent + options.row.val("shopname") + "(" + options.row.val("count") + ")";
		});
		calcData.each(function(options) {//给定支付状态
			moneySum = moneySum + options.row.val("summoney");
			if(moneySum>0){
				paystate=1;
			}
		});
		var orderRows = orderinfo.newData({  // 生成订单数据
			index : 0,
			defaultValues : [ {
				//"orderid" : justep.UUID.createUUID(),//
				"ordertime" : justep.Date.toString(new Date(), justep.Date.STANDART_FORMAT),//
				"Content" : sContent,//订单内容
				"userid" : userinfo.val("userid"),//用户ID
				"username" : userinfo.val("username"),//用户姓名
				"userPhone" : userinfo.val("phone"),//用户号码
				"userAddress" : userinfo.val("school"),//用户地址
				
				"sUserName" : shopinfo.val("username"),//商品者的姓名
				"sUserPhone" : shopinfo.val("userphne"),//商品者的号码
				"sDes" : shopinfo.val("des"),//商品的描述
				"sModel" : shopinfo.val("region"),//商品的类型
				"sPrice" : shopinfo.val("model"),//商品的价格
				"shopname" : shopinfo.val("shopname"),//商品的描述
				"shopid" : shopinfo.val("shopid"),//用户ID
				"moneySum" : this.comp("calcData").val("summoney"),//订单金额
				"paystate": paystate
			} ]
		})
		orderinfo.saveData({
			"onSuccess" : function() {
				// 保存成功清除购物车，并跳转到订单页
				justep.Util.hint("下单成功")
				carData.clear();
				//justep.Shell.showPage("dingdan");
				me.comp("contents2").to("setting");
			},
			"onError" : function(msg) {
				// 保存失败后清除订单数据
				orderinfo.deleteData(orderRows);
				Baas.showError(msg);
			}
		})
		this.comp("userinfo").saveData();
	};
	//清空购物车按钮
	Model.prototype.cleanCartBtnClick = function(event) {
		this.comp("carData").clear();
	};
	
	Model.prototype.orderinfoSaveCreateParam = function(event){
		event.param.tables.push(this.comp("userinfo").toJson(true));
	};
	Model.prototype.orderinfoSaveCommit = function(event){
		this.comp("userinfo").applyUpdates();
	};
	
	//搜索按钮单击事件 
	Model.prototype.SearshBtnClick = function(row){
		var shopinfo = this.comp("shopinfo");
		var sxdata=this.comp("sxdata");
		var searchdata=this.comp("searsh");
		var select=this.comp("keyinput").val();
		var rows=[];
		var kkk=[];
		var ss=[];
		shopinfo.each(function(param){
			 if(param.row.val('shopname').indexOf(select) != -1)
                {
                   rows.push(param.row.val('shopname'));
                    kkk.push(
                    {'shopid':param.row.val('shopid')},
                    {'shopame':param.row.val('shopname')})    
                  searchdata.newData({defaultValues:kkk});
                  /*ss.push(
                    {'searchKey':param.row.val('shopid')})    
                  sxdata.newData({defaultValues:ss});*/
                 }
		});
		//alert("找到有： "+rows);
	};	
	Model.prototype.jiageBtnClick = function(event){
		//价格筛选按钮功能； 价格按钮事件 弹出价格筛选的遮罩
		this.comp("pricePopOver").show();
	};	
	Model.prototype.priceBtnClick = function(event){
		// 价格筛选按钮 获取两个值并写入数据库jiagedata 以便写筛选条件
		this.comp("sxdata").getFirstRow().val("a1", this.getElementByXid("price1").value);
		this.comp("sxdata").getFirstRow().val("a2", this.getElementByXid("price2").value);
		this.comp("pricePopOver").hide();// 价格返回按钮 隐藏价格遮罩
	};	
	Model.prototype.fanhuiBtnClick = function(event){
		this.comp("sxdata").getFirstRow().val("a1", 0);
		this.comp("sxdata").getFirstRow().val("a2", 10000);
		this.comp("pricePopOver").hide();// 价格返回按钮 隐藏价格遮罩
	};
	Model.prototype.sortingBtnClick = function(event){
		fenlei='0';
		shopinfo.refreshData();
	};
	Model.prototype.categoryBtnClick = function(event){
		this.comp("categorypopOver").show();
	};
	Model.prototype.dzBtnClick = function(event){
		fenlei='2';
		this.comp("categorypopOver").hide();
		var shopinfo=this.comp("shopinfo");
		shopinfo.refreshData();
	};
	
	Model.prototype.ydBtnClick = function(event){
		fenlei='1';
		this.comp("categorypopOver").hide();
		var shopinfo=this.comp("shopinfo");
		shopinfo.refreshData();
	};
	Model.prototype.bookBtnClick = function(event){
		fenlei='3';
		this.comp("categorypopOver").hide();
		var shopinfo=this.comp("shopinfo");
		shopinfo.refreshData();
	};

	Model.prototype.foodBtnClick = function(event){
		fenlei='4';
		this.comp("categorypopOver").hide();
		var shopinfo=this.comp("shopinfo");
		shopinfo.refreshData();
	};

	Model.prototype.reBtnClick = function(event){
		fenlei='0';
		this.comp("categorypopOver").hide();
		var shopinfo=this.comp("shopinfo");
		shopinfo.refreshData();
	};
	
	Model.prototype.test = function(row){
	if(fenlei == 0){
		if(row.val('categoryid')=='1'|| row.val('categoryid')=='2'||
		row.val('categoryid')=='3'||row.val('categoryid')=='4'){return true;}
	   }
	else {
		if(row.val('categoryid')==fenlei){return true;}
		}
	return false;
	};
	
	Model.prototype.sellBtnClick = function(event){
		//点击出售按钮，跳转到填写商品信息页面
		justep.Shell.showPage("sellActivity");
	};
	Model.prototype.UserInfoBtnClick = function(event){
		//点击个人信息按钮，跳转到填写个人信息页面
		justep.Shell.showPage("UserInfo");
	};
	Model.prototype.functionBtnClick = function(event){
		//点击我的订单，跳转到我的订单信息页dingdan.w
		justep.Shell.showPage("dingdan");
	};
	Model.prototype.collectBtnClick = function(event){
		//点击我的收藏，跳转到收藏页
		justep.Shell.showPage("collect");
	};
	Model.prototype.agreementBtnClick = function(event){
		//应用协议按钮事件，弹出agreementDialog对话框
		this.comp("agreementDialog").show();
	};
	Model.prototype.contactbtnClick = function(event){
		//联系开发者按钮事件，弹出messageDialg对话框
		this.comp("messageDialg").show();
	};
	
	
	Model.prototype.getLocation = function() {
		var gpsDtd = $.Deferred();//声明JQuery的Deferred(延迟)对象
		if (navigator.geolocation) {
			var success = function(data) {
				// data.longtitude 经度
				// data.latitude 纬度
				// data.address 文字描述的地址信息
				// data.hasRadius 是否有定位精度半径
				// data.radius 定位精度半径
				// data.type 定位方式
				// data.coorType
				gpsDtd.resolve({
					coorType : data.coorType,
					longitude : data.coords.longitude,
					latitude : data.coords.latitude,
					address : data.formatted_address
				});
			};
			var fail = function(e) {
				justep.Util.hint("获取地理位置失败，暂时采用默认地址");
				gpsDtd.resolve({
					longitude : 113.57431,
					latitude : 23.308793
				});
			};
			navigator.geolocation.getCurrentPosition(success, fail);
		} else {
			justep.Util.hint("获取地理位置失败，暂时采用默认地址");
			gpsDtd.resolve({
				longitude : 113.57431,
				latitude : 23.308793
			});
		}
		return gpsDtd.promise();
	};
	
	Model.prototype.locationClick = function(event) {
		var me = this;
		var gpsDtb=me.getLocation();
		gpsDtb.done(function(position){
			function successCallback(position) {
				var lat = position.coords.latitude;//获取到纬度
				var lon = position.coords.longitude;//获取到经度
				alert("定位成功");
				alert("维度: " + position.coords.latitude);
				alert("经度: " + position.coords.longitude);
				//alert("dz: " + position.coords.addressComponent);
				//var url = 'https://api.map.baidu.com/geocoder/v2/?ak= bDvHkgG3q3ux4lOXYehWbAOOEomUk0Xs &amp;callback=renderReverse&amp;location=' + lat + ',' + lon + '&amp;output=json&amp;pois=1';
				//var url = 'https://api.map.baidu.com/geocoder/v2/?ak= BNSdZ3bhkUiFz8wbsGkdmti0VksLtxwi &amp;callback=renderReverse&amp;location=' + lat + ',' + lon + '&amp;output=json&amp;pois=1';
				var   url = 'http://api.map.baidu.com/geocoder/v2/?callback=renderReverse&location=23.308793,113.57431&output=json&pois=1&ak=BNSdZ3bhkUiFz8wbsGkdmti0VksLtxwi';
				$.ajax({
					url : url,
					dataType : 'jsonp',
					processData : false,
					type : 'get',
					success : function(data) {
						alert(data.result.formatted_address);
						//alert(data.result.addressComponent);
						var addtext = data.result.formatted_address;
						me.comp("input7").set("value", addtext)
					},
					error : function(XMLHttpRequest, textStatus, errorThrown) {
						alert(textStatus + "无法获得地理位置名称");
					}
				});
				/*me.comp("mapDialog").open({
					data : JSON.stringify(position)
				});*/
		}
			function errorCallback(error) {
				alert("失败");
			}
			navigator.geolocation.getCurrentPosition(successCallback, errorCallback);
		});	
	
};
	Model.prototype.settingBtnClickClick = function(event){
		// 通过Shell显示左边的设置
		justep.Shell.showLeft();
	};
/*Model.prototype.detailWindowDialogReceived = function(event){
	// 对话框返回后保存数据
		this.comp("accountData").saveData();
	};*/
return Model;
});