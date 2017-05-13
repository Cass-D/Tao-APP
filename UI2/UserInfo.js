define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function(){
		this.callParent();
	};

	Model.prototype.okBtnClick = function(event){
		var userData = this.comp("userinfo");
		userData.saveData({onSuccess:function() {
			justep.Util.hint("用户信息保存成功");
		}});
		this.comp("window").close();
	};
	return Model;
});