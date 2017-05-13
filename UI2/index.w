<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;left:390px;top:161px;" onLoad="modelLoad"/>  
  
  
  <div component="$UI/system/components/justep/wing/wing" class="x-wing" xid="wing1">
   <div class="x-wing-left" xid="left1"><div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" xid="titleBar1" style="background-color:#FF8000;">
   <div class="x-titlebar-left" xid="left2"></div>
   <div class="x-titlebar-title" xid="title1"></div>
   <div class="x-titlebar-right reverse" xid="right2"></div></div>
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel4">
   
   <div class="x-panel-top" xid="top2">
   <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" xid="titleBar3" style="background-color:#FF8000;">
    <div class="x-titlebar-left" xid="left3"></div>
    <div class="x-titlebar-title" xid="title3"></div>
    <div class="x-titlebar-right reverse" xid="right3"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" xid="button6" icon="icon-navicon-round">
   <i xid="i6" class="icon-navicon-round"></i>
   <span xid="span6"></span></a></div></div> </div><div class="x-panel-content" xid="content4">
    <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel6">
     <div class="x-panel-content" xid="content5">
      <div xid="touxiang" style="margin:5px auto;width:165px;height:151px;background-color:#FF8040;"><img alt="" xid="image2" style="width:165px;" src="$UI/guangshangtao/img/user1.png" height="100%"></img></div><div xid="div10" class="panel panel-default x-card">
       <div xid="div3">
   <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-left pull-left" label="个人信息" xid="UserInfoBtn" onClick="UserInfoBtnClick" style="width:100%;" icon="icon-person-add">
    <i xid="i19" class="icon-person-add"></i>
    <span xid="span24">个人信息</span></a> 
   <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-left" label="出售物品" xid="sellBtn" style="width:100%;" icon="icon-compose" onClick="sellBtnClick">
    <i xid="i31" class="icon-compose"></i>
    <span xid="span48">出售物品</span></a> 
   <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-left" label="         我的订单" xid="functionBtn" icon="icon-document" style="width:100%;" onClick="functionBtnClick">
    <i xid="i11" class="icon-document"></i>
    <span xid="span11">我的订单</span></a> 
   <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-left" label="         我的收藏" xid="collectBtn" icon="icon-ios7-star-outline" style="width:100%;" onClick="collectBtnClick">
    <i xid="i16" class="icon-ios7-star-outline"></i>
    <span xid="span21">我的收藏</span></a> 
   <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-left" label="         联系客服" xid="contactbtn" onClick="contactbtnClick" icon="icon-email" style="width:100%;">
    <i xid="i14" class="icon-email"></i>
    <span xid="span18">联系客服</span></a> 
   <a component="$UI/system/components/justep/button/button" label="         应用协议" xid="agreementBtn" onClick="agreementBtnClick" style="width:100%;" icon="icon-social-reddit-outline" class="btn btn-link btn-icon-left">
    <i xid="i13" class="icon-social-reddit-outline"></i>
    <span xid="span17">应用协议</span></a> </div></div> 
  </div> </div> </div> </div></div>
   <div class="x-wing-content" xid="content1">
    <div class="x-wing-backdrop" xid="div1"></div><div component="$UI/system/components/justep/contents/contents" class="x-contents x-full" active="0" xid="pages" swipe="false">
   <div class="x-contents-content" xid="main">
    <div component="$UI/system/components/justep/windowContainer/windowContainer" class="x-window-container" xid="mainContainer" src="./main.w"></div></div> </div></div> 
   <div class="x-wing-right" xid="right1"></div></div>
  <span component="$UI/system/components/justep/messageDialog/messageDialog" xid="agreementDialog" style="left:203px;top:674px;" message="使用规则；知识产权；个人隐私；侵权举报；免责声明；协议修改" title="应用协议"></span>
  <span component="$UI/system/components/justep/messageDialog/messageDialog" xid="messageDialg" style="left:164px;top:670px;" title="联系客服：" message="感谢你致电我们，我们将会继续完善用户体验。Email:casedw@gmail.com"></span></div>