<jsp:include page="header.jsp"></jsp:include>
    <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

  <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<html>
<body>
    <center>
        <h1>Sending e-mail with Spring MVC</h1>
       <form method="get" action="sendEmail">
   	Email<input type="text" name="email"> 
	First Name   <input type="text" name="first_name">
	Message Alert  <input type="text" name="message">
	Message For Us  <input type="text"name="comments"> 
	<input type="submit" value="send">
</form>
    </center>
</body>
</html>
  <jsp:include page="Footer.jsp"></jsp:include>