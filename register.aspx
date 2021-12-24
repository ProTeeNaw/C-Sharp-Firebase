<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="Linflax.register1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>Login V5</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="assets/auth/images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="assets/auth/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="assets/auth/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="assets/auth/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
    <%-- ============================================================================================ --%>
	<link rel="stylesheet" type="text/css" href="assets/css/flax/wickedcss.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="assets/auth/vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="assets/auth/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="assets/auth/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="assets/auth/vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="assets/auth/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="assets/auth/css/util.css">
	<link rel="stylesheet" type="text/css" href="assets/auth/css/main.css">
<!--===============================================================================================-->
</head>
<body>
	
	<form id="form1" runat="server">
<div class="limiter">
		<div class="container-login100" style="background-image: url('assets/auth/images/bg-01.jpg');">
			<div class="wrap-login100 p-l-110 p-r-110 p-t-62 p-b-33" id="role">
				<form class="login100-form validate-form flex-sb flex-w">
					<span class="login100-form-title p-b-53">
						Educator's<br /> Registration
					</span>
					<span class="txt1">
							Name
						</span>
					<div class="wrap-input100 validate-input">
						<asp:TextBox class="input100" type="text" ID="UserID" required runat="server"></asp:TextBox>
						<span class="focus-input100"></span>
					</div>

					<span class="txt1">
							Surname
						</span>
					<div class="wrap-input100 validate-input">
						<asp:TextBox class="input100" type="text" ID="TextBox1" required runat="server"></asp:TextBox>
						<span class="focus-input100"></span>
					</div>

					<span class="txt1">
							Email Adress
						</span>
					<div class="wrap-input100 validate-input">
						<asp:TextBox class="input100" type="text" ID="TextBox2" required runat="server"></asp:TextBox>
						<span class="focus-input100"></span>
					</div>

					<span class="txt1">
							Phone
						</span>
					<div class="wrap-input100 validate-input">
						<asp:TextBox class="input100" type="text" ID="TextBox3" required runat="server"></asp:TextBox>
						<span class="focus-input100"></span>
					</div>

					<div class="container-login100-form-btn m-t-17">
						<Button class="login100-form-btn" runat="server">
							Submit</Button>
					</div>
					<div class="w-full text-center p-t-55">
						<span class="txt2">
							Already registered?
						</span>

						<a href="#" class="txt2 bo1" id="Rolechange">
							Sign In
						</a>
					</div>
				</form>
			</div>
			</div>
		</div>
	</form>
	
	<div id="dropDownSelect1"></div>
	
<!--===============================================================================================-->
	<script src="assets/auth/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="assets/auth/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="assets/auth/vendor/bootstrap/js/popper.js"></script>
	<script src="assets/auth/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="assets/auth/vendor/select2/select2.min.js"></script>
	
	<script src="assets/js/flax/jquery.min.js"></script>
<!--===============================================================================================-->
	<script src="assets/auth/vendor/daterangepicker/moment.min.js"></script>
	<script src="assets/auth/vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="assets/auth/vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<%--<script src="assets/auth/js/main.js"></script>--%>
	<script src="assets/auth/js/auth.js"></script>

</body>
</html>
