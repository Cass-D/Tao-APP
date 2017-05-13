<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="main13" component="$UI/system/components/justep/window/window" design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="width:209px;height:auto;top:414px;left:300px;" onLoad="modelLoad" onParamsReceive="modelParamsReceive">
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="carData" idColumn="carID">
   <column label="商品的ID" name="carID" type="String" xid="xid1"></column>
  <column label="商品的名称" name="shopname" type="String" xid="xid2"></column>
  <column label="商品的价格" name="price" type="Float" xid="xid3"></column>
  <column label="数量" name="count" type="Integer" xid="xid4"></column>
  <column label="商品的金额" name="money" type="Float" xid="xid5"></column>
  <column label="商品的图片" name="picture" type="String" xid="xid6"></column>
  <master xid="default12"></master>
  <rule xid="rule1">
   <col name="money" xid="ruleCol1">
    <calculate xid="calculate1">
     <expr xid="default11">$row.val(&quot;price&quot;) * $row.val(&quot;count&quot;)</expr></calculate> </col> </rule></div>
  <div component="$UI/system/components/justep/data/baasData" autoLoad="true" xid="userinfo" saveAction="saveUserinfo" queryAction="queryUserinfo" tableName="userinfo" url="/gst/tao" idColumn="userid"><column label="用户ID" name="userid" type="Integer" xid="default1"></column>
  <column label="用户名" name="username" type="String" xid="default2"></column>
  <column label="密码" name="password" type="String" xid="default3"></column>
  <column label="邮箱" name="email" type="String" xid="default4"></column>
  <column label="学校" name="school" type="String" xid="default5"></column>
  <column label="院系" name="court" type="String" xid="default6"></column>
  <column label="专业" name="professional" type="String" xid="default7"></column>
  <column label="用户状态" name="userstatus" type="Integer" xid="default8"></column>
  <column label="号码" name="phone" type="String" xid="default9"></column></div>
  <div component="$UI/system/components/justep/data/baasData" autoLoad="true" xid="shopinfo" saveAction="saveShopinfo" queryAction="queryShopinfo" tableName="shopinfo" url="/gst/tao" idColumn="shopid">
   <column label="商品ID" name="shopid" type="Integer" xid="default14"></column>
   <column label="商品名" name="shopname" type="String" xid="default15"></column>
   <column label="描述" name="des" type="String" xid="default16"></column>
   <column label="详细描述" name="detail" type="String" xid="default17"></column>
   <column label="发布者姓名" name="username" type="String" xid="default18"></column>
   <column label="用户电话" name="userphne" type="String" xid="default19"></column>
   <column label="商品类别" name="categoryid" type="Integer" xid="default22"></column>
   <column label="图片" name="picture" type="String" xid="default23"></column>
   <column label="价格" name="price" type="Float" xid="default24"></column>
   <column label="商品是否显示" name="shop_status" type="Integer" xid="default25"></column>
   <column label="put_time" name="put_time" type="DateTime" xid="default26"></column>
   <column label="商品类别" name="category" type="String" xid="default27"></column></div>
  <div component="$UI/system/components/justep/data/baasData" autoLoad="true" xid="messages" saveAction="saveMessages" queryAction="queryMessages" tableName="messages" url="/gst/tao" idColumn="messageid"><column label="留言id" name="messageid" type="Integer" xid="default28"></column>
  <column label="物品ID外键" name="shopid" type="Integer" xid="default29"></column>
  <column label="用户ID外键" name="userid" type="Integer" xid="default30"></column>
  <column label="留言内容" name="content" type="String" xid="default31"></column>
  <column label="留言者姓名" name="username" type="String" xid="default32"></column>
  <column label="接收留言" name="receivename" type="String" xid="default33"></column>
  <column label="留言时间" name="Leave_time" type="DateTime" xid="default34"></column>
  <column label="评论是否显示" name="Leave_status" type="Integer" xid="default35"></column></div>
  <div component="$UI/system/components/justep/data/baasData" autoLoad="true" xid="collectionData" saveAction="saveCollection" queryAction="queryCollection" tableName="collection" url="/gst/tao" idColumn="cID"><column label="cid" name="cID" type="Integer" xid="default21"></column>
  <column label="商品ID" name="shopid" type="Integer" xid="default36"></column>
  <column label="用户ID" name="userid" type="Integer" xid="default37"></column>
  <column label="商品名" name="shopname" type="String" xid="default38"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="searchData" idColumn="id">
   <column name="id" type="Integer" xid="xid13"></column>
   <column name="sname" type="String" xid="xid14"></column>
   <column name="shopid" type="Integer" xid="xid15"></column>
   <data xid="default10">[]</data></div></div> 
<span component="$UI/system/components/justep/windowReceiver/windowReceiver" xid="windowReceiver1" style="left:190px;top:372px;"></span>
  <div component="$UI/system/components/justep/popOver/popOver" class="x-popOver" direction="auto" xid="popOver" position="bottom">
   <div class="x-popOver-overlay" xid="div7"></div>
   <div class="x-popOver-content" xid="div8"></div></div>
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full x-card tb-trans x-has-iosstatu">
   <div class="x-panel-top" xid="top4"><div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar tb-box" xid="titleBar1">
   <div class="x-titlebar-left" xid="left1"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon tb-backBtn" xid="backBtn" icon="icon-chevron-left" onClick="backBtnClick">
   <i xid="i1" class="icon-chevron-left"></i>
   <span xid="span1"></span></a></div>
   <div class="x-titlebar-title" xid="title1"></div>
   <div class="x-titlebar-right reverse" xid="right1"></div></div></div>
   <div class="x-panel-content x-cards tb-trans">
  
  
  
  <div component="$UI/system/components/bootstrap/carousel/carousel" class="x-carousel" xid="carousel1">
   <ol class="carousel-indicators" xid="ol1"></ol>
   <div class="x-contents carousel-inner" role="listbox" component="$UI/system/components/justep/contents/contents" active="0" slidable="true" wrap="true" swipe="true" routable="false" xid="contents1">
    <div class="x-contents-content" xid="content1">
     <div component="$UI/system/components/justep/row/row" class="x-row" xid="row1">
      <div class="x-col" xid="col3">
       <img src="" alt="" xid="image1" class="image-wall tb-img" bind-attr-src=' $model.getImgUrl( $model.shopinfo.val("picture"))'></img></div> </div> </div> </div> </div>
  <div component="$UI/system/components/justep/panel/panel" class="panel panel-default x-card panel-body" xid="panel1">
   <div component="$UI/system/components/bootstrap/row/row" class="row tb-nopadding" xid="row2">
    <div class="col col-xs-10  tb-nopadding" xid="col4">
     <h4 xid="h41" class=" text-black" bind-text='$model.shopinfo.ref("shopname")'></h4>
     <div xid="div1">
      <span xid="span11" class="text-danger h3">￥</span>
      <span xid="span12" class="text-danger h3" bind-text='$model.shopinfo.ref("price")'></span></div> 
     <div xid="div2"></div></div> 
    <div class="col col-xs-2  tb-nopadding" xid="col5">
     <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-top pull-right tb-nopadding" label="分享" xid="shareBtn" icon="icon-android-share" onClick="shareBtnClick">
      <i xid="i7" class="icon-android-share"></i>
      <span xid="span13">分享</span></a> </div> </div> 
   <div component="$UI/system/components/bootstrap/row/row" class="row text-muted h5 tb-nopadding" xid="row3">
    <div class="col col-xs-4  tb-nopadding" xid="col7">
     <span xid="span14">快递</span>
     <span xid="span15">免邮</span></div> 
    <div class="col col-xs-4 text-center" xid="col8"></div>
    <div class="col col-xs-4 text-center" xid="col9">
     <span xid="span19">地址</span></div> </div> </div>
  <div component="$UI/system/components/justep/panel/panel" class="panel panel-default x-card" xid="panel2">
   
  <div component="$UI/system/components/justep/list/list" class="x-list" xid="list3" data="messages" filter='$row.val("shopid")  == $model.shopinfo.val("shopid")'>
   <ul class="x-list-template" xid="listTemplateUl2">
    <li xid="li3"><div class="panel-body" xid="div3">
   <div class="h5 text-black" xid="div6">
    <span xid="span20">宝贝评价（</span>
    <span xid="span21">1</span>
    <span xid="span22">）</span></div> 
   <div class="media-body" xid="mediaBody1">
    <span xid="span23" bind-text="ref('receivename')"></span></div> 
   <div xid="div11">
    <span xid="span24" bind-text="ref('content')"></span></div> 
   <div class="text-muted" xid="div12">
    <span xid="span25" bind-text='$model.shopinfo.ref("put_time")'></span></div> 
   <div component="$UI/system/components/justep/button/buttonGroup" class="btn-group btn-group-justified" tabbed="true" xid="buttonGroup3">
    <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label text-black" label="查看更多评论" xid="moreBtn">
     <i xid="i8"></i>
     <span xid="span26">查看更多评论</span></a> </div> </div></li></ul> </div></div>
  <div component="$UI/system/components/justep/panel/panel" class="panel x-card" xid="panel3">
   <div component="$UI/system/components/justep/button/buttonGroup" class="btn-group btn-group-justified tb-tabs" tabbed="true" xid="buttonGroup1">
    <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label active" label="图文详情" xid="detailsBtn" target="detailsContent">
     <i xid="i9"></i>
     <span xid="span27">图文详情</span></a> 
    <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label" label="产品参数" xid="parameterBtn" target="parameterContent">
     <i xid="i10"></i>
     <span xid="span28">产品参数</span></a> </div> 
   <div component="$UI/system/components/justep/contents/contents" class="x-contents" active="0" xid="contents2">
    <div class="x-contents-content panel-body" xid="detailsContent">
     <div component="$UI/system/components/justep/list/list" class="x-list x-cards" xid="list2" data="shopinfo">
      <ul class="x-list-template" xid="listTemplateUl1" componentname="ul(html)" id="undefined_ul1">
       <li xid="li2" componentname="li(html)" id="undefined_li1" class="list-group-item">
        <div xid="div39">
   <img src="" alt="" xid="image4" bind-attr-src='$model.getImgUrl( $object.val("picture"))' class="img-rounded" style="width:100%;" height="100%"></img></div><span bind-text=' $object.ref("shopname")' class="col col-xs-4 tb-nopadding text-muted" xid="span9"></span>
        <span bind-text='$object.ref("des")' class="x-flex col col-xs-8 tb-nopadding" xid="span8"></span>
        <div class="clearfix" xid="div5"></div>
  </li> </ul> </div> </div> 
    <div class="x-contents-content panel-body" xid="parameterContent">
     <div component="$UI/system/components/justep/list/list" class="x-list x-cards" xid="list1" data="shopinfo">
      <ul class="x-list-template" xid="ul1" componentname="ul(html)" id="undefined_ul1">
       <li xid="li1" componentname="li(html)" id="undefined_li1" class="list-group-item">
        <div xid="div9">
         <span bind-text=' $object.ref("shopname")' class="col col-xs-4 tb-nopadding text-muted" xid="span2"></span>
         <span bind-text='$object.ref("des")' class="x-flex col col-xs-8 tb-nopadding" xid="span6"></span></div> 
        <div class="clearfix" xid="div4"></div>
        <div xid="div10">
         <span bind-text='"出售者："+   $object.val("username") +"类型："+   $object.val("category")' class="col col-xs-4 tb-nopadding text-muted" xid="span29"></span>
         <span bind-text=' $object.ref("detail")' class="x-flex col col-xs-8 tb-nopadding" xid="span10"></span></div> </li> </ul> </div> </div> </div> </div></div>
   <div class="x-panel-bottom" xid="bottom4"><div component="$UI/system/components/bootstrap/row/row" class="row">
   <div xid="col2"><div component="$UI/system/components/justep/button/buttonGroup" class="btn-group btn-group-justified tb-shopping" tabbed="true" xid="buttonGroup2"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-top" label="店铺" xid="dianpuBtn" icon="icon-bag" onClick="dianpuBtnClick">
   <i xid="i3" class="icon-bag"></i>
   <span xid="span3">店铺</span></a>
  <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-top" label="收藏" xid="shoucangBtn" icon="icon-ios7-star-outline" onClick="shoucangBtnClick">
   <i xid="i4" class="icon-ios7-star-outline"></i>
   <span xid="span4">收藏</span></a>
  <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-top" label="加入购物车" xid="joinCartBtn" icon="icon-ios7-cart-outline" onClick="joinCartBtnClick">
   <i xid="i5" class="icon-ios7-cart-outline"></i>
   <span xid="span5">加入购物车</span></a></div></div>
   </div></div></div></div>