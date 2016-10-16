
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<link rel="stylesheet" href="resources/Register.ccs">

<link rel="stylesheet" href="resources/Register.js.js">

               <script type='text/javascript'>
function check(input) {
    if (input.value != document.getElementById('password').value) {
        input.setCustomValidity('The two passwords must match.');
    } else {
        // input is valid -- reset the error message
        input.setCustomValidity('');
   }
}


<%@ include file="header.jsp" %>



<div class="container">
<div class="row">
    <div class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
		<sf:form role="form"  action="CompleteResgister" commandName="registraion">
			<h2>Please Sign Up <small>It's free and always will be.</small></h2>
			<hr class="colorgraph">
			<div class="row">
				<div class="col-xs-12 col-sm-6 col-md-6">
					<div class="form-group">
					    
                        <sf:input path="FirstName" class="form-control input-lg" placeholder="FirstName" tabindex="1"  pattern=".{5,15}" required="true" title="minimum length for name is 5" ></sf:input>
					</div>
				</div>
				
				<div class="col-xs-12 col-sm-6 col-md-6">
					<div class="form-group">
						<sf:input path="LastName"  class="form-control input-lg" placeholder="Last Name" tabindex="2"  pattern=".{5,15}" required="true" title="minimum length for Lastname is 5"></sf:input>
					</div>
				</div>
			</div>
			
			<div class="form-group">
				<sf:input path="Mobile"  class="form-control input-lg" placeholder="mobile" tabindex="3" pattern="^[789]\d{9}$" required="true" title="Enter valid 10 digit mobile number" ></sf:input>
			</div>
			<div class="form-group">
				<sf:input path="Email"  class="form-control input-lg" placeholder="Email Address" tabindex="4" required="true"></sf:input>
			</div>
			
			
			<div class="form-group">
			<sf:input path="PostalAddress"  class="form-control input-lg" placeholder="PostalAddress" tabindex="3" pattern=".{5,15}" required="true" title="Enter valid PostalAddress at Least 5 Charcter" ></sf:input>
		</div>
			<div class="row">
				<div class="col-xs-12 col-sm-6 col-md-6">
					<div class="form-group">
						<sf:input path="Password"  class="form-control input-lg" placeholder="Password" tabindex="5"></sf:input>
					</div>
				</div>
				<div class="col-xs-12 col-sm-6 col-md-6">
				
					<div class="form-group">
					
								<sf:input path="ConfirmPassword"  class="form-control input-lg" placeholder="Confirm Password" tabindex="6"  oninput="check(this)" required="true"></sf:input>
					</div>
					</div>
			       </div>
					<div class="row">
					
					<div class="col-xs-12 col-sm-6 col-md-6">
					<div class="form-group">
				    
                    <sf:input path="City" class="form-control input-lg" placeholder="City" tabindex="1"  pattern=".{5,15}" required="true" title="minimum length for City 2" ></sf:input>
				</div>
				</div>

				<div class="col-xs-12 col-sm-6 col-md-6">
					 <div class="form-group">
					    
	                    <sf:input path="Country" class="form-control input-lg" placeholder="Country" tabindex="1"  pattern=".{5,15}" required="true" title="minimum length for Country 2" ></sf:input>
					</div>
					</div>
					</div>
					
                    <div class="row">
					
					<div class="col-xs-12 col-sm-6 col-md-6">
					<div class="form-group">
                    <sf:input path="State" class="form-control input-lg" placeholder="State" tabindex="1"  pattern=".{5,15}" required="true" title="minimum length for State 2" ></sf:input>
				</div>
				</div>
				
				<div class="col-xs-12 col-sm-6 col-md-6">
					<div class="form-group">
				    
                    <sf:input path="Pincode" class="form-control input-lg" placeholder="Pincode" tabindex="1"  pattern=".{5,15}" required="true" title="minimum length for Pincode 2" ></sf:input>
				</div>
				</div>
				<div>
				
				
					
				</div>
			</div>
			<div class="row">
				<div class="col-xs-4 col-sm-3 col-md-3">
					<span class="button-checkbox">
						<button type="button" class="btn" data-color="info" tabindex="7">I Agree</button>
                        <sf:input path="checkbox"  class="hidden" value="1"></sf:input>
					</span>
				</div>
				<div class="col-xs-8 col-sm-9 col-md-9">
					 By clicking <strong class="label label-primary">Register</strong>, you agree to the <a href="#" data-toggle="modal" data-target="#t_and_c_m">Terms and Conditions</a> set out by this site, including our Cookie Use.
				</div>
			</div>
			
			<hr class="colorgraph">
			<div class="row">
				<div class="col-xs-12 col-md-6"><input type="submit" value="Register" class="btn btn-primary btn-block btn-lg" tabindex="7"></div>
				<div class="col-xs-12 col-md-6"><a href="#" class="btn btn-success btn-block btn-lg">Sign In</a></div>
			</div>
		</sf:form>
	</div>
</div>

<div class="modal fade" id="t_and_c_m" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
				<h4 class="modal-title" id="myModalLabel">Terms & Conditions</h4>
			</div>
			<div class="modal-body">
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Similique, itaque, modi, aliquam nostrum at sapiente consequuntur natus odio reiciendis perferendis rem nisi tempore possimus ipsa porro delectus quidem dolorem ad.</p>
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Similique, itaque, modi, aliquam nostrum at sapiente consequuntur natus odio reiciendis perferendis rem nisi tempore possimus ipsa porro delectus quidem dolorem ad.</p>
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Similique, itaque, modi, aliquam nostrum at sapiente consequuntur natus odio reiciendis perferendis rem nisi tempore possimus ipsa porro delectus quidem dolorem ad.</p>
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Similique, itaque, modi, aliquam nostrum at sapiente consequuntur natus odio reiciendis perferendis rem nisi tempore possimus ipsa porro delectus quidem dolorem ad.</p>
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Similique, itaque, modi, aliquam nostrum at sapiente consequuntur natus odio reiciendis perferendis rem nisi tempore possimus ipsa porro delectus quidem dolorem ad.</p>
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Similique, itaque, modi, aliquam nostrum at sapiente consequuntur natus odio reiciendis perferendis rem nisi tempore possimus ipsa porro delectus quidem dolorem ad.</p>
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Similique, itaque, modi, aliquam nostrum at sapiente consequuntur natus odio reiciendis perferendis rem nisi tempore possimus ipsa porro delectus quidem dolorem ad.</p>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-primary" data-dismiss="modal">I Agree</button>
			</div>
		</div><!-- /.modal-content -->
	</div><!-- /.modal-dialog -->
</div><!-- /.modal -->
</div>


<%@ include file="Footer.jsp" %> 
		

