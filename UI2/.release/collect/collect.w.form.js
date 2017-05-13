define(function(require){
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/panel/panel');
require('$model/UI2/system/components/justep/panel/child');
require('$model/UI2/system/components/justep/scrollView/scrollView');
require('$model/UI2/system/components/justep/list/list');
require('$model/UI2/system/components/justep/windowDialog/windowDialog');
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/window/window');
require('$model/UI2/system/components/justep/data/baasData');
require('$model/UI2/system/components/justep/titleBar/titleBar');
require('$model/UI2/system/components/justep/button/button');
require('$model/UI2/system/components/justep/output/output');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/guangshangtao/collect'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cq2MRBj';
	this._flag_='4abbe42818fce6ce16779336a7b1f2aa';
	this.callParent(contextUrl);
 var __BaasData__ = require("$UI/system/components/justep/data/baasData");new __BaasData__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"court":{"define":"court","label":"院系","name":"court","relation":"court","type":"String"},"email":{"define":"email","label":"邮箱","name":"email","relation":"email","type":"String"},"password":{"define":"password","label":"密码","name":"password","relation":"password","type":"String"},"phone":{"define":"phone","label":"号码","name":"phone","relation":"phone","type":"String"},"professional":{"define":"professional","label":"专业","name":"professional","relation":"professional","type":"String"},"school":{"define":"school","label":"学校","name":"school","relation":"school","type":"String"},"userid":{"define":"userid","label":"用户ID","name":"userid","relation":"userid","rules":{"integer":true},"type":"Integer"},"username":{"define":"username","label":"用户名","name":"username","relation":"username","type":"String"},"userstatus":{"define":"userstatus","label":"用户状态","name":"userstatus","relation":"userstatus","rules":{"integer":true},"type":"Integer"}},"directDelete":false,"events":{},"idColumn":"userid","limit":20,"queryAction":"queryUserinfo","saveAction":"saveUserinfo","tableName":"userinfo","url":"/gst/tao","xid":"userinfo"});
 new __BaasData__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"category":{"define":"category","label":"商品类别","name":"category","relation":"category","type":"String"},"categoryid":{"define":"categoryid","label":"商品类别","name":"categoryid","relation":"categoryid","rules":{"integer":true},"type":"Integer"},"des":{"define":"des","label":"描述","name":"des","relation":"des","type":"String"},"detail":{"define":"detail","label":"详细描述","name":"detail","relation":"detail","type":"String"},"picture":{"define":"picture","label":"图片","name":"picture","relation":"picture","type":"String"},"price":{"define":"price","label":"价格","name":"price","relation":"price","rules":{"number":true},"type":"Float"},"put_time":{"define":"put_time","label":"put_time","name":"put_time","relation":"put_time","rules":{"datetime":true},"type":"DateTime"},"shop_status":{"define":"shop_status","label":"商品是否显示","name":"shop_status","relation":"shop_status","rules":{"integer":true},"type":"Integer"},"shopid":{"define":"shopid","label":"商品ID","name":"shopid","relation":"shopid","rules":{"integer":true},"type":"Integer"},"shopname":{"define":"shopname","label":"商品名","name":"shopname","relation":"shopname","type":"String"},"username":{"define":"username","label":"发布者姓名","name":"username","relation":"username","type":"String"},"userphne":{"define":"userphne","label":"用户电话","name":"userphne","relation":"userphne","type":"String"}},"directDelete":false,"events":{},"idColumn":"shopid","limit":20,"queryAction":"queryShopinfo","saveAction":"saveShopinfo","tableName":"shopinfo","url":"/gst/tao","xid":"shopinfo"});
 new __BaasData__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"cID":{"define":"cID","label":"cid","name":"cID","relation":"cID","rules":{"integer":true},"type":"Integer"},"shopid":{"define":"shopid","label":"商品ID","name":"shopid","relation":"shopid","rules":{"integer":true},"type":"Integer"},"shopname":{"define":"shopname","label":"商品名","name":"shopname","relation":"shopname","type":"String"},"userid":{"define":"userid","label":"用户ID","name":"userid","relation":"userid","rules":{"integer":true},"type":"Integer"}},"directDelete":false,"events":{},"idColumn":"cID","limit":20,"queryAction":"queryCollection","saveAction":"saveCollection","tableName":"collection","url":"/gst/tao","xid":"collectiondata"});
}}); 
return __result;});