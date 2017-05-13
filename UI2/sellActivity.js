define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function(){
		this.callParent();
	};
	
	Model.prototype.saveBtnClick = function(event){
		var shopinfo = this.comp("shopinfo");
		var picture = "carouselImg.jpg";
		/*var shopID=0;
		shopinfo.each(function(options) {
			ShopID = ShopID + shopinfo.count("shopid") + 1;
		});*/
		shopinfo.newData({ 
			defaultValues : [ {
				//"shopid" : 24,
				"shopname" :this.getElementByXid("Name").value,
				"des" : this.getElementByXid("Des").value,//商品的描述
				"username" : this.getElementByXid("Username").value,//用户姓名
				"userphne" : this.getElementByXid("Userphone").value,//用户号码
				"detail" : this.getElementByXid("Detail").value,//商品的描述
				"categoryid" : 6,
				"picture" : picture,//默认图片
				"price" : this.getElementByXid("Price").value,//商品的价格
				"shop_status" : 0,//商品是否显示0为显示
				"put_time" : justep.Date.toString(new Date(),justep.Date.STANDART_FORMAT),
				"category" : this.getElementByXid("Category").value,//商品的类型描述
				/*"shopname" : this.comp('Name').val(),//商品的名称
				"des" : this.comp('Des').val(),//商品的描述
				"username" : this.comp('Username').val(),//用户姓名
				"userphne" : this.comp('Userphone').val(),//用户号码
				"datail" : this.comp('Datail').val(),//商品的描述
				"categoryid" : 1,
				"picture" : picture,//默认图片
				"price" : this.comp('Price').val(),//商品的价格
				"shop_status" : 1,//商品是否显示1为显示
				"put_time" : justep.Date.toString(new Date(),justep.Date.STANDART_FORMAT),
				"category" : this.comp('Category').val(),//商品的类型描述
*/			} ]
		})
		shopinfo.saveData({onSuccess:function() {
			justep.Util.hint("保存成功");
			justep.Shell.showPage("main");
		}});
	};
	
	return Model;
});

