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
<h1>�û�ע��</h1>
<form action="Check.jsp" method="post">
<table>
<tr>
	<td>����:</td>
	<td><input type="text" name="name" value="<jsp:getProperty name="zhuche" property="name"/>"/></td>
</tr>
<tr>
	<td>��&nbsp;&nbsp;��:</td>
	<td><input type="password" name="password" value="<jsp:getProperty name="zhuche" property="password"/>"/></td>
</tr>
<tr>
	<td>ȷ������:</td>
	<td><input type="password" name="password1" value="<jsp:getProperty name="zhuche" property="password1"/>"/></td>
</tr>
<tr>
	<td>�����ʼ�:</td>
	<td><input type="text" name="email" value="<jsp:getProperty name="zhuche" property="email"/>"/></td>
</tr>
<tr>
	<td>�Ա�</td>
	<td><input type="radio" id="sex" name="sex" value="��">��
    			<input type="radio" id="sex" name="sex" value="Ů">Ů</td>
</tr>
<tr>
	<td>�������ڣ�</td>
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
    			��
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
    			��</td>
</tr>
<tr>
	<td>�绰:</td>
	<td><input type="text" name="phone" value="<jsp:getProperty name="zhuche" property="phone"/>"/></td>
</tr>
<tr>
	<td>סַ:</td>
	<td><input type="text" name="address" value="<jsp:getProperty name="zhuche" property="address"/>"/></td>
</tr>
<tr>
	<td>��Ƭ��</td>
	<td><input type="button" value="ѡ���ļ�">&nbsp;δѡ���κ��ļ�</td>
</tr>
<tr colspan="2">
	<td></td>
	<td><input type="submit" value="�ύ"/>

<input type="reset" value="����"/>

<input type="button" onclick="javascript:window.location.href='index.jsp';" value="���ص�¼ҳ"></td>
</tr>

</table>
</form>
</center>
</body>

</html>