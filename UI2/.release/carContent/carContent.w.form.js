define(function(require){
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