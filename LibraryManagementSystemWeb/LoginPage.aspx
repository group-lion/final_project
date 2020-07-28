<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="LoginPage.aspx.vb" Inherits="LibraryManagementSystemWeb.LoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<html lang="en"/>
<head>
	<title>Login Page</title>
	<meta charset="UTF-8"/>
	<meta name="viewport" content="width=device-width, initial-scale=1"/>
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>

<!--===============================================================================================-->

    <link href="LoginFiles/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
<!--===============================================================================================-->
	
    <link href="LoginFiles/fonts/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" />
<!--===============================================================================================-->
	
    <link href="LoginFiles/fonts/iconic/css/material-design-iconic-font.min.css" rel="stylesheet" />
<!--===============================================================================================-->
	
    <link href="LoginFiles/vendor/animate/animate.css" rel="stylesheet" />
<!--===============================================================================================-->	
	
    <link href="LoginFiles/vendor/css-hamburgers/hamburgers.min.css" rel="stylesheet" />

<!--===============================================================================================-->
	
    <link href="LoginFiles/vendor/animsition/css/animsition.min.css" rel="stylesheet" />
<!--===============================================================================================-->
	
    <link href="LoginFiles/vendor/select2/select2.min.css" rel="stylesheet" />

<!--===============================================================================================-->	
	
    <link href="LoginFiles/vendor/daterangepicker/daterangepicker.css" rel="stylesheet" />
<!--===============================================================================================-->
	
    <link href="LoginFiles/css/util.css" rel="stylesheet" />
    <link href="LoginFiles/css/main.css" rel="stylesheet" />
<!--===============================================================================================-->
</head>
<body>
	
	<form id="form1" runat="server">
	
	<div class="limiter">
		<div class="container-login100" style="background-image: url('images/T.jpg');">
			<div class="wrap-login100 p-l-55 p-r-55 p-t-65 p-b-54">
					<span class="login100-form-title p-b-49">
						Login
					</span>

					<div class="wrap-input100 validate-input m-b-23" data-validate = "Username is reauired">
						<span class="label-input100">Username</span>
						<input class="input100" type="text" name="username" placeholder="Type your username">
						<span class="focus-input100" data-symbol="&#xf206;"></span>
					</div>

					<div class="wrap-input100 validate-input" data-validate="Password is required">
						<span class="label-input100">Password</span>
						<input class="input100" type="password" name="pass" placeholder="Type your password">
						<span class="focus-input100" data-symbol="&#xf190;"></span>
					</div>
					
					<div class="text-right p-t-8 p-b-31">
						<a href="#">
							Forgot password?
						</a>
					</div>

                    <br />
                          <asp:Button ID="Button1" runat="server" BackColor="#663300" BorderStyle="Solid" Font-Bold="True" Font-Size="Large" ForeColor="White" Height="66px" Text="Login" Width="221px" />
                          <br />
                          <br />
                          <br />
                          
                    

					<div class="txt1 text-center p-t-54 p-b-20">
						<span>
							Or Sign Up Using
						</span>
					</div>

					<div class="flex-c-m">
						<a href="#" class="login100-social-item bg1">
							<i class="fa fa-facebook"></i>
						</a>

						<a href="#" class="login100-social-item bg2">
							<i class="fa fa-twitter"></i>
						</a>

						<a href="#" class="login100-social-item bg3">
							<i class="fa fa-google"></i>
						</a>
					</div>

					<div class="flex-col-c p-t-155">
						<span class="txt1 p-b-17">
							Or Sign Up Using
						</span>

						<a href="#" class="txt2">
							Sign Up
						</a>
					</div>
			</div>
		</div>
	</div>
	

	<div id="dropDownSelect1"></div>
	
<!--===============================================================================================-->
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/daterangepicker/moment.min.js"></script>
	<script src="vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>

    </form>

</body>
</html>
