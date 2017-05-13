<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;width:241px;left:178px;top:339px;">
  <div component="$UI/system/components/justep/data/baasData" autoLoad="true" xid="shopinfo" saveAction="saveShopinfo" queryAction="queryShopinfo" tableName="shopinfo" url="/gst/tao" idColumn="shopid" limit="50"><column label="商品ID" name="shopid" type="Integer" xid="default8"></column>
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
  <column label="商品类别" name="category" type="String" xid="default27"></column></div><div component="$UI/system/components/justep/data/baasData" autoLoad="true" xid="orderinfo" queryAction="queryOrderinfo" saveAction="saveOrderinfo" url="/gst/tao" tableName="orderinfo" idColumn="orderid" onSaveCreateParam="orderinfoSaveCreateParam" onSaveCommit="orderinfoSaveCommit"><column label="订单id" name="orderid" type="Integer" xid="default80"></column>
  <column label="订单时间" name="ordertime" type="DateTime" xid="default81"></column>
  <column label="订单内容" name="Content" type="String" xid="default82"></column>
  <column label="用户ID外键" name="userid" type="Integer" xid="default83"></column>
  <column label="用户姓名" name="username" type="String" xid="default84"></column>
  <column label="用户号码" name="userPhone" type="String" xid="default85"></column>
  <column label="用户地址" name="userAddress" type="String" xid="default86"></column>
  <column label="商品者姓名" name="sUserName" type="String" xid="default87"></column>
  <column label="商品者号码" name="sUserPhone" type="String" xid="default88"></column>
  <column label="商品的描述" name="sDes" type="String" xid="default89"></column>
  <column label="商品的类型" name="sModel" type="String" xid="default90"></column>
  <column label="商品的价格" name="sPrice" type="Float" xid="default91"></column>
  <column label="订单金额" name="moneySum" type="Float" xid="default92"></column>
  <column label="物品ID外键" name="shopid" type="Integer" xid="default93"></column>
  <column label="付款状态" name="paystate" type="Integer" xid="default94"></column>
  <column label="商品名称" name="shopname" type="String" xid="default95"></column></div><div component="$UI/system/components/justep/data/baasData" autoLoad="true" xid="userinfo" queryAction="queryUserinfo" saveAction="saveUserinfo" url="/gst/tao" tableName="userinfo" idColumn="userid">
   <column label="用户ID" name="userid" type="Integer" xid="default39"></column>
  <column label="用户名" name="username" type="String" xid="default40"></column>
  <column label="密码" name="password" type="String" xid="default41"></column>
  <column label="邮箱" name="email" type="String" xid="default42"></column>
  <column label="学校" name="school" type="String" xid="default43"></column>
  <column label="院系" name="court" type="String" xid="default44"></column>
  <column label="专业" name="professional" type="String" xid="default45"></column>
  <column label="用户状态" name="userstatus" type="Integer" xid="default46"></column>
  <column label="号码" name="phone" type="String" xid="default47"></column></div>
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
  
  <div component="$UI/system/components/justep/data/data" autoLoad="false" xid="calcData" idColumn="summoney" autoNew="true"><column name="summoney" type="Float" xid="xid7"></column>
  <column name="sumcount" type="Integer" xid="xid8"></column>
  <rule xid="rule2">
   <col name="summoney" xid="ruleCol2">
    <calculate xid="calculate2">
     <expr xid="default20">$model.carData.sum(&quot;money&quot;)</expr></calculate> </col> 
   <col name="sumcount" xid="ruleCol3">
    <calculate xid="calculate3">
     <expr xid="default21">$model.carData.sum(&quot;count&quot;)</expr></calculate> </col> </rule></div><div component="$UI/system/components/justep/data/baasData" autoLoad="true" xid="category" queryAction="queryCategory" saveAction="saveCategory" url="/gst/tao" tableName="category" idColumn="id"><column label="id" name="id" type="Integer" xid="default33"></column>
  <column label="category" name="category" type="String" xid="default34"></column></div>
  
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="sxdata" idColumn="a1">
   <column name="a1" type="Float" xid="column1"></column>
  <column name="a2" type="Float" xid="xid9"></column>
  <column name="a3" type="Float" xid="column2"></column>
  <column name="a4" type="Float" xid="column3"></column>
  <column name="a5" type="Float" xid="xid11"></column>
  <column name="a6" type="Float" xid="xid12"></column>
  <column name="searchKey" type="Integer" xid="xid10"></column>
  <column name="fenlei" type="Integer" xid="xid13"></column>
  <column name="status" type="Integer" xid="xid15"></column>
  <data xid="default9">[{&quot;a1&quot;:0,&quot;a2&quot;:100000,&quot;a3&quot;:0,&quot;a4&quot;:10000,&quot;a5&quot;:1,&quot;a6&quot;:11,&quot;fenlei&quot;:{&quot;value&quot;:&quot;&quot;},&quot;status&quot;:1}]</data></div>
  <div component="$UI/system/components/justep/data/baasData" autoLoad="true" xid="collectionData" saveAction="saveCollection" queryAction="queryCollection" tableName="collection" url="/gst/tao" idColumn="cID"><column label="cid" name="cID" type="Integer" xid="default28"></column>
  <column label="商品ID" name="shopid" type="Integer" xid="default29"></column>
  <column label="用户ID" name="userid" type="Integer" xid="default30"></column>
  <column label="商品名" name="shopname" type="String" xid="default31"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="searsh" idColumn="shopid"><column name="shopid" type="String" xid="xid14"></column>
  <column name="shopame" type="String" xid="xid16"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="false" xid="statusData" autoNew="true" idColumn="calcCanSaveOrder">
   <column label="col0" name="calcCartSumMoneyText" type="String" xid="column5"></column>
   <column label="col1" name="calcCartCountText" type="String" xid="column4"></column>
   <column label="col0" name="calcCanSaveOrder" type="String" xid="column7"></column>
   <column label="col1" name="calcCanClearCart" type="String" xid="column6"></column>
   <rule xid="rule3">
   <col name="calcCartSumMoneyText" xid="ruleCol5">
    <calculate xid="calculate4">
     <expr xid="default13">'¥ ' + $model.comp('carData').sum('money') + '元'</expr></calculate> </col> 
   <col name="calcCartCountText" xid="ruleCol4">
    <calculate xid="calculate5">
     <expr xid="default14">($model.comp('carData').count() &gt; 0) ? '购物车(' + $model.comp('carData').count() + ')' : '购物车'</expr></calculate> </col> 
   <col name="calcCanSaveOrder" xid="ruleCol5">
    <calculate xid="calculate5">
     <expr xid="default10">$model.comp('carData').sum(&quot;money&quot;) &gt; 0</expr></calculate> </col> 
   <col name="calcCanClearCart" xid="ruleCol6">
    <calculate xid="calculate6">
     <expr xid="default32">$model.comp('carData').count() &gt; 0</expr></calculate> </col> </rule></div></div> 
<div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel1">
   <div class="x-panel-content" xid="content1"><div component="$UI/system/components/justep/contents/contents" class="x-contents x-full" active="0" xid="contents2">
   <div class="x-contents-content" xid="shopList"><div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel2">
   <div class="x-panel-top" xid="top1">
   <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" xid="titleBar1" title="Tao">
    <div class="x-titlebar-left" xid="left1">
     <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="设置" xid="settingBtnClick" icon="icon-navicon-round" onClick="settingBtnClickClick">
      <i xid="i11" class="icon-navicon-round"></i>
      <span xid="span11">设置</span></a> </div> 
    <div class="x-titlebar-title" xid="title1">Tao</div>
    <div class="x-titlebar-right reverse" xid="right1"></div>
  </div> 
  </div><div class="x-panel-content tb-trans" xid="content2" _xid="C7810C8E6CE00001C4FC2EA56300D620" supportpulldown="true" style="bottom: 0px;">
  
  
  <div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView" xid="scrollView1">
   <div class="x-content-center x-pull-down container" xid="div1">
    <i class="x-pull-down-img glyphicon x-icon-pull-down" xid="i8"></i>
    <span class="x-pull-down-label" xid="span5">下拉刷新...</span></div> 
   <div class="x-scroll-content" xid="div2"><div xid="div44">
   <div component="$UI/system/components/justep/button/buttonGroup" class="btn-group btn-group-justified" tabbed="true" xid="buttonGroup3" style="height:35px;">
    <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-left" label="价格筛选" xid="jiageBtn" icon="icon-arrow-down-b" onClick="jiageBtnClick">
     <i xid="i27" class="icon-arrow-down-b"></i>
     <span xid="span23">价格筛选</span></a> 
    <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-left" label="类别" xid="categoryBtn" icon="icon-arrow-down-b" onClick="categoryBtnClick">
     <i xid="i28" class="icon-arrow-down-b"></i>
     <span xid="span25">类别</span></a> 
    <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-left" xid="sortingBtn" icon="icon-arrow-down-b" label="综合排序" onClick="sortingBtnClick">
     <i xid="i29" class="icon-arrow-down-b"></i>
     <span xid="span26">综合排序</span></a> 
    </div> </div><div component="$UI/system/components/justep/list/list" class="x-list x-cards" xid="shoplist" data="shopinfo" disableInfiniteLoad="true" filter='$row.val("price") &gt; $model.sxdata.val("a1")   &amp;&amp; $row.val("price") &lt; $model.sxdata.val("a2")  &amp;&amp; $model.test($row)  &amp;&amp; $row.val("shop_status")  == $model.sxdata.val("status")' limit="-1">
   <ul class="x-list-template x-min-height list-group" xid="listTemplateUl4" componentname="$UI/system/components/justep/list/list#listTemplateUl" id="undefined_listTemplateUl1">
    <li xid="li7" class="x-min-height list-group-item" componentname="li(html)" id="undefined_li1" style="height:147px;">
     <div xid="div40" class="media">
      <div xid="div39" class="media-left">
       <img src="" alt="" xid="image4" style="width:106px;height:110px;" bind-attr-src='$model.getImgUrl( $object.val("picture"))' class="img-rounded"></img></div> 
      <div xid="div38" class="media-body">
       <div component="$UI/system/components/justep/output/output" class="x-output list-group-item-heading" xid="output18" bind-ref='ref("shopname")'></div>
       <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm pull-right" label="详情" xid="button12" onClick="detailButtonClick">
        <i xid="i30"></i>
        <span xid="span35">详情</span></a> 
       <div component="$UI/system/components/justep/output/output" class="x-output list-group-item-text" xid="output17" bind-ref='ref("des")'></div>
       <div component="$UI/system/components/justep/output/output" class="x-output" xid="output15" bind-ref='ref("price")' bind-text='"类别："+$object.val("category")'></div>
       <div component="$UI/system/components/justep/output/output" class="x-output" xid="output19" bind-ref='ref("price")' bind-text='"       价格： "+ "$ " + $object.val("price")  +"元"'></div></div> </div> </li> </ul> </div></div>
   <div class="x-content-center x-pull-up" xid="div3">
    <span class="x-pull-up-label" xid="span6">加载更多...</span>
  </div> </div></div>
   
  </div></div>
   <div class="x-contents-content" xid="content6"><div component="$UI/system/components/justep/panel/panel" class="x-panel x-card x-full" xid="panel10">
   <div class="x-panel-top" xid="top6"><div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" xid="titleBar5">
   <div class="x-titlebar-left" xid="left5">
    <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" xid="button9" icon="icon-android-search">
     <i xid="i33" class="icon-android-search"></i>
     <span xid="span36"></span></a> </div> 
   <div class="x-titlebar-title" xid="title5">
    <input component="$UI/system/components/justep/input/input" class="form-control input-sm pull-left center-block" xid="keyinput"></input></div> 
   <div class="x-titlebar-right reverse" xid="right5">
    <a component="$UI/system/components/justep/button/button" class="btn x-yellow btn-only-label more" label="搜索" xid="SearshBtn" onClick="SearshBtnClick">
     <i xid="i34"></i>
     <span xid="span37">搜索</span></a> </div> </div></div>
   <div class="x-panel-content x-cards" xid="content8" _xid="C783C5DD54400001B3D39BE5A55C6A80"><div xid="div7" bind-visible='$model.sxdata.count("searchKey")  &gt; 0'>
   <div xid="div14" class="tb-title text-muted"></div>
    
  <div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" data="searsh">
   <ul class="x-list-template" xid="listTemplateUl1">
    <li xid="li1"><div component="$UI/system/components/justep/list/list" class="x-list" xid="searchList" data="shopinfo" autoLoad="true" filter="$row.val('shopid')==$object.val('shopid')">
   <ul class="x-list-template" xid="listTemplateUl5">
    <li xid="li6" class="x-min-height list-group-item">
     <div xid="div37" class="media">
      <div xid="searchListDiv" class="media-body" bind-click="searchListDivClick">
       <div component="$UI/system/components/justep/output/output" class="x-output list-group-item-heading" xid="output16" bind-ref="ref('shopname')"></div></div> </div> </li> </ul> </div></li></ul> </div>
  </div>
  </div>
   <div class="x-panel-bottom" xid="bottom4"></div></div></div><div class="x-contents-content" xid="carContent" onActive="carContentActive">
  
  <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" xid="titleBar2">
   <div class="x-titlebar-left" xid="left2"></div>
   <div class="x-titlebar-title" xid="title2"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label" label="购物车" xid="button1">
   <i xid="i12"></i>
   <span xid="span14" bind-text='$model.calcData.val("sumcount") &gt;0 ? "购物车(" + $model.calcData.val("sumcount")+")" : "购物车"'><![CDATA[]]></span></a></div>
   <div class="x-titlebar-right reverse" xid="right2"></div>
  </div><div class="panel panel-default x-card" component="$UI/system/components/bootstrap/panel/panel" xid="panel3">
   <div class="panel-heading" xid="heading1">
    <h4 class="panel-title" xid="h41">清单<a component="$UI/system/components/justep/button/button" class="btn btn-link pull-right" label="支付宝" xid="AlipayBtn">
   <i xid="i10"></i>
   <span xid="span13">支付宝</span></a></h4>
  </div> 
   <div class="panel-body" xid="body1">
    <div component="$UI/system/components/justep/list/list" class="x-list x-cards" xid="list2" data="carData">
     <ul class="x-list-template x-min-height" xid="listTemplateUl2">
      <li xid="li2" class="x-min-height list-group-item">
       <div component="$UI/system/components/justep/row/row" class="x-row" xid="row1">
        <div class="x-col " xid="col2" style="width:auto;">
         <img src="" alt="" xid="image2" bind-attr-src='$model.getImgUrl( val("picture"))' bind-click="listClick" style="width:68px;height:65px;" class="img-rounded"></img></div> 
        <div class="x-col " xid="col4">
         <div component="$UI/system/components/justep/output/output" class="x-output center-block" xid="output5" bind-ref='ref("shopname")'></div></div> 
        <div class="x-col x-col-fixed" xid="col5" style="width:auto;">
         <div component="$UI/system/components/justep/output/output" class="x-output" xid="output6" bind-ref='ref("price")'></div></div> 
        <div class="x-col x-col-fixed" xid="col1" style="width:auto;">
         <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-sm btn-only-icon pull-left" label="button" xid="addButton" icon="icon-android-add" onClick="addButtonClick">
          <i xid="i9" class="icon-android-add"></i>
          <span xid="span29"></span></a> </div> 
        <div class="x-col x-col-fixed" xid="col10" style="width:40px;">
         <div component="$UI/system/components/justep/output/output" class="x-output" xid="output4" bind-ref='ref("count")'></div></div> 
        <div class="x-col x-col-fixed" xid="col6" style="width:auto;">
         <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-sm btn-only-icon pull-left" label="button" xid="reductionBtn" icon="icon-android-remove" onClick="reductionBtnClick">
          <i xid="i6" class="icon-android-remove"></i>
          <span xid="span19"></span></a> </div> </div> </li> </ul> </div> 
  <span xid="span8" bind-visible="$model.carData.count() == 0"><![CDATA[空]]></span></div> 
   <div class="panel-footer" xid="footer1">
    <div component="$UI/system/components/justep/row/row" class="x-row" xid="row3">
     <div class="x-col x-col-20 x-col-center" xid="col7"></div>
     <div class="x-col " xid="col8">
      </div> 
     <div class="x-col x-col-33 text-center tb-settlement" xid="jiesuan">
      <div xid="div8" class="text-right">
   <div component="$UI/system/components/justep/output/output" class="x-output" xid="output8" bind-ref='calcData.ref("summoney")' bind-text='"合计：￥ " +  $model.calcData.val("summoney")+"元"'></div></div></div> </div> </div> </div>
  <div class="panel panel-default" component="$UI/system/components/bootstrap/panel/panel" xid="panel7">
   <div class="panel-heading" xid="heading2">
    <h4 class="panel-title" xid="h42">联系方式</h4></div> 
   <div class="panel-body" xid="body2">
     
     
     
  
  
  
  <div xid="div17"><form action="post" method="" xid="form2" class="form-horizontal"><div class="form-group" xid="formGroup8">
   <label class="col-xs-3 control-label" xid="controlLabel1" style="word-spacing:20px;padding-top: 12px;"><![CDATA[姓名：]]></label>
  <div xid="col20" class="col-xs-9"><input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input4" bind-ref='$model.userinfo.ref("username")' pattern="^[\u4E00-\u9FA5A-Za-z0-9_]+$"></input></div></div>
  <div class="form-group" xid="formGroup9">
   <label class="col-xs-3 control-label" xid="controlLabel2" style="word-spacing:20px;padding-top: 12px;"><![CDATA[号码：]]></label>
  <div xid="col3" class="col-xs-9">
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input5" bind-ref='$model.userinfo.ref("phone")' pattern="^[0-9]+([.]{1}[0-9]{1,2})?$"></input></div></div>
  <div class="form-group" xid="formGroup10">
   <label class="col-xs-3 control-label" xid="controlLabel3" style="word-spacing:20px;padding-top: 12px;"><![CDATA[地址：]]></label>
  <div xid="col9" class="col-xs-9">
   <div class="input-group" component="$UI/system/components/bootstrap/inputGroup/inputGroup" xid="inputGroup1">
   <input type="text" class="form-control" component="$UI/system/components/justep/input/input" xid="input7" bind-ref='$model.userinfo.ref("school")'></input>
  <div xid="div9" class="input-group-btn"><a component="$UI/system/components/justep/button/button" class="btn btn-link" label="定位" xid="location" icon="icon-android-location" onClick="locationClick">
   <i xid="i17" class="icon-android-location"></i>
   <span xid="span12">定位</span></a></div>
  </div>
  </div></div></form></div><div xid="div16">
   <a component="$UI/system/components/justep/button/button" class="btn btn-default pull-right" label="下单" xid="orderBtn" onClick="orderBtnClick" bind-enable="statusData.ref('calcCanSaveOrder')">
    <i xid="i7"></i>
    <span xid="span7">下单</span></a> 
   <a component="$UI/system/components/justep/button/button" class="btn card btn-link btn-sm" label="清空购物车" xid="cleanCartBtn" style="float: right; margin-right:10px;width:100px;" onClick="cleanCartBtnClick" bind-enable="statusData.ref('calcCanClearCart')">
    <i xid="i15"></i>
    <span xid="span10">清空购物车</span></a> 
  </div></div> 
   </div>
  </div>
   <div class="x-contents-content" xid="setting"><div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel4">
   <div class="x-panel-top" xid="top7"><div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" xid="titleBar6" title="订单列表">
   <div class="x-titlebar-left" xid="left6"></div>
   <div class="x-titlebar-title" xid="title6">订单列表</div>
   <div class="x-titlebar-right reverse" xid="right6"></div></div></div><div class="x-panel-content" xid="content4" _xid="C784F20FDF60000196331870FC961CC5" style="top: 48px; bottom: 0px;"><div component="$UI/system/components/justep/list/list" class="x-list" xid="orderList" data="orderinfo" style="margin: 5px;" limit="5" autoLoad="true">
   <ul class="x-list-template" xid="listTemplateUl3">
    <li xid="li3">
     <div component="$UI/system/components/justep/row/row" class="x-row" xid="row7">
      <div xid="col13">
       <div class="x-col" xid="col12">
        <span xid="span22" style="font-weight:bold;" class="x-output">下单时间：</span></div> </div> 
      <div class="x-col" xid="col18">
       <div component="$UI/system/components/justep/output/output" class="x-output" xid="output10" bind-ref='ref("ordertime")'></div></div> </div> 
     <div component="$UI/system/components/justep/row/row" class="x-row" xid="row8">
      <div xid="col17">
       <div class="x-col" xid="col15">
        <span xid="span18" style="margin-left:5px;color:#FF8040;" class="x-output">详细情况：</span></div> </div> 
      <div class="x-col" xid="col21">
       <div component="$UI/system/components/justep/output/output" class="x-output" xid="output10" bind-ref="ref('Content')"></div></div> </div> 
     <div component="$UI/system/components/justep/row/row" class="x-row" xid="row9">
      <div xid="col23">
       <div class="x-col" xid="col14">
        <span xid="span116" style="margin-left:5px;color:#FF8040;" class="x-output">配送信息：</span></div> </div> 
      <div class="x-col" xid="col24">
       <div component="$UI/system/components/justep/output/output" class="x-output" xid="output9" bind-text="val('username') + '，' + val('userPhone') + '，' + val('userAddress')"></div></div> </div> 
     <div component="$UI/system/components/justep/row/row" class="x-row" xid="row10">
      <div xid="col26" style="margin-left:5px;color:#FF8040;">
       <div class="x-col" xid="col16">
        <span xid="span117" class="x-output">合计金额：</span></div> </div> 
      <div class="x-col" xid="col27">
       <div component="$UI/system/components/justep/output/output" class="x-output" xid="output10" bind-text="'¥ ' + val(&quot;moneySum&quot;) + '元' " style="color:#FF0000;font-weight:bold;"></div></div> </div> 
     <div component="$UI/system/components/justep/row/row" class="x-row" xid="row11">
      <div xid="col28" style="margin-left:5px;color:#FF8040;">
       <div class="x-col" xid="col11">
        <span xid="span119" class="x-output">支付状态：</span></div> </div> 
      <div class="x-col" xid="col29">
       <span bind-text="val('paystate') &gt; 0  ? '已支付' : '货到付款'" xid="span120" class="x-output"></span></div> </div> 
     <div component="$UI/system/components/justep/row/row" class="x-row" xid="row2">
      <div class="x-col" xid="col13">
       <span class="x-output" bind-text=' "店家："+$object.val("sUserName") + "号码："+$object.val("sUserPhone")' xid="span20"></span></div> </div> </li> </ul> </div></div></div></div>
  </div></div>
   <div class="x-panel-bottom" xid="bottom1"><div component="$UI/system/components/justep/button/buttonGroup" class="btn-group x-card btn-group-justified" tabbed="true" xid="buttonGroup1" selected="Home">
   <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-icon-top" label="动态" xid="Home" icon="icon-android-note" target="shopList">
    <i xid="i1" class="icon-android-note"></i>
    <span xid="span1">动态</span></a> 
   <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-icon-top" label="搜索" xid="searchBtn" target="content6" icon="glyphicon glyphicon-search">
    <i xid="i2" class="glyphicon glyphicon-search"></i>
    <span xid="span2">搜索</span></a> 
   <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-icon-top" label="购物车" xid="ShoppingCar" target="carContent" icon="glyphicon glyphicon-shopping-cart">
    <i xid="i3" class="glyphicon glyphicon-shopping-cart"></i>
    <span xid="span3" bind-text='$model.calcData.val("sumcount") &gt;0 ? "购物车(" + $model.calcData.val("sumcount")+")" : "购物车"'><![CDATA[]]></span></a> 
   <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-icon-top" label="订单" xid="Setting" target="setting" icon="glyphicon glyphicon-th-list">
    <i xid="i4" class="glyphicon glyphicon-th-list"></i>
    <span xid="span4">订单</span></a> </div></div></div>
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="detailWindowDialog" src="./detail.w" style="left:135px;top:669px;"><result concept="carData" operation="edit" origin="carData" xid="default1">
   <mapping from="carID" to="carID" locator="true" xid="default2"></mapping>
   <mapping from="shopname" to="shopname" xid="default3"></mapping>
   <mapping from="price" to="price" xid="default4"></mapping>
   <mapping from="count" to="count" xid="default5"></mapping>
   <mapping from="money" to="money" xid="default6"></mapping>
   <mapping from="picture" to="picture" xid="default7"></mapping></result></span>
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="jiesuanWindowDialog" style="left:100px;top:685px;" src="./dingdan.w"><result concept="carData" operation="edit" origin="carData" xid="default50">
   <mapping from="carID" to="carID" xid="default51"></mapping>
   <mapping from="shopame" to="shopame" xid="default52"></mapping>
   <mapping from="price" to="price" xid="default53"></mapping>
   <mapping from="count" to="count" xid="default54"></mapping>
   <mapping from="money" to="money" xid="default55"></mapping>
   <mapping from="picture" to="picture" xid="default56"></mapping></result></span>
  <span component="$UI/system/components/justep/messageDialog/messageDialog" xid="agreementDialog" style="left:203px;top:674px;" message="使用规则；知识产权；个人隐私；侵权举报；免责声明；协议修改" title="应用协议"></span>
  <span component="$UI/system/components/justep/messageDialog/messageDialog" xid="messageDialg" style="left:164px;top:670px;" title="联系客服：" message="感谢你致电我们，我们将会继续完善用户体验。Call-Phone:14715350501"></span>
  <div component="$UI/system/components/justep/popOver/popOver" class="x-popOver" xid="pricePopOver" direction="right-bottom" opacity="0.7" anchor="listStyleBtn" dismissible="true" position="top">
   <div class="x-popOver-overlay" xid="div24"></div>
   <div class="x-popOver-content tb-sorting" xid="div23">
    <div xid="div22">
     <div class="list-group-item" xid="div26">
      <span class="pull-left" xid="span39">价格区间（元）</span>
      <input component="$UI/system/components/justep/input/input" class="form-control input-sm pull-left center-block" xid="price1" style="width:30%;"></input>
      <span class="pull-left" xid="span41">－</span>
      <input component="$UI/system/components/justep/input/input" class="form-control input-sm pull-left center-block" xid="price2" style="width:30%;"></input>
      <div class="clearfix" xid="div27"></div></div> 
     <div class="text-center panel-body" xid="div33">
      <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-sm tb-resetBtn x-flex1" label="筛选" xid="priceBtn" onClick="priceBtnClick">
       <i xid="i35"></i>
       <span xid="span40">筛选</span></a> </div> 
     <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-lg btn-block tb-okBtn" label="重置" xid="fanhuiBtn" onClick="fanhuiBtnClick">
   <i xid="i36"></i>
   <span xid="span41" class="text-white">重置</span></a></div> </div> </div>
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="mapDialog" style="left:118px;top:51px;" routable="true" src="$UI/guangshangtao/mapActivity.w"></span>
  <div component="$UI/system/components/justep/popOver/popOver" class="x-popOver" xid="categorypopOver" direction="right-bottom" opacity="0.7" anchor="listStyleBtn" dismissible="true" position="top">
   <div class="x-popOver-overlay" xid="div18"></div>
   <div xid="div13" class="x-popOver-content tb-sorting">
    <div xid="div12">
     
     
     <div component="$UI/system/components/justep/row/row" class="x-row" xid="row4">
   <div class="x-col " xid="col31" style="width:auto;"><a component="$UI/system/components/justep/button/button" class="btn btn-default btn-sm tb-resetBtn x-flex1" label="电子" onClick="dzBtnClick" xid="dzBtn">
     <i xid="i13"></i>
     <span xid="span16">电子</span></a></div><div class="x-col " xid="col22">
     <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-sm tb-resetBtn x-flex1" label="运动" onClick="ydBtnClick" xid="ydBtn">
     <i xid="i16"></i>
     <span xid="span21">运动</span></a></div> 
   <div class="x-col x-col-fixed" xid="col19" style="width:auto;">
    <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-sm tb-resetBtn x-flex1" label="书籍" onClick="bookBtnClick" xid="bookBtn">
     <i xid="i18"></i>
     <span xid="span24">书籍</span></a> </div> 
   <div class="x-col x-col-fixed" xid="col30" style="width:auto;">
    <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-sm tb-resetBtn x-flex1" label="食品" onClick="foodBtnClick" xid="foodBtn">
     <i xid="i19"></i>
     <span xid="span27">食品</span></a> </div> 
   </div><a component="$UI/system/components/justep/button/button" class="btn btn-default btn-lg btn-block tb-okBtn" label="重置" xid="reBtn" onClick="reBtnClick">
      <i xid="i14"></i>
      <span xid="span17" class="text-white">重置</span></a> 
  </div> 
  </div> </div>
  </div>