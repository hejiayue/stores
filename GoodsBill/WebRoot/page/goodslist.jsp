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
	<SCRIPT type="text/javascript">
		function upd(id){
			location.href="update?good.id="+id;
			}
	</SCRIPT>
  </head>
  
  <body>
  <form action="getAll" method="post">
    <table border="1" width="960px" height="" cellpadding="0" cellspacing="0" align="center">
	    <tr height="40px" align="center">
	    	<td colspan="6"><select name="good.goodsdistrict">
              		<option value="0">--请选择--</option>
              		<option value="1">朝阳</option>
              		<option value="2">海淀</option>
              		<option value="3">丰台</option>
              		<option value="4">西城</option>
              		<option value="5">昌平</option>
              		</select>
              &nbsp;<input type="submit" value="提交"/></td>
	    </tr>
	    <tr height="40px" align="center" >
	    	<td>商品编号</td>
	    	<td>商品名称</td>
	    	<td>商品价格</td>
	    	<td>库存数量</td>
	    	<td>订单状态</td>
	    	<td>操作</td>
	    </tr>
	    <s:iterator var="god" value="list" status="status">
		    <tr height="40px" align="center" <s:if test="#status.count%2==0">style="background-color: gray;"</s:if>>
		    	<td><s:property value="id"/></td>
		    	<td><s:property value="goodsname"/></td>
		    	<td><s:property value="goodsprice"/></td>
		    	<td><s:property value="goodscount"/></td>
		    	<td><s:if test="billstatus==0">待处理</s:if>
		    		<s:if test="billstatus==1">处理中</s:if>
		    		<s:if test="billstatus==2">已处理</s:if>
		    	</td>
		    	<td><a href="javascript:onclick=upd('<s:property value="id"/>')">修改</a></td>
		    </tr>
	    </s:iterator>
    </table>
</form>
  </body>
</html>
