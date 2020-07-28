<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Login.aspx.vb" Inherits="LibraryManagementSystemWeb.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
	<title>Login</title>
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
                         <asp:TextBox ID="TxtName" runat="server" class="input100" type="text" name="username" 
                             placeholder="Type your username"></asp:TextBox>
						
                        
						<span class="focus-input100" data-symbol="&#xf206;"></span>
					</div>

					<div class="wrap-input100 validate-input" data-validate="Password is required">
						<span class="label-input100">Password</span>
                          <asp:TextBox ID="TxtPassword" runat="server" class="input100" type="password" name="pass"
                              placeholder="Type your password"></asp:TextBox>
					
						<span class="focus-input100" data-symbol="&#xf190;"></span>
					</div>

                    <br />
                    <br />

                <div class="container-login100-form-btn">
						<div class="wrap-login100-form-btn">
							
                       <asp:Button ID="Button1" runat="server" class="login100-form-btn" Text="Login" BackColor="#663300" />
			     	</div>
					</div>
                   
                    <br />
                        <asp:Label ID="lblMessage" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="#FF3300"></asp:Label>
                     

				    <br />
                   
                    <br />
                   

					<div class="text-right p-t-8 p-b-31">
						<a href="#">
							Forgot password?
						</a>
					&nbsp;<div class="txt1 text-center p-t-54 p-b-20">
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
                     

				</div>
		</div>
	</div>

    </form>

</body>
</html>
