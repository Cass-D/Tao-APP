define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	
	var Model = function(){
		this.callParent();
	};
	Model.prototype.modelLoad = function(event) {
	};
    // 关闭当前页（window）返回上一页
	Model.prototype.StroreBtnClick = function(event) {
		// var url = '$UI/xiaozujun/xzj.w'; justep.Shell.showPage(url);
		this.comp("window").close();
	};
	Model.prototype.backBtnClick = function(event) {
		this.comp("window").close();
		//justep.Shell.closePage();
	};
   Model.prototype.modelParamsReceive = function(event) {
		// 接收main.w传过来的info数据放在第一行
		this.comp("shopinfo").loadData([ event.params.data.rowData ]);
		this.comp("shopinfo").first();
		// this.getElementByXid('image1').attr("./img/1.jpg");
	};
	
   // 图片路径
	Model.prototype.getImgUrl = function(imgUrl1) {
		return require.toUrl("./img/" + imgUrl1);
		//return require.toUrl(url);
	};
	
	// 加入购物车功能，跳转到shoplist
	Model.prototype.joinCartBtnClick = function(event){
		//var row = event.bindingContext.$object;
		var cartData = this.comp("carData");
		if (cartData.find([ 'carID' ], [ this.comp("shopinfo").getCurrentRow().val("shopid") ]).length == 0) {
			cartData.newData({
				index : 0,
				defaultValues : [ {
					"carID" : this.comp("shopinfo").getCurrentRow().val("shopid"),
					"shopname" : this.comp("shopinfo").getCurrentRow().val("shopname"),
					"price" : this.comp("shopinfo").getCurrentRow().val("price"),
					"picture" : this.comp("shopinfo").getCurrentRow().val("picture"),
					"count" : 1
				} ]
			});
		} else {
			// this.comp("carData").getCurrentRow().val("fCount",this.comp("carData").getCurrentRow().val("fCount")+1);
			justep.Util.hint("你已有把相同产品加入了购物车")
		}
		// 将订单cartdata数据传送到xzj.w文件相同的数据表中，并关闭当前页面
		this.owner.send(this.comp("carData").getCurrentRow());
		this.comp("window").close();
	};
	
	//收藏按钮事件
	Model.prototype.shoucangBtnClick = function(event){
		var collectionData = this.comp("collectionData");
		var userinfo = this.comp("userinfo");
		var shopinfo = this.comp("shopinfo");
		if (collectionData.find([ 'cID' ], [ this.comp("shopinfo").getCurrentRow().val("shopid") ]).length == 0) {
			collectionData.newData({
				defaultValues : [ {
					//"cID" : justep.UUID.createUUID(),
					"cID" : this.comp("shopinfo").getCurrentRow().val("shopid"),
					"shopid" : this.comp("shopinfo").getCurrentRow().val("shopid"),
					"userid" : this.comp("userinfo").getCurrentRow().val("userid"),
					"shopname" : this.comp("shopinfo").getCurrentRow().val("shopname"),
				} ]
			});
		} else {
			justep.Util.hint("你已有把相同产品收藏")
		}
		collectionData.saveData({
			"onSuccess" : function() {
				justep.Util.hint("收藏成功")
			},
			"onError" : function(msg) {
				justep.Util.hint("收藏出错")
			}
			})
		this.owner.send(this.comp("collectionData").getCurrentRow());
		this.comp("window").close();
	};
	
	//分享按钮
	Model.prototype.shareBtnClick = function(event){
		/*
		1、获取商品ID 
		2、打开分享页面
        3、参数说明 
            thumb：缩略图，可以显示商品图片，注意不能大于32kb，链接从http开始
			webpageUrl: 分享链接，使用location.href显示当前页面，链接从http开始
			scene:分享到微信朋友圈、微信朋友、微信群 
				weixin.Scene.TIMELINE 是分享到微信朋友圈
		 		weixin.Scene.SESSION 是分享给微信朋友、微信群
		*/
		if (!navigator.weixin) {
			return;
		}
		var weixin = navigator.weixin;
		var Utils = require("$UI/system/components/justep/common/utils");		
		weixin.share({
			message : {
				title : this.comp("shopinfo").val("shopname"),
				description : "",
				mediaTagName : "",
				thumb : location.origin + require.toUrl("./img/icon.png"),
				media : {
					type : weixin.Type.WEBPAGE,
					webpageUrl : Utils.getShareUrl()
				}
			},
			scene : weixin.Scene.TIMELINE
		}, function() {
			alert("Success");
		}, function(reason) {
			alert("Failed: " + reason);
		});
	};
	
	Model.prototype.dianpuBtnClick = function(event){
		this.comp("window").close();
	};

	return Model;
});