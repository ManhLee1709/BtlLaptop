<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Timkiem.aspx.cs" Inherits="BtlLaptop.Timkiem" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Tìm kiếm sản phẩm</title>
    <link rel="shortcut icon" href="./assets/img/logoDen.PNG" type="image/x-icon">
     <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="./assets/font_icon/fontawesome-free-5.15.4-web/css/all.min.css">
    <link rel="stylesheet" href="./assets/css/base.css">
    <link rel="stylesheet" href="./assets/css/styleindex.css">
    <link rel="stylesheet" href="./assets/font_text/LICENSE.txt">
    <link rel="stylesheet" href="./assets/css/styleindex.css">
    <link rel="stylesheet" href="./assets/css/reposive.css">
    <link rel="stylesheet" href="./assets/css/gridview.css">
</head>
<body class="grid wide">
    
    <div class="app grid wide " >
        <div id="header">
              <div id="header_first">
                <div class="header__in4">
                    <div class="header__attention">
                      <i class="far fa-hand-point-right"></i>
                    </div>
                    <marquee behavior="" direction="" width="100%"  >Nhóm Phạm Hồng Quân , Nguyễn Phương Nam , Trần Văn Phụng bài tập lớn web giáo viên hướng dẫn Trần Đức Tuấn</marquee>
                </div>
              
                <ul class="header__menu">
                  <li class="header__sub"> <i class="fas fa-map-marker-alt"></i><a class="chuthich" href="">Hệ thống cửa hàng</a></li>
                  <li class="header__sub"> <i class="fas fa-play"></i>  <a href="" class="chuthich"> video</a> </li>
                  <li class="header__sub"> <i class="far fa-newspaper"></i> <a href="" class="chuthich"> Tin tức</a> </li>
                  <li class="header__sub"> <i class="fas fa-print"></i> <a href="" class="chuthich">In hóa đơn</a> </li>
                </ul>
              </div>
              
              <!-- phần bảng điểu khiển -->
              <div id="navigation1">
                <div class="nav1__logo">
                  <a href="Index.aspx">
                     <img src="./assets/img/logo.png" alt="logo npn">
                  </a>
                     
                </div>

                <div class="nav1__search">
                  <form action="" method="get">
                  <%--<select name="scat_id">
                    <option value="">Tất cả danh mục</option>
                    <option value="395">Laptop - Máy Tính Xách Tay</option>
                    <option value="394">Máy tính - Máy chủ</option>   
                    <option value="400">Máy in - TB văn phòng</option>    
                    <option value="1253">Linh kiện máy tính</option>     
                    <option value="1052">Màn Hình Máy Tính</option>    
                    <option value="1255">Gaming Gear</option>   
                </select>--%>
                  <input type="search" style="border-radius:5px;"  name="giatri" id="js_search" placeholder="Tìm kiếm sản phầm ...." runat="server">
                  <button type="submit" id="btnTimKiem"><i class="fas fa-search"></i> Tìm kiếm</button>
                  
                </form>
                </div>

                <div class="nav1__login ">
                  <ul class="nav1__menu">
                    <li class="nav1__sub_menu ">
                      <div class="nav1__iconHotline">
                        <i class="fas fa-phone"></i>
                        <div id="captionPhone" class="chuthich">
                          mua online
                        </div>
                      </div>
                      
                        <div class="hotline2 text_16">
                          1900 0323 
                        </div>
                       
                     
                    </li>
                    <li class="nav1__sub_menu">
                      <div class="nav1__accout">
                        <i class="far fa-user-circle"></i>
                         <div id="captionLogin" class="chuthich">
                            Tài khoản
                          </div>
                      </div>
                      <div class="login__mom text_12">
                        <div class="login" id="ClickDangNhap" runat="server">
                            <a href="Login.aspx" class="chuthich" >Đăng nhập</a> 
                          </div>
                          <div class="registration" id="clickDangki" runat="server">
                            <a href="registration.aspx" class="chuthich"> Đăng kí </a> 
                          </div>
                         
                      </div>    
                      
                    </li>
                    <li class="nav1__sub_menu">
                         
                        <a href="Tranggiohang.aspx" class="cart">
                            
                          <i class="fas fa-shopping-cart"> <div runat="server" visible="false" id="demSoHang" style="border-radius:100%; width:20px; height:20px; padding:4px; position:relative;  float:right; margin-left:-10px;  background-color:red;  font-size:1rem; text-align:center;  "  ></div></i>
                           
                          <div id="captionCart" class="chuthich">
                            giỏ hàng của bạn
                          </div>
                        </a>
                    </li>
                  </ul>
                </div>
              </div>
    <form id="form1" runat="server">
        <div style="display:flex;flex-wrap:wrap-reverse">
            <asp:ListView ID="DSTimkiem" runat="server">
                   <ItemTemplate>
                   <a href="PCPage.aspx?ma=<%# Eval("ma") %>" class="itemLaptop col c-4 m-12 ">
                            <div class="MainLap">
                          <div class="layoutAnh">
                            <img src="<%# Eval("img") %>"  alt="Laptop">
                          </div>
                          <div class="layoutInfo">
                            <!--  để name sản phẩm -->
                            <h3 class="LaptopName"><%# Eval("ten") %></h3>
                            <!-- giá -->
                            <h1 class="LaptopPrice" ><%# Eval("gia") %></h1>
                            <!-- Nội dung -->
                            <p class="LaptopNoidung">
                              <%# Eval("noidung") %>
                            </p>
                            <div class="LaptopControl">
                    <%--          <input  class="btnMua" type="button" value="MUA">--%>
                              <%--<input class="btnGioHang" type="button" value="GIỎ HÀNG">--%>
                            </div>
                          </div>
                            </div>
                                 </ItemTemplate>
                          </asp:ListView>
        </div>
    </form>
</body>
</html>
