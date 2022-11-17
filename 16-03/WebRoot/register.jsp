<%@ page contentType="text/html" pageEncoding="GBK"%>
<%@ page language="java" import="bean.UserRegBean" %>
<html>

<head><title>www.java.com</title></head>

<%
	request.setCharacterEncoding("GBK");
%>

<jsp:useBean id="zhuche" scope="request" class="bean.UserRegBean"/>

<body>
<center>
<span>
<%=zhuche.getErrorMsg("errname")%><br>
<%=zhuche.getErrorMsg("errpassword")%><br>
<%=zhuche.getErrorMsg("errpassword1")%>
<%=zhuche.getErrorMsg("erremail")%><br>
<%=zhuche.getErrorMsg("errphone")%><br>
</span>
<h1>用户注册</h1>
<form action="Check.jsp" method="post">
<table>
<tr>
	<td>姓名:</td>
	<td><input type="text" name="name" value="<jsp:getProperty name="zhuche" property="name"/>"/></td>
</tr>
<tr>
	<td>密&nbsp;&nbsp;码:</td>
	<td><input type="password" name="password" value="<jsp:getProperty name="zhuche" property="password"/>"/></td>
</tr>
<tr>
	<td>确认密码:</td>
	<td><input type="password" name="password1" value="<jsp:getProperty name="zhuche" property="password1"/>"/></td>
</tr>
<tr>
	<td>电子邮件:</td>
	<td><input type="text" name="email" value="<jsp:getProperty name="zhuche" property="email"/>"/></td>
</tr>
<tr>
	<td>性别：</td>
	<td><input type="radio" id="sex" name="sex" value="男">男
    			<input type="radio" id="sex" name="sex" value="女">女</td>
</tr>
<tr>
	<td>出生日期：</td>
	<td><select name="year">
    				<option>
    					2000
    				</option>
    				<option>
    					2001
    				</option>
    				<option>
    					2002
    				</option>
    			</select>
    			年
    			<select name="month">
    				<option>
    					1
    				</option>
    				<option>
    					2
    				</option>
    				<option>
    					3
    				</option>
    				<option>
    					4
    				</option>
    				<option>
    					5
    				</option>
    				<option>
    					6
    				</option>
    				<option>
    					7
    				</option>
    				<option>
    					8
    				</option>
    				<option>
    					9
    				</option>
    				<option>
    					10
    				</option>
    				<option>
    					11
    				</option>
    				<option>
    					12
    				</option>
    			</select>
    			月</td>
</tr>
<tr>
	<td>电话:</td>
	<td><input type="text" name="phone" value="<jsp:getProperty name="zhuche" property="phone"/>"/></td>
</tr>
<tr>
	<td>住址:</td>
	<td><input type="text" name="address" value="<jsp:getProperty name="zhuche" property="address"/>"/></td>
</tr>
<tr>
	<td>照片：</td>
	<td><input type="button" value="选择文件">&nbsp;未选择任何文件</td>
</tr>
<tr colspan="2">
	<td></td>
	<td><input type="submit" value="提交"/>

<input type="reset" value="重置"/>

<input type="button" onclick="javascript:window.location.href='index.jsp';" value="返回登录页"></td>
</tr>

</table>
</form>
</center>
</body>

</html>