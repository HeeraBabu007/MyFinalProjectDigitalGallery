<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<script src="resources/My_Design/angular.min.js"></script>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="AdminHeader.jsp"%>
<link rel="stylesheet" href="resources/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="resources/bootstrap-theme.min.css"
	integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp"
	crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="resources/bootstrap.min.js"
	integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
	crossorigin="anonymous"></script>



<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
    <div align="center">
        <sf:form action="InsertcUser" method="post" commandName="userdetails">
            <table border="0">
                <tr>
                    <td colspan="2" align="center">
                    <h2>User Details</h2></td>
               
                <tr>
                    <td>password</td>
                    <td><sf:password path="password" /></td>
                </tr>
                <tr>
                    <td>Username</td>
                    <td><sf:input path="Username" pattern=".{3,15}" required="true" title="minimum length for Username 3" /></td>
                </tr>
                <tr>
                    <td>emailid</td>
                    <td><sf:input path="emailid" /></td>
                </tr>
                <tr>
                    <td>Address</td>
                    <td><sf:input path="Address" /></td>
                </tr>
                <tr>
                    <td>Mobile</td>
                    <td><sf:input path="Mobile" pattern="^[789]\d{9}$" required="true" title="Enter valid 10 digit mobile number"/></td>
                </tr>
                <tr>
                    <td colspan="2" align="center"><input type="submit" value="Add User" /></td>
                </tr>
            </table>
        </sf:form>
    </div>
</body>
</html>