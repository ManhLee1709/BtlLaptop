<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Laylaimk.aspx.cs" Inherits="BtlLaptop.Laylaimk" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <link rel="shortcut icon" href="./assets/img/logo.jpg" type="image/x-icon">

    <link rel="stylesheet" href="./assets/css/styleLogin.css">
    <title>Lấy lại mật khẩu</title>
    <style type="text/css">
        #telLaylaimk {
            width: 202px;
        }
    </style>
</head>
<body>
    <div class="Login">
        
            <a href="Index.aspx"><img src="./assets/img/logo.png" alt="Logo"></a> 
            <!-- <h1>Truy cập chế độ khách</h1> -->
     <div class="Container-Login-form"> <!-- Login form -->
    
         <form id="form1" action="Laylaimk.aspx" method="post" runat="server">

            <h1>Lấy lại mật khẩu</h1>
            <div class="groupForm">
                <div class="labelForm">
                    <label for="emailLaylaimk">Email :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </label>
                    &nbsp;<input required type="email" name="emailLaylaimk" id="emailLaylaimk">
                </div>

                  <div class="labelForm">
                      T<label for="telLaylaimk">el :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </label>
                    &nbsp;<input required type="tel" name="telLaylaimk" id="telLaylaimk">
                </div>

                 <div class="labelForm">
                        <p runat="server" id="errorL" style=" color:red"></p>
                        <p runat="server" id="passL" style=" color:green"></p>
                </div>

                <div class="control-form" style="text-align: center;">
                    <asp:Button ID="btnLaylaimk" runat="server" Text="Lấy lại mật khẩu" OnClick="btnLaylaimk_Click" />
&nbsp;<a href="Login.aspx"><input type="button" value="quay lại Login"></a> 
                    <!-- <div class="quenmk"><a href="">Lấy lại mật khẩu</a></div> -->
                </div>
                

            </div>

         </form>

    
    </div> <!-- kết thúc container Login form -->

    </div>
        
 

</body>



</html>
