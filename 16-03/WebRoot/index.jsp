<%@ page contentType="text/html" pageEncoding="GBK"%>

<html>

<head><title>��¼����</title></head>

<%
	request.setCharacterEncoding("GBK");
%>

<style>
    *{
    	margin:0;
    	padding:0;
    }
    table{
    	width:350px;
/*     	text-align:center; */
        margin-left:550px;
    }
    .gd{
    	margin-left:55px
    }
    </style>
  </head>
  <body>
     	<form action="showRegSuccess.jsp" method="post" name="fff" >
     		<table border="1"  cellspacing="0" cellpadding="0">
     		 	<tr>
     		 	   <td colspan="2" align="center">�û���¼</td>
     		 	</tr>
     		 	<tr>
     		 		<td>�û�����</td>
     		 		<td><input type="text" name="username" id="username"></td>
     		 	</tr>
     		 	<tr>
     		 		<td>��&nbsp;&nbsp;�룺</td>
     		 		<td><input type=password" name="pwd" id="pwd"></td>
     		 	</tr>
     		 	<tr>
     		 	<td colspan="2">
     		 	<input type="submit" value="��¼" id="login" name="login" class="gd">
     		 	<input type="reset" value="����" id="reset" name="reset" class="gd"> 
     		 	<input type="button" value="ע��" id="reset" onclick="javascript:window.location.href='register.jsp';" name="register" class="gd">	
     		 	</tr>
     		</table>
     	</form>
</body>

</html>