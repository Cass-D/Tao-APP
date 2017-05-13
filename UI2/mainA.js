define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function(){
		this.callParent();
	};
    // 图片绝对路径
	Model.prototype.getImgUrl = function(imgUrl) {
		return require.toUrl("./img/" + imgUrl);
	};
	return Model;
});