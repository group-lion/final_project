<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="StudentLogin.aspx.vb" Inherits="LibraryManagementSystemWeb.StudentLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

    <head>
	<title>Student Login</title>
	<meta charset="UTF-8"/>
	<meta name="viewport" content="width=device-width, initial-scale=1"/>
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->

        <link href="StudentLoginFile/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
<!--===============================================================================================-->
	
    <link href="StudentLoginFile/fonts/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" />
<!--===============================================================================================-->

        <link href="StudentLoginFile/fonts/Linearicons-Free-v1.0.0/icon-font.min.css" rel="stylesheet" />
<!--===============================================================================================-->

        <link href="StudentLoginFile/vendor/animate/animate.css" rel="stylesheet" />
<!--===============================================================================================-->	

        <link href="StudentLoginFile/vendor/css-hamburgers/hamburgers.min.css" rel="stylesheet" />
<!--===============================================================================================-->
        <link href="StudentLoginFile/vendor/animsition/css/animsition.min.css" rel="stylesheet" />

<!--===============================================================================================-->

        <link href="StudentLoginFile/vendor/select2/select2.min.css" rel="stylesheet" />
<!--===============================================================================================-->	

        <link href="StudentLoginFile/vendor/daterangepicker/daterangepicker.css" rel="stylesheet" />
<!--===============================================================================================-->
	
        <link href="StudentLoginFile/css/main.css" rel="stylesheet" />

        <link href="StudentLoginFile/css/util.css" rel="stylesheet" />
<!--===============================================================================================-->
</head>
<body>
	
	<div class="limiter">
		<div class="container-login100" style="background-image: url('images/S.jpg');">
			<div class="wrap-login100 p-l-110 p-r-110 p-t-62 p-b-33">
				<form id="form1" runat="server">
					<span class="login100-form-title p-b-53">
						 Student Login
					</span>
					
					<div class="p-t-31 p-b-9">
						<span class="txt1">
							Username
						</span>
					</div>
                    <div class="wrap-input100 validate-input m-b-23" data-validate = "Username is reauired">
						
                        <asp:TextBox ID="TextBoxName" runat="server" class="input100" type="text" name="username"></asp:TextBox>
						<span class="focus-input100" data-symbol="&#xf206;"></span>
					</div>
					
					
					<div class="p-t-13 p-b-9">
						<span class="txt1">
							Password
						</span>

						<a href="#" class="txt2 bo1 m-l-5">
							Forget?
						</a>

					</div>
                    <div class="wrap-input100 validate-input" data-validate="Password is required">
					
              <asp:TextBox ID="TextBoxPassword" runat="server" class="input100" type="password" name="pass" ></asp:TextBox>
						<span class="focus-input100" data-symbol="&#xf190;"></span>
					</div>

                      <br />

                    <div class="container-login100-form-btn">
						<div class="wrap-login100-form-btn">
							<div class="login100-form-bgbtn"></div>
							
                       <asp:Button ID="BtnSigin" runat="server" class="login100-form-btn" Text="SingIn" BackColor="#CC0066" Width="300px" />
						    <br />
                            <br />
                            <asp:Label ID="LblMessage" runat="server" Font-Size="Large" ForeColor="#FF3300"></asp:Label>
						</div>
					</div>


					<div class="w-full text-center p-t-55">
						<span class="txt2">
							Not a member?
						</span>
                         

						<a href="Student_Registration.aspx" class="txt2 bo1">
							Sign up now
						</a>
					</div>
				</form>
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

</body>
</html>
