<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:128px;left:106px;"> 
  <div component="$UI/system/components/justep/data/baasData" autoLoad="true" xid="shipinfo" queryAction="queryShopinfo" saveAction="saveShopinfo" url="/gst/tao" tableName="shopinfo" idColumn="shopid"><column label="商品ID" name="shopid" type="Integer" xid="default1"></column>
  <column label="商品名" name="shopname" type="String" xid="default2"></column>
  <column label="描述" name="des" type="String" xid="default3"></column>
  <column label="发布者姓名" name="username" type="String" xid="default4"></column>
  <column label="用户电话" name="userphne" type="String" xid="default5"></column>
  <column label="商品类别" name="categoryid" type="Integer" xid="default6"></column>
  <column label="图片" name="picture" type="String" xid="default7"></column>
  <column label="价格" name="price" type="Integer" xid="default8"></column>
  <column label="商品是否显示" name="shop_status" type="Integer" xid="default9"></column>
  <column label="put_time" name="put_time" type="DateTime" xid="default10"></column></div></div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1"><div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" xid="titleBar1" title="Tao">
   <div class="x-titlebar-left" xid="left1"></div>
   <div class="x-titlebar-title" xid="title1">Tao</div>
   <div class="x-titlebar-right reverse" xid="right1"></div></div></div><div class="x-panel-content" xid="content1"><div component="$UI/system/components/justep/contents/contents" class="x-contents x-full" active="0" xid="contents2">
   <div class="x-contents-content  x-scroll-view" xid="列表"><div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView" xid="scrollView1">
   <div class="x-content-center x-pull-down container" xid="div1">
    <i class="x-pull-down-img glyphicon x-icon-pull-down" xid="i5"></i>
    <span class="x-pull-down-label" xid="span5">下拉刷新...</span></div> 
   <div class="x-scroll-content" xid="div2"><div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" data="shipinfo">
   <ul class="x-list-template" xid="listTemplateUl1">
    <li xid="li1" class="x-min-height list-group-item"><div xid="div4" class="media"><div xid="div5" class="media-left"><img src="" alt="" xid="image1" align="bottom" class="img-rounded" bind-attr-src='$model.getImgUrl($object.val("image"))'></img></div>
  <div xid="div6" class="media-body"><div component="$UI/system/components/justep/output/output" class="x-output" xid="output1" bind-ref='ref("shopname")'></div>
  <div component="$UI/system/components/justep/output/output" class="x-output" xid="output2" bind-ref='ref("des")'></div>
  <div component="$UI/system/components/justep/output/output" class="x-output" xid="output3" bind-ref='ref("price")'></div>
  <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm pull-right" label="详情" xid="button1">
   <i xid="i6"></i>
   <span xid="span7">详情</span></a></div></div></li></ul> </div></div>
   <div class="x-content-center x-pull-up" xid="div3">
    <span class="x-pull-up-label" xid="span6">加载更多...</span></div> </div></div>
  <div class="x-contents-content" xid="content3"></div>
  <div class="x-contents-content" xid="购物车"></div>
  <div class="x-contents-content" xid="设置"></div></div></div>
  <div class="x-panel-bottom" xid="bottom1"><div component="$UI/system/components/justep/button/buttonGroup" class="btn-group x-card btn-group-justified" tabbed="true" xid="buttonGroup1" selected="Home"><a component="$UI/system/components/justep/button/button" class="btn btn-default btn-icon-top" label="动态" xid="Home" icon="icon-android-note" target="列表">
   <i xid="i1" class="icon-android-note"></i>
   <span xid="span1">动态</span></a>
  <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-icon-top" label="搜索" xid="button2" target="content3" icon="glyphicon glyphicon-search">
   <i xid="i2" class="glyphicon glyphicon-search"></i>
   <span xid="span2">搜索</span></a>
  <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-icon-top" label="购物车" xid="ShoppingCar" target="购物车" icon="linear linear-clock">
   <i xid="i3" class="linear linear-clock"></i>
   <span xid="span3">购物车</span></a>
  <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-icon-top" label="设置" xid="Setting" target="设置" icon="dataControl dataControl-user">
   <i xid="i4" class="dataControl dataControl-user"></i>
   <span xid="span4">设置</span></a></div></div></div> 
</div>