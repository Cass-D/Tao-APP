define(function(require){
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/row/row');
require('$model/UI2/system/components/justep/panel/panel');
require('$model/UI2/system/components/justep/panel/child');
require('$model/UI2/system/components/justep/scrollView/scrollView');
require('$model/UI2/system/components/justep/list/list');
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/window/window');
require('$model/UI2/system/components/justep/data/baasData');
require('$model/UI2/system/components/justep/titleBar/titleBar');
require('$model/UI2/system/components/justep/button/button');
require('$model/UI2/system/components/justep/output/output');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/guangshangtao/dingdan'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='ceeQbmq';
	this._flag_='737735e0c6bf2334257d5b14bdd689d6';
	this.callParent(contextUrl);
 var __BaasData__ = require("$UI/system/components/justep/data/baasData");new __BaasData__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"Content":{"define":"Content","label":"订单内容","name":"Content","relation":"Content","type":"String"},"amount":{"define":"amount","label":"数量","name":"amount","relation":"amount","rules":{"integer":true},"type":"Integer"},"moneySum":{"define":"moneySum","label":"订单金额","name":"moneySum","relation":"moneySum","rules":{"integer":true},"type":"Integer"},"orderid":{"define":"orderid","label":"订单id","name":"orderid","relation":"orderid","type":"String"},"ordertime":{"define":"ordertime","label":"订单时间","name":"ordertime","relation":"ordertime","rules":{"datetime":true},"type":"DateTime"},"paystate":{"define":"paystate","label":"付款状态","name":"paystate","relation":"paystate","rules":{"integer":true},"type":"Integer"},"sDes":{"define":"sDes","label":"商品的描述","name":"sDes","relation":"sDes","type":"String"},"sModel":{"define":"sModel","label":"商品的类型","name":"sModel","relation":"sModel","type":"String"},"sPrice":{"define":"sPrice","label":"商品的价格","name":"sPrice","relation":"sPrice","rules":{"number":true},"type":"Float"},"sUserName":{"define":"sUserName","label":"商品者的姓名","name":"sUserName","relation":"sUserName","type":"String"},"sUserPhone":{"define":"sUserPhone","label":"商品者的号码","name":"sUserPhone","relation":"sUserPhone","type":"String"},"shopid":{"define":"shopid","label":"物品ID外键","name":"shopid","relation":"shopid","rules":{"integer":true},"type":"Integer"},"shopname":{"define":"shopname","label":"商品名称","name":"shopname","relation":"shopname","type":"String"},"userAddress":{"define":"userAddress","label":"地址","name":"userAddress","relation":"userAddress","type":"String"},"userPhone":{"define":"userPhone","label":"号码","name":"userPhone","relation":"userPhone","type":"String"},"userid":{"define":"userid","label":"用户ID外键","name":"userid","relation":"userid","rules":{"integer":true},"type":"Integer"},"username":{"define":"username","label":"用户姓名","name":"username","relation":"username","type":"String"}},"directDelete":false,"events":{},"idColumn":"orderid","limit":10,"queryAction":"queryOrderinfo","saveAction":"saveOrderinfo","tableName":"orderinfo","url":"/gst/tao","xid":"orderinfo"});
 new __BaasData__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"court":{"define":"court","label":"院系","name":"court","relation":"court","type":"String"},"email":{"define":"email","label":"邮箱","name":"email","relation":"email","type":"String"},"password":{"define":"password","label":"密码","name":"password","relation":"password","type":"String"},"phone":{"define":"phone","label":"号码","name":"phone","relation":"phone","type":"String"},"professional":{"define":"professional","label":"专业","name":"professional","relation":"professional","type":"String"},"school":{"define":"school","label":"学校（地址）","name":"school","relation":"school","type":"String"},"userid":{"define":"userid","label":"用户ID","name":"userid","relation":"userid","rules":{"integer":true},"type":"Integer"},"username":{"define":"username","label":"用户名","name":"username","relation":"username","type":"String"},"userstatus":{"define":"userstatus","label":"用户状态","name":"userstatus","relation":"userstatus","rules":{"integer":true},"type":"Integer"}},"directDelete":false,"events":{},"idColumn":"userid","limit":20,"queryAction":"queryUserinfo","saveAction":"saveUserinfo","tableName":"userinfo","url":"/gst/tao","xid":"userinfo"});
}}); 
return __result;});