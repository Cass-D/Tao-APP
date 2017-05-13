define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function(){
		this.callParent();
	};
/*
	Model.prototype.orderinfoBeforeRefresh = function(event){
		this.comp("orderinfo").setOrderBy("ordetime", "acs");//排序
		//DESC倒序排序(即：从大到小排序)  ACS正序排序(即：从小到大排序)
		//this.comp("orderinfo").setFilter("f1", "id= 1");//对数据进行过滤显示
	};*/
	return Model;
});