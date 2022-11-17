<%@ page contentType="text/html" pageEncoding="GBK"%>

<html>

<head><title>www.java.com</title></head>

<jsp:useBean id="zhuche" scope="request" class="bean.UserRegBean"/>

<body>

<%

request.setCharacterEncoding("GBK");

%>
<h1>注册成功！</h1> <br>
    <input type="button" onclick="javascript:window.location.href='index.jsp';" value="返回登录页面"><br>
用户名:<jsp:getProperty name="zhuche" property="name"/><br>

密&nbsp;&nbsp;码:<jsp:getProperty name="zhuche" property="password"/><br>

电子邮件:<jsp:getProperty name="zhuche" property="email"/><br>

性别:<jsp:getProperty name="zhuche" property="sex"/><br>

出生年月:<jsp:getProperty name="zhuche" property="year"/>年<jsp:getProperty name="zhuche" property="month"/>月<br>

电话:<jsp:getProperty name="zhuche" property="phone"/><br>

住址:<jsp:getProperty name="zhuche" property="address"/><br>

照片:基因拟态酶.png
</body>

</html>