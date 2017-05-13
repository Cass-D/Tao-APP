<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;left:235px;top:526px;"> 
  <div component="$UI/system/components/justep/data/baasData" autoLoad="true" xid="CategoryData" saveAction="saveCategory" queryAction="queryCategory" tableName="category" url="/gst/tao" idColumn="id"><column label="id" name="id" type="Integer" xid="default12"></column>
  <column label="category" name="category" type="String" xid="default13"></column></div>
  <div component="$UI/system/components/justep/data/baasData" autoLoad="true" xid="shopinfo" saveAction="saveShopinfo" queryAction="queryShopinfo" tableName="shopinfo" url="/gst/tao" idColumn="shopid"><column label="商品ID" name="shopid" type="Integer" xid="default1"></column>
  <column label="商品名" name="shopname" type="String" xid="default2"></column>
  <column label="描述" name="des" type="String" xid="default3"></column>
  <column label="详细描述" name="detail" type="String" xid="default4"></column>
  <column label="发布者姓名" name="username" type="String" xid="default5"></column>
  <column label="用户电话" name="userphne" type="String" xid="default6"></column>
  <column label="商品类别" name="categoryid" type="Integer" xid="default7"></column>
  <column label="图片" name="picture" type="String" xid="default8"></column>
  <column label="价格" name="price" type="Float" xid="default9"></column>
  <column label="商品是否显示" name="shop_status" type="Integer" xid="default10"></column>
  <column label="put_time" name="put_time" type="DateTime" xid="default11"></column>
  <column label="商品类别" name="category" type="String" xid="default14"></column></div></div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" title="输入商品信息"
          class="x-titlebar">
          <div class="x-titlebar-left"> 
            <a component="$UI/system/components/justep/button/button"
              label="" class="btn btn-link btn-only-icon" icon="icon-chevron-left"
              onClick="{operation:'window.close'}" xid="backBtn"> 
              <i class="icon-chevron-left"/>  
              <span></span> 
            </a> 
          </div>  
          <div class="x-titlebar-title">输入商品信息</div>  
          <div class="x-titlebar-right reverse"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="确定" xid="saveBtn" icon="icon-android-checkmark" onClick="saveBtnClick">
   <i xid="i1" class="icon-android-checkmark"></i>
   <span xid="span1">确定</span></a></div>
        </div> 
      </div>  
    <div class="x-panel-content" xid="content1">
  
  
  
  
  
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row1">
   <div class="x-col" xid="col1"><div xid="shopinfoDiv">
   <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelInput1">
    <label class="x-label" xid="label1">商品名</label>
    <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="Name" dataType="String" pattern="^[\u4E00-\u9FA5A-Za-z0-9_]+$"></input></div> 
   <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelInput2">
    <label class="x-label" xid="label3">价格</label>
    <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="Price" format="0,000.00" placeHolder="0.00" pattern="^[0-9]+([.]{1}[0-9]{1,2})?$" dataType="Float"></input></div> 
   <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelInput3">
    <label class="x-label" xid="label6"><![CDATA[简介]]></label>
    <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="Des" placeHolder="简单介绍商品情况"></input></div><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit4">
    <label class="x-label" xid="label7">类别</label>
    <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="Category" placeHolder="请输入类别" pattern="^[\u4e00-\u9fa5]"></input></div> 
    
   <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit1">
   <label class="x-label" xid="label2"><![CDATA[详细描述]]></label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="Detail" placeHolder="请输入商品详细描述" pattern="^[\u4E00-\u9FA5A-Za-z0-9_]+$"></input></div><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit2">
    <label class="x-label" xid="label4">联系人</label>
    <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="Username" placeHolder="请输入联系人名字"></input></div> 
   <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit3">
    <label class="x-label" xid="label5">联系方式</label>
    <input component="$UI/system/components/justep/input/input" class="form-control x-edit " xid="Userphone" placeHolder="请输入号码" dataType="Integer" pattern='^(13[0-9]|14(5|7)|15(0|1|2|3|5|6|7|8|9)|18[0-9])\d{8}$'></input></div> 
  </div></div></div>
  </div>
  </div> 
</div>