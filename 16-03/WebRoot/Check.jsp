<%@ page contentType="text/html" pageEncoding="GBK"%>

<html>

<head><title>www.java.com</title></head>

<%

request.setCharacterEncoding("GBK");

%>

<jsp:useBean id="zhuche" scope="request" class="bean.UserRegBean"/>

<jsp:setProperty name="zhuche" property="*"/>

<body>

<%

if(zhuche.isValidate()){

%>

<jsp:forward page="showRegSuccess.jsp"/>

<%

}else{

%>

<jsp:forward page="register.jsp"/>

<%

}

%>

</body>

</html>