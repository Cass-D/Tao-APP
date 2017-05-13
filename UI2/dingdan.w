<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="top:420px;left:202px;height:auto;"> 
  <div component="$UI/system/components/justep/data/baasData" autoLoad="true" xid="orderinfo" queryAction="queryOrderinfo" saveAction="saveOrderinfo" url="/gst/tao" tableName="orderinfo" idColumn="orderid" limit="10"><column label="订单id" name="orderid" type="String" xid="default1"></column>
  <column label="订单时间" name="ordertime" type="DateTime" xid="default2"></column>
  <column label="订单内容" name="Content" type="String" xid="default3"></column>
  <column label="用户ID外键" name="userid" type="Integer" xid="default4"></column>
  <column label="用户姓名" name="username" type="String" xid="default5"></column>
  <column label="号码" name="userPhone" type="String" xid="default6"></column>
  <column label="地址" name="userAddress" type="String" xid="default7"></column>
  <column label="商品者的姓名" name="sUserName" type="String" xid="default8"></column>
  <column label="商品者的号码" name="sUserPhone" type="String" xid="default9"></column>
  <column label="商品的描述" name="sDes" type="String" xid="default10"></column>
  <column label="商品的类型" name="sModel" type="String" xid="default11"></column>
  <column label="商品的价格" name="sPrice" type="Float" xid="default12"></column>
  <column label="订单金额" name="moneySum" type="Integer" xid="default13"></column>
  <column label="物品ID外键" name="shopid" type="Integer" xid="default14"></column>
  <column label="数量" name="amount" type="Integer" xid="default15"></column>
  <column label="付款状态" name="paystate" type="Integer" xid="default16"></column>
  <column label="商品名称" name="shopname" type="String" xid="default17"></column></div>
  <div component="$UI/system/components/justep/data/baasData" autoLoad="true" xid="userinfo" saveAction="saveUserinfo" queryAction="queryUserinfo" tableName="userinfo" url="/gst/tao" idColumn="userid"><column label="用户ID" name="userid" type="Integer" xid="default18"></column>
  <column label="用户名" name="username" type="String" xid="default19"></column>
  <column label="密码" name="password" type="String" xid="default20"></column>
  <column label="邮箱" name="email" type="String" xid="default21"></column>
  <column label="学校（地址）" name="school" type="String" xid="default22"></column>
  <column label="院系" name="court" type="String" xid="default23"></column>
  <column label="专业" name="professional" type="String" xid="default24"></column>
  <column label="号码" name="phone" type="String" xid="default25"></column>
  <column label="用户状态" name="userstatus" type="Integer" xid="default26"></column></div></div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" title="订单信息"
          class="x-titlebar">
          <div class="x-titlebar-left"> 
            <a component="$UI/system/components/justep/button/button"
              label="" class="btn btn-link btn-only-icon" icon="icon-chevron-left"
              onClick="{operation:'window.close'}" xid="backBtn"> 
              <i class="icon-chevron-left"/>  
              <span></span> 
            </a> 
          </div>  
          <div class="x-titlebar-title">订单信息</div>  
          <div class="x-titlebar-right reverse"> 
          </div>
        </div> 
      </div>  
    <div class="x-panel-content  x-scroll-view" xid="content1" _xid="C7835D25BFF000015E2E1AF0444A11AF" style="bottom: 0px;"><div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView" xid="scrollView3">
   <div class="x-content-center x-pull-down container" xid="div22">
    <i class="x-pull-down-img glyphicon x-icon-pull-down" xid="i12"></i>
    <span class="x-pull-down-label" xid="span23">下拉刷新...</span></div> 
   <div class="x-scroll-content" xid="div21">
    <div component="$UI/system/components/justep/list/list" class="x-list" xid="orderList" data="orderinfo" style="margin: 5px;" limit="10" autoLoad="true">
     <ul class="x-list-template" xid="listTemplateUl3">
      <li xid="li3">
       <div component="$UI/system/components/justep/row/row" class="x-row" xid="row7">
        <div xid="col13">
         <div class="x-col" xid="col4"><span xid="span22" style="font-weight:bold;" class="x-output">下单时间：</span></div></div> 
        <div class="x-col" xid="col18">
         <div component="$UI/system/components/justep/output/output" class="x-output" xid="output7" bind-ref='ref("ordertime")'></div>
  </div> 
  </div> 
       <div component="$UI/system/components/justep/row/row" class="x-row" xid="row8">
        <div xid="col20">
         
  <div class="x-col" xid="col8"><span xid="span25" style="margin-left:5px;color:#FF8040;" class="x-output">详细情况：</span></div></div> 
        <div class="x-col" xid="col21">
         <div component="$UI/system/components/justep/output/output" class="x-output" xid="output10" bind-ref="ref('Content')"></div></div> 
  </div> 
       <div component="$UI/system/components/justep/row/row" class="x-row" xid="row9">
        <div xid="col23">
         <div class="x-col" xid="col9"><span xid="span116" style="margin-left:5px;color:#FF8040;" class="x-output">配送信息：</span></div></div> 
        <div class="x-col" xid="col24">
         <div component="$UI/system/components/justep/output/output" class="x-output" xid="output9" bind-text="val('username') + '，' + val('userPhone') + '，' + val('userAddress')"></div></div> 
  </div> 
       <div component="$UI/system/components/justep/row/row" class="x-row" xid="row10">
        <div xid="col26" style="margin-left:5px;color:#FF8040;">
         <div class="x-col" xid="col10"><span xid="span117" class="x-output">合计金额：</span></div></div> 
        <div class="x-col" xid="col27">
         <div component="$UI/system/components/justep/output/output" class="x-output" xid="output10" bind-text="'¥ ' + val(&quot;moneySum&quot;) + '元' " style="color:#FF0000;font-weight:bold;"></div></div> 
  </div> 
       <div component="$UI/system/components/justep/row/row" class="x-row" xid="row11">
        <div xid="col28" style="margin-left:5px;color:#FF8040;">
         <div class="x-col" xid="col11"><span xid="span119" class="x-output">支付状态：</span></div></div> 
        <div class="x-col" xid="col29">
         <span bind-text="val('paystate') &gt; 0  ? '已支付' : '货到付款'" xid="span120" class="x-output"></span></div> 
  </div> 
       <div component="$UI/system/components/justep/row/row" class="x-row" xid="row1">
   
   <div class="x-col" xid="col1">
    <span class="x-output" bind-text=' "店家："+$object.val("sUserName") + "号码："+$object.val("sUserPhone")'></span></div> </div>
  </li> </ul> </div> </div> 
   <div class="x-content-center x-pull-up" xid="div20">
    <span class="x-pull-up-label" xid="span26">加载更多...</span></div> </div></div>
  </div> 
</div>