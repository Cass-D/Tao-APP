define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function(){
		this.callParent();
	};
	
	Model.prototype.getImgUrl = function(imgUrl){
		return require.toUrl("./img/"+imgUrl);
	};
	
	Model.prototype.delBtnClick = function(event){
		// 行删除
		var data = this.comp("collectiondata");
		var row = event.bindingContext.$object;
		data.deleteData([ row ], {
			"async" : true,
			"onSuccess" : function() {
				//justep.Util.hint("信息保存成功");
				data.saveData();
				//data.refreshData();
			}
		});
	};
	Model.prototype.div5Click = function(event){
		// 将collectList当前行的数据传送到detail.w详细界面
		var row = event.bindingContext.$object;
		this.comp("detailWindowDialog").open({
			"data" : {
				"operate" : "new",
				"rowData" : row.toJson()
			}
		})
	};
	return Model;
});