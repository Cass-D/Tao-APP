define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var ShellImpl = require('$UI/system/lib/portal/shellImpl');

	var Model = function() {
		this.callParent();
		var shellImpl = new ShellImpl(this, {
		    "wingXid":"wing1",
			"contentsXid" : "pages",
			"pageMappings" : {
				"main" : {//主页
					url : require.toUrl('./main.w')
				},
				"dingdan" : {//订单显示页
					url : require.toUrl('./dingdan.w')
				},
				"detail" : {//商品详情页
					url : require.toUrl('./detail.w')
				},
				"sellActivity" : {//出售商品填写信息页
					url : require.toUrl('./sellActivity.w')
				},
				"UserInfo" : {//完善个人信息页
					url : require.toUrl('./UserInfo.w')
				},
				"collect" : {//收藏页
					url : require.toUrl('./collect.w')
				},
				"rootclass" : {//收藏页
					url : require.toUrl('./rootclass.w')
				}
			}
		})

	};

	Model.prototype.modelLoad = function(event){
		justep.Shell.showPage("main");
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
	
	
	
	return Model;

});