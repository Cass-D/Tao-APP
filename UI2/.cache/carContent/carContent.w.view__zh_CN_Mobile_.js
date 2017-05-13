window.__justep.__ResourceEngine.loadCss([{url: '/v_0a8a1fcf58064251a283e9749f5ead54l_zh_CNs_d_m/system/components/bootstrap.min.css', include: '$model/system/components/bootstrap/lib/css/bootstrap,$model/system/components/bootstrap/lib/css/bootstrap-theme'},{url: '/v_0b20a4f7f9a84d7aa378d993a3cdab9fl_zh_CNs_d_m/system/components/comp.min.css', include: '$model/system/components/justep/lib/css2/dataControl,$model/system/components/justep/input/css/datePickerPC,$model/system/components/justep/messageDialog/css/messageDialog,$model/system/components/justep/lib/css3/round,$model/system/components/justep/input/css/datePicker,$model/system/components/justep/row/css/row,$model/system/components/justep/attachment/css/attachment,$model/system/components/justep/barcode/css/barcodeImage,$model/system/components/bootstrap/dropdown/css/dropdown,$model/system/components/justep/dataTables/css/dataTables,$model/system/components/justep/contents/css/contents,$model/system/components/justep/common/css/forms,$model/system/components/justep/locker/css/locker,$model/system/components/justep/menu/css/menu,$model/system/components/justep/scrollView/css/scrollView,$model/system/components/justep/loadingBar/loadingBar,$model/system/components/justep/dialog/css/dialog,$model/system/components/justep/bar/css/bar,$model/system/components/justep/popMenu/css/popMenu,$model/system/components/justep/lib/css/icons,$model/system/components/justep/lib/css4/e-commerce,$model/system/components/justep/toolBar/css/toolBar,$model/system/components/justep/popOver/css/popOver,$model/system/components/justep/panel/css/panel,$model/system/components/bootstrap/carousel/css/carousel,$model/system/components/justep/wing/css/wing,$model/system/components/bootstrap/scrollSpy/css/scrollSpy,$model/system/components/justep/titleBar/css/titleBar,$model/system/components/justep/lib/css1/linear,$model/system/components/justep/numberSelect/css/numberList,$model/system/components/justep/list/css/list,$model/system/components/justep/dataTables/css/dataTables'}]);window.__justep.__ResourceEngine.loadJs(['/v_17c1f5f280e34303a858ea5dddd9d6b5l_zh_CNs_d_m/system/core.min.js','/v_533410035fa54050a3f696743454d922l_zh_CNs_d_m/system/common.min.js','/v_f01324d3d80642f1bc7118e8de4b8e86l_zh_CNs_d_m/system/components/comp.min.js']);define(function(require){
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/button/button');
require('$model/UI2/system/components/justep/button/checkbox');
require('$model/UI2/system/components/justep/scrollView/scrollView');
require('$model/UI2/system/components/justep/row/row');
require('$model/UI2/system/components/justep/list/list');
require('$model/UI2/system/components/justep/titleBar/titleBar');
require('$model/UI2/system/components/justep/panel/child');
require('$model/UI2/system/components/justep/window/window');
require('$model/UI2/system/components/justep/data/baasData');
require('$model/UI2/system/components/justep/panel/panel');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/guangshangtao/carContent'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cNVVFRn';
	this._flag_='4ae3d60c3606cce48e1947f996da661b';
	this.callParent(contextUrl);
 var __BaasData__ = require("$UI/system/components/justep/data/baasData");new __BaasData__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"categoryid":{"define":"categoryid","label":"商品类别","name":"categoryid","relation":"categoryid","rules":{"integer":true},"type":"Integer"},"des":{"define":"des","label":"描述","name":"des","relation":"des","type":"String"},"picture":{"define":"picture","label":"图片","name":"picture","relation":"picture","type":"String"},"price":{"define":"price","label":"价格","name":"price","relation":"price","rules":{"integer":true},"type":"Integer"},"put_time":{"define":"put_time","label":"put_time","name":"put_time","relation":"put_time","rules":{"datetime":true},"type":"DateTime"},"shop_status":{"define":"shop_status","label":"商品是否显示","name":"shop_status","relation":"shop_status","rules":{"integer":true},"type":"Integer"},"shopid":{"define":"shopid","label":"商品ID","name":"shopid","relation":"shopid","rules":{"integer":true},"type":"Integer"},"shopname":{"define":"shopname","label":"商品名","name":"shopname","relation":"shopname","type":"String"},"username":{"define":"username","label":"发布者姓名","name":"username","relation":"username","type":"String"},"userphne":{"define":"userphne","label":"用户电话","name":"userphne","relation":"userphne","type":"String"}},"directDelete":false,"events":{},"idColumn":"shopid","limit":20,"queryAction":"queryShopinfo","saveAction":"saveShopinfo","tableName":"shopinfo","url":"/gst/tao","xid":"shopinfo"});
}}); 
return __result;});
