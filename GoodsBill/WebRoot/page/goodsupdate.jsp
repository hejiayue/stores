<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript">
		function query(){
			location.href='getAll';
			}
	</script>
  </head>
  
  <body>
    <form action="updateGoods" method="post">
    	<table border="1" width="500px" height="" cellpadding="0" cellspacing="0" align="center">
    		<tr height="30px" align="center">
    			<td>商品编号</td>
    			<td><input type="text" name="good.id" readonly="readonly" value="<s:property value="good.id"/>"/></td>
    		</tr>
    		<tr height="30px" align="center">
    			<td>商品名称</td>
    			<td><input type="text" name="good.goodsname" <s:if test="good.billstatus==2">readonly="readonly" </s:if> value="<s:property value="good.goodsname"/>"/></td>
    		</tr>
    		<tr height="30px" align="center">
    			<td>商品价格</td>
    			<td><input type="text" name="good.goodsprice" <s:if test="good.billstatus==2">readonly="readonly" </s:if> value="<s:property value="good.goodsprice"/>"/></td>
    		</tr>
    		<tr height="30px" align="center">
    			<td>库存数量</td>
    			<td><input type="text" name="good.goodscount" <s:if test="good.billstatus==2">readonly="readonly" </s:if> value="<s:property value="good.goodscount"/>"/></td>
    		</tr>
    		<tr height="30px" align="center">
    			<td>订单状态</td>
    			<td>
    				<select name="good.billstatus" >
    					<option value="0" <s:if test="good.billstatus==0">selected="selected"</s:if>>待处理</option>
    					<option value="1" <s:if test="good.billstatus==1">selected="selected"</s:if>>处理中</option>
    					<option value="2" <s:if test="good.billstatus==2">selected="selected"</s:if>>已处理</option>
    				</select>
    			</td>
    		</tr>
    		<tr height="30px" align="center">
    			<td colspan="2"><s:if test="good.billstatus!=2"><input type="submit" value="提交"/> </s:if>&nbsp;&nbsp;<input type="button" onclick="query()" value="返回"/></td>
    		</tr>
    	</table>
    </form>
  </body>
</html>
