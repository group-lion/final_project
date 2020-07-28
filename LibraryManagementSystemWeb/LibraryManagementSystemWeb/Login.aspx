<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Manage.Master" CodeBehind="Login.aspx.vb" Inherits="LibraryManagementSystemWeb.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
  
	
	<div class="limiter">
		<div class="container-login100" style="background-image: url('images/T.jpg');">
			<div class="wrap-login100 p-l-55 p-r-55 p-t-65 p-b-54">
				<form class="login100-form validate-form">
					<span class="login100-form-title p-b-49">
						Login
					</span>

					<div class="wrap-input100 validate-input m-b-23" data-validate = "Username is reauired">
						<span class="label-input100">Username</span>
                        <asp:TextBox ID="TextBox1" runat="server" class="input100" type="text" name="username" placeholder="Type your username"></asp:TextBox>
						<span class="focus-input100" data-symbol="&#xf206;"></span>
					</div>

					<div class="wrap-input100 validate-input" data-validate="Password is required">
						<span class="label-input100">Password</span>
                        <asp:TextBox ID="TextBox2" runat="server" class="input100" type="password" name="pass" placeholder="Type your password"></asp:TextBox>
						<span class="focus-input100" data-symbol="&#xf190;"></span>
					</div>
					
					<div class="text-right p-t-8 p-b-31">
						<a href="#">
							Forgot password?</a></div>
                      
                    <div class="container-login100-form-btn">						<div class="wrap-login100-form-btn">							<div class="login100-form-bgbtn"></div>							                       <asp:Button ID="Button1" runat="server" class="login100-form-btn" Text="Login" BackColor="#0066FF" />								                                        						</div>					</div>

					
					

					<div class="txt1 text-center p-t-54 p-b-20">
						<span>
							Or Sign Up Using
						</span>
					</div>

					<div class="flex-c-m">
						
                             <a class="btn btn-dark btn-social mx-2" href="#!">
                              <i class="fab fa-facebook-f"></i></a>
                        
						 <a class="btn btn-dark btn-social mx-2" href="#!">
                             <i class="fab fa-twitter"></i></a>
	
                          <a class="btn btn-dark btn-social mx-2" href="#!">
                              <i class="fab fa-linkedin-in"></i></a>

						
						
					</div>

					<div class="flex-col-c p-t-155">
						<span class="txt1 p-b-17">
							Or Sign Up Using
						</span>

						<a href="#" class="txt2">
							Sign Up
						</a>
					</div>
				</form>
			</div>
		</div>
	</div>
	

	<div id="dropDownSelect1"></div>
	
<!--===============================================================================================-->
	
    <script src="LoginFiles/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->

    <script src="LoginFiles/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
    <script src="LoginFiles/vendor/bootstrap/js/popper.js"></script>
    <script src="LoginFiles/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
    <script src="LoginFiles/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
    <script src="LoginFiles/vendor/daterangepicker/moment.min.js"></script>
    <script src="LoginFiles/vendor/daterangepicker/daterangepicker.js"></script>
	
<!--===============================================================================================-->
    <script src="LoginFiles/vendor/countdowntime/countdowntime.js"></script>

<!--===============================================================================================-->
    <script src="LoginFiles/js/main.js"></script>



</asp:Content>
