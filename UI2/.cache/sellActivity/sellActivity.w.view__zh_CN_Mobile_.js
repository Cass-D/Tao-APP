window.__justep.__ResourceEngine.loadCss([{url: '/v_72a484dc9daa4a049ba94241dbf12d92l_zh_CNs_d_m/system/components/comp.min.css', include: '$model/system/components/justep/row/css/row,$model/system/components/justep/attachment/css/attachment,$model/system/components/justep/barcode/css/barcodeImage,$model/system/components/justep/panel/css/panel,$model/system/components/justep/common/css/scrollable,$model/system/components/justep/scrollView/css/scrollView,$model/system/components/justep/input/css/datePickerPC,$model/system/components/justep/contents/css/contents,$model/system/components/justep/popMenu/css/popMenu,$model/system/components/justep/lib/css/icons,$model/system/components/justep/titleBar/css/titleBar,$model/system/components/justep/dataTables/css/dataTables,$model/system/components/justep/dialog/css/dialog,$model/system/components/justep/messageDialog/css/messageDialog,$model/system/components/justep/toolBar/css/toolBar,$model/system/components/justep/popOver/css/popOver,$model/system/components/justep/loadingBar/loadingBar,$model/system/components/justep/input/css/datePicker,$model/system/components/justep/dataTables/css/dataTables,$model/system/components/justep/wing/css/wing,$model/system/components/bootstrap/scrollSpy/css/scrollSpy,$model/system/components/justep/menu/css/menu,$model/system/components/justep/numberSelect/css/numberList,$model/system/components/justep/list/css/list,$model/system/components/bootstrap/carousel/css/carousel,$model/system/components/bootstrap/dropdown/css/dropdown,$model/system/components/justep/common/css/forms,$model/system/components/justep/bar/css/bar'},{url: '/v_2f6e81d8a37948ab926a70825bfb8083l_zh_CNs_d_m/system/components/bootstrap.min.css', include: '$model/system/components/bootstrap/lib/css/bootstrap,$model/system/components/bootstrap/lib/css/bootstrap-theme'}]);window.__justep.__ResourceEngine.loadJs(['/v_3fe644e54ecd46ad9e10ab78009bb9e0l_zh_CNs_d_m/system/components/comp.min.js','/v_0595b510109542189df249080eb6e1f7l_zh_CNs_d_m/system/common.min.js','/v_c5970c0dd7a247d68f666a05226e3ae7l_zh_CNs_d_m/system/core.min.js']);define(function(require){
require('$model/UI2/system/components/justep/labelEdit/labelEdit');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/row/row');
require('$model/UI2/system/components/justep/panel/panel');
require('$model/UI2/system/components/justep/panel/child');
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/window/window');
require('$model/UI2/system/components/justep/data/baasData');
require('$model/UI2/system/components/justep/titleBar/titleBar');
require('$model/UI2/system/components/justep/button/button');
require('$model/UI2/system/components/justep/input/input');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/guangshangtao/sellActivity'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cINFFZj';
	this._flag_='2a9fe140929d0eb9504ffe4f2c9ba177';
	this.callParent(contextUrl);
 var __BaasData__ = require("$UI/system/components/justep/data/baasData");new __BaasData__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"category":{"define":"category","label":"category","name":"category","relation":"category","type":"String"},"id":{"define":"id","label":"id","name":"id","relation":"id","rules":{"integer":true},"type":"Integer"}},"directDelete":false,"events":{},"idColumn":"id","limit":20,"queryAction":"queryCategory","saveAction":"saveCategory","tableName":"category","url":"/gst/tao","xid":"CategoryData"});
 new __BaasData__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"category":{"define":"category","label":"商品类别","name":"category","relation":"category","type":"String"},"categoryid":{"define":"categoryid","label":"商品类别","name":"categoryid","relation":"categoryid","rules":{"integer":true},"type":"Integer"},"des":{"define":"des","label":"描述","name":"des","relation":"des","type":"String"},"detail":{"define":"detail","label":"详细描述","name":"detail","relation":"detail","type":"String"},"picture":{"define":"picture","label":"图片","name":"picture","relation":"picture","type":"String"},"price":{"define":"price","label":"价格","name":"price","relation":"price","rules":{"number":true},"type":"Float"},"put_time":{"define":"put_time","label":"put_time","name":"put_time","relation":"put_time","rules":{"datetime":true},"type":"DateTime"},"shop_status":{"define":"shop_status","label":"商品是否显示","name":"shop_status","relation":"shop_status","rules":{"integer":true},"type":"Integer"},"shopid":{"define":"shopid","label":"商品ID","name":"shopid","relation":"shopid","rules":{"integer":true},"type":"Integer"},"shopname":{"define":"shopname","label":"商品名","name":"shopname","relation":"shopname","type":"String"},"username":{"define":"username","label":"发布者姓名","name":"username","relation":"username","type":"String"},"userphne":{"define":"userphne","label":"用户电话","name":"userphne","relation":"userphne","type":"String"}},"directDelete":false,"events":{},"idColumn":"shopid","limit":20,"queryAction":"queryShopinfo","saveAction":"saveShopinfo","tableName":"shopinfo","url":"/gst/tao","xid":"shopinfo"});
}}); 
return __result;});