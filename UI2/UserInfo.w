<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;left:292px;top:388px;"> 
  <div component="$UI/system/components/justep/data/baasData" autoLoad="true" xid="userinfo" saveAction="saveUserinfo" queryAction="queryUserinfo" tableName="userinfo" url="/gst/tao" idColumn="userid"><column label="用户ID" name="userid" type="Integer" xid="default10"></column>
  <column label="用户名" name="username" type="String" xid="default11"></column>
  <column label="密码" name="password" type="String" xid="default12"></column>
  <column label="邮箱" name="email" type="String" xid="default13"></column>
  <column label="学校" name="school" type="String" xid="default14"></column>
  <column label="院系" name="court" type="String" xid="default15"></column>
  <column label="专业" name="professional" type="String" xid="default16"></column>
  <column label="用户状态" name="userstatus" type="Integer" xid="default17"></column>
  <column label="号码" name="phone" type="String" xid="default18"></column></div>
  <div component="$UI/system/components/justep/data/baasData" autoLoad="true" xid="orderinfo" saveAction="saveOrderinfo" queryAction="queryOrderinfo" tableName="orderinfo" url="/gst/tao" idColumn="orderid"><column label="订单id" name="orderid" type="String" xid="default1"></column>
  <column label="订单时间" name="ordertime" type="DateTime" xid="default2"></column>
  <column label="订单内容" name="Content" type="String" xid="default3"></column>
  <column label="用户ID外键" name="userid" type="Integer" xid="default4"></column>
  <column label="用户姓名" name="username" type="String" xid="default5"></column>
  <column label="号码" name="userPhone" type="String" xid="default6"></column>
  <column label="地址" name="userAddress" type="String" xid="default7"></column>
  <column label="商品者的姓名" name="sUserName" type="String" xid="default8"></column>
  <column label="商品者的号码" name="sUserPhone" type="String" xid="default9"></column>
  <column label="商品的描述" name="sDes" type="String" xid="default19"></column>
  <column label="商品的类型" name="sModel" type="String" xid="default20"></column>
  <column label="商品的价格" name="sPrice" type="Float" xid="default21"></column>
  <column label="订单金额" name="moneySum" type="Float" xid="default22"></column>
  <column label="物品ID外键" name="shopid" type="Integer" xid="default23"></column>
  <column label="数量" name="amount" type="Integer" xid="default24"></column>
  <column label="付款状态" name="paystate" type="Integer" xid="default25"></column>
  <column label="商品名称" name="shopname" type="String" xid="default26"></column></div>
  </div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" title="修改个人信息"
          class="x-titlebar">
          <div class="x-titlebar-left"> 
            <a component="$UI/system/components/justep/button/button"
              label="" class="btn btn-link btn-only-icon" icon="icon-chevron-left"
              onClick="{operation:'window.close'}" xid="backBtn"> 
              <i class="icon-chevron-left"/>  
              <span></span> 
            </a> 
          </div>  
          <div class="x-titlebar-title">修改个人信息</div>  
          <div class="x-titlebar-right reverse"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="确定" xid="okBtn" icon="icon-android-checkmark" onClick="okBtnClick">
   <i xid="i1" class="icon-android-checkmark"></i>
   <span xid="span1">确定</span></a></div>
        </div> 
      </div>  
    <div class="x-panel-content" xid="content1">
   <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelInput1">
    <label class="x-label" xid="label1"><![CDATA[用户名]]></label>
    <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="username" placeHolder="请输入用户名" bind-ref="userinfo.ref('username')" pattern="^[\u4E00-\u9FA5A-Za-z0-9_]+$"></input></div> 
   <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit3">
    <label class="x-label" xid="label5">联系方式</label>
    <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="phone" placeHolder="请输入号码" bind-ref="userinfo.ref('phone')" pattern="^[0-9]+([.]{1}[0-9]{1,2})?$"></input></div>
   <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelInput3">
    <label class="x-label" xid="label6"><![CDATA[地址(学校)]]></label>
    <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="school" placeHolder="请输入地址" bind-ref="userinfo.ref('school')"></input></div> 
   <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit1">
   <label class="x-label" xid="label2"><![CDATA[专业]]></label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="professional" placeHolder="请输入专业名称（如无，可不填写）" bind-ref="userinfo.ref('professional')" pattern="^[\u4E00-\u9FA5A-Za-z0-9_]+$"></input></div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit2">
   <label class="x-label" xid="label3"><![CDATA[院系]]></label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="court" placeHolder="请输入院系（如无，可不填写）" bind-ref="userinfo.ref('court')" pattern="^[\u4E00-\u9FA5A-Za-z0-9_]+$"></input></div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit4">
   <label class="x-label" xid="label4"><![CDATA[邮箱]]></label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="email" placeHolder="请输入邮箱（如无，可不填写）" bind-ref="userinfo.ref('email')"></input></div></div></div> 
</div>