<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registration.aspx.cs" Inherits="BtlLaptop.registration" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="./assets/img/logo.jpg" type="image/x-icon">
    <link rel="stylesheet" href="./assets/css/styleDangki.css">
    <title>Đăng kí</title>
</head>
<body >
    <form id="form1" runat="server">
    <div class="headerDk">
        <img src="./assets/img/logo.png" alt="">
    </div>

    <div class="container-form-dangki"> <!-- container -->
            <div class="tieude-form-dangki"> <!-- fom đăng kí -->
                <h1> ĐĂNG KÍ TÀI KHOẢN </h1>
            </div> <!-- tiêu đề kết thúc đăng kí -->
            
        <!-- form đăng kí -->
            
                <div class="group-form-dangki"> <!-- group form đăng kí -->
                    <p id="Ho"></p>
                    <input class="col-4 type="text" name="ho" id="ho" placeholder="NHẬP HỌ">
                    
                </div><br />
            <div class="group-form-dangki">
            <input class="col-4 type="text" name="ten" id="ten" placeholder="NHẬP TÊN">
            </div><br />
                <!-- kết thúc group fom đăng kí -->


                <div class="group-form-dangki"> <!-- group form đăng kí -->
                
                    <input class="col-4   type="email" name="email" id="email" placeholder="NHẬP EMAIL ">
                    
                </div><br />
                <!-- kết thúc group fom đăng kí -->

                <div class="group-form-dangki"> <!-- group form đăng kí -->
                
                    <input class="col-4 type="tel"  name="tel" id="tel" placeholder="NHẬP ĐIỆN THOẠI">
                    
                </div><br />
        
                <!-- kết thúc group fom đăng kí -->

                <div class="group-form-dangki"> <!-- group form đăng kí -->
                
                    <input class="col-4 type="password" name="password" id="password" placeholder="NHẬP PASSWORD" required>
                           
                    
                </div><br />
        <div class="group-form-dangki">
        <input class="col-4 type="password" name="PasswordAgin" id="repassword" placeholder="NHẬP LẠI PASSSWORD" required> 
            </div><br />
                <!-- kết thúc group fom đăng kí -->
            
                <div class="control-form-login">
                    &nbsp;</div>

                 <div class="control-form-login">
                    <p runat="server" id="btn_error" style="color:red"></p>
                     <asp:Button ID="btnDangki" runat="server" OnClick="btnDangki_Click" OnClientClick="check()" Text="Đăng kí tài khoản" />
                </div>

                <div class="group-form-dangki"> <!-- group form đăng kí -->
                
                   
                 

                  <h3> <a href="Login.aspx">quay lại trang login</a> </h3>
                   
                    

                </div>


        <!-- kết thúc form đăng kí -->

    
    
        </div><!-- kết thúc contaner -->

    </form>
<script lang="javascript">
    

</script>
</body>
</html>
