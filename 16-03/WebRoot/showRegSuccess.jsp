<%@ page contentType="text/html" pageEncoding="GBK"%>

<html>

<head><title>www.java.com</title></head>

<jsp:useBean id="zhuche" scope="request" class="bean.UserRegBean"/>

<body>

<%

request.setCharacterEncoding("GBK");

%>
<h1>ע��ɹ���</h1> <br>
    <input type="button" onclick="javascript:window.location.href='index.jsp';" value="���ص�¼ҳ��"><br>
�û���:<jsp:getProperty name="zhuche" property="name"/><br>

��&nbsp;&nbsp;��:<jsp:getProperty name="zhuche" property="password"/><br>

�����ʼ�:<jsp:getProperty name="zhuche" property="email"/><br>

�Ա�:<jsp:getProperty name="zhuche" property="sex"/><br>

��������:<jsp:getProperty name="zhuche" property="year"/>��<jsp:getProperty name="zhuche" property="month"/>��<br>

�绰:<jsp:getProperty name="zhuche" property="phone"/><br>

סַ:<jsp:getProperty name="zhuche" property="address"/><br>

��Ƭ:������̬ø.png
</body>

</html>