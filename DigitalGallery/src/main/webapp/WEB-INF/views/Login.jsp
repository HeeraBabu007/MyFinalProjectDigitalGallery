

<%@ include file="header.jsp" %>

 <center><form action="perform_login" method="post">
				<h1>Login Form</h1>
				<div>
					<input type="text" placeholder="Username" required id="username" name="username" 
						pattern=".{1,10}" title="minimum length for username is 5"/>
				</div>
				<div>
					<input type="password" placeholder="Password" required id="password" name="password" 
					title="Enter Valid credentials"/>
				</div>
				<div>
					<input type="submit" value="Log in" /> <a href="#">Lost your
						password?</a> <a href="usershow">Register</a>
				</div>
				
			</form></center>
<%@ include file="Footer.jsp" %>