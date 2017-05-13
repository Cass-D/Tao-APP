<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;left:323px;top:443px;"> 
  <div component="$UI/system/components/justep/data/baasData" autoLoad="true" xid="userinfo" queryAction="queryUserinfo" saveAction="saveUserinfo" url="/gst/tao" tableName="userinfo" idColumn="userid">
   <column label="用户ID" name="userid" type="Integer" xid="default39"></column>
  <column label="用户名" name="username" type="String" xid="default40"></column>
  <column label="密码" name="password" type="String" xid="default41"></column>
  <column label="邮箱" name="email" type="String" xid="default42"></column>
  <column label="学校" name="school" type="String" xid="default43"></column>
  <column label="院系" name="court" type="String" xid="default44"></column>
  <column label="专业" name="professional" type="String" xid="default45"></column>
  <column label="用户状态" name="userstatus" type="Integer" xid="default46"></column>
  <column label="号码" name="phone" type="String" xid="default47"></column></div>
  <div component="$UI/system/components/justep/data/baasData" autoLoad="true" xid="shopinfo" saveAction="saveShopinfo" queryAction="queryShopinfo" tableName="shopinfo" url="/gst/tao" idColumn="shopid">
   <column label="商品ID" name="shopid" type="Integer" xid="default8"></column>
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
  <div component="$UI/system/components/justep/data/baasData" autoLoad="true" xid="collectiondata" saveAction="saveCollection" queryAction="queryCollection" tableName="collection" url="/gst/tao" idColumn="cID"><column label="cid" name="cID" type="Integer" xid="default9"></column>
  <column label="商品ID" name="shopid" type="Integer" xid="default10"></column>
  <column label="用户ID" name="userid" type="Integer" xid="default11"></column>
  <column label="商品名" name="shopname" type="String" xid="default12"></column></div></div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" title="收藏列表"
          class="x-titlebar">
          <div class="x-titlebar-left"> 
            <a component="$UI/system/components/justep/button/button"
              label="" class="btn btn-link btn-only-icon" icon="icon-chevron-left"
              onClick="{operation:'window.close'}" xid="backBtn"> 
              <i class="icon-chevron-left"/>  
              <span></span> 
            </a> 
          </div>  
          <div class="x-titlebar-title">收藏列表</div>  
          <div class="x-titlebar-right reverse"> 
          </div>
        </div> 
      </div>  
    <div class="x-panel-content  x-scroll-view" xid="content1" _xid="C783F6C14AB00001A86A17F013501C97" style="bottom: 0px;"><div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView" xid="scrollView1">
   <div class="x-content-center x-pull-down container" xid="div1">
    <i class="x-pull-down-img glyphicon x-icon-pull-down" xid="i5"></i>
    <span class="x-pull-down-label" xid="span5">下拉刷新...</span></div> 
   <div class="x-scroll-content" xid="div2">
    
  
  
  <div component="$UI/system/components/justep/list/list" class="x-list" xid="list2" data="collectiondata">
   <ul class="x-list-template" xid="listTemplateUl1">
    <li xid="li1">
  <div component="$UI/system/components/justep/list/list" class="x-list x-cards" xid="list1" data="shopinfo" disableInfiniteLoad="true" limit="-1" filter="$row.val('shopname')==$object.val('shopname')">
   <ul class="x-list-template x-min-height list-group" xid="listTemplateUl2" componentname="$UI/system/components/justep/list/list#listTemplateUl" id="undefined_listTemplateUl1">
    <li xid="li2" class="x-min-height list-group-item" componentname="li(html)" id="undefined_li1" style="height:147px;">
     
  <div xid="div4" class="media">
   <div xid="div6" class="media-left">
    <img src="" alt="" xid="image1" style="width:106px;height:110px;" bind-attr-src='$model.getImgUrl( $object.val("picture"))' class="img-rounded"></img></div> 
   <div xid="div5" class="media-body" bind-click="div5Click">
    <div component="$UI/system/components/justep/output/output" class="x-output list-group-item-text" xid="output1" bind-ref='ref("shopname")'></div>
    
    <div component="$UI/system/components/justep/output/output" class="x-output" xid="output3" bind-ref='ref("price")' bind-text='"类别："+$object.val("category")'></div>
    <div component="$UI/system/components/justep/output/output" class="x-output" xid="output2" bind-ref='ref("price")' bind-text='"       价格： "+ "$ " + $object.val("price")  +"元"'></div></div> 
  <div xid="div7" class="media-right"><a component="$UI/system/components/justep/button/button" label="删除" xid="delBtn" icon="icon-arrow-right-c" class="btn btn-link btn-only-icon pull-right account-delete" onClick="[{operation:'shopinfo.save'},{operation:'shopinfo.delete'}]">
   <i xid="i1" class="icon-arrow-right-c"></i>
   <span xid="span1">删除</span></a></div></div></li> </ul> </div>
  </li></ul> </div></div> 
   <div class="x-content-center x-pull-up" xid="div3">
    <span class="x-pull-up-label" xid="span6">加载更多...</span></div> </div></div>
  </div> 
<span component="$UI/system/components/justep/windowDialog/windowDialog" xid="detailWindowDialog" src="./detail.w" style="left:135px;top:669px;">
    
  <result concept="carData" operation="edit" origin="carData" xid="default1">
   <mapping from="carID" to="carID" locator="true" xid="default2"></mapping>
   <mapping from="shopname" to="shopname" xid="default3"></mapping>
   <mapping from="price" to="price" xid="default4"></mapping>
   <mapping from="count" to="count" xid="default5"></mapping>
   <mapping from="money" to="money" xid="default6"></mapping>
   <mapping from="picture" to="picture" xid="default7"></mapping></result></span></div>