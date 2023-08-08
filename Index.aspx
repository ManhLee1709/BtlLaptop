<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="BtlLaptop.Index" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css" integrity="sha512-NhSC1YmyruXifcj/KFRWoC561YpHpc5Jtzgvbuzx5VozKpWvQ+4nXhPdFgmx8xqexRcpAglTj9sIBWINXa8x5w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="shortcut icon" href="./assets/img/logoDen.PNG" type="image/x-icon">
     <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="./assets/font_icon/fontawesome-free-5.15.4-web/css/all.min.css">
    <link rel="stylesheet" href="./assets/css/base.css">
    <link rel="stylesheet" href="./assets/css/styleindex.css">
    <link rel="stylesheet" href="./assets/font_text/LICENSE.txt">
    <link rel="stylesheet" href="./assets/css/card.css">
    <link rel="stylesheet" href="./assets/css/reposive.css">
    <link rel="stylesheet" href="./assets/css/gridview.css">


 
    <title>Trang chủ</title>
</head runat="sever">
<body class="grid wide">
    
    <div class="app grid wide " >
        <div id="header">
              <div id="header_first">
                <div class="header__in4">
                    <div class="header__attention">
                      <i class="far fa-hand-point-right"></i>
                    </div>
                    <marquee behavior="" direction="" width="100%"  >Nhóm Lê Đức Mạnh , Lý Lâm Khải bài tập lớn web giáo viên hướng dẫn Nguyễn Đức Tuấn</marquee>
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
                  <select name="scat_id">
                    <option value="">Tất cả danh mục</option>
                    <option value="395">Laptop - Máy Tính Xách Tay</option>
                    <option value="394">Máy tính - Máy chủ</option>   
                    <option value="400">Máy in - TB văn phòng</option>    
                    <option value="1253">Linh kiện máy tính</option>     
                    <option value="1052">Màn Hình Máy Tính</option>    
                    <option value="1255">Gaming Gear</option>   
                </select>
                  <input type="search" style="border-radius:5px;"  name="giatri" id="js_search" placeholder="Tìm kiếm sản phầm ...." runat="server">
                  <button type="submit" id="btnTimKiem" ><i class="fas fa-search"></i> Tìm kiếm</button>
                  
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

            <!-- phần chứa danh mục các sản phẩm   -->
              <div id="navigation2">
                    <ul class="nav2__menuTagss">
                      <li class="nav2__tag"><div class="headerDM"> <a href=""><i class="fas fa-bars"></i> DANH MỤC SẢM PHẨM</a></div>
                        <ul class="nav2__Danhmuc">
                          <li class="Danhmuccon"> <a href=""><i class="fas fa-laptop"></i> Laptop - Máy tính xách tay</a>  </li>
                          <li class="Danhmuccon"> <a href=""><img src="./assets/img/pc.jpg" alt=""> Máy tính - Máy chủ</a> </li>
                          <li class="Danhmuccon"> <a href=""><i class="fas fa-print"></i> Máy in - TB văn phòng </a> </li>
                          <li class="Danhmuccon"> <a href=""><img src="./assets/img/phukien.jpg" width="24px" alt=""> Linh kiện máy tính </a> </li>
                          <li class="Danhmuccon"> <a href=""><i class="fas fa-desktop"></i> Màn Hình Máy Tính </a> </li>
                          <li class="Danhmuccon"> <a href=""><i class="fas fa-headphones"></i> Gaming Gear </a> </li>
                          <li class="Danhmuccon"> <a href=""><i class="fab fa-microsoft"></i> Microsoft Surface</a> </li>
                          <li class="Danhmuccon"> <a href=""><i class="fas fa-compact-disc"></i> TB lưu trữ , nghe nhìn </a> </li>
                          <li class="Danhmuccon"> <a href=""><i class="fab fa-apple"></i> Apple </a> </li>
                          <li class="Danhmuccon"> <a href=""><img src="./assets/img/tbmang.jpg" width="24px" alt=""> Thiết bị mạng </a> </li>
                          <li class="Danhmuccon"> <a href=""><i class="fas fa-camera"></i> Camera </a> </li>
                          <li class="Danhmuccon"> <a href=""><i class="fas fa-fan"></i> Cooling , Tản nhiệt </a> </li>
                          <li class="Danhmuccon"> <a href=""><img src="./assets/img/buongchoigame.jpg" width="24px" alt=""> Buồng chơi Game giả lập </a> </li>
                          <li class="Danhmuccon"> <a href=""><i class="fab fa-usb"></i> Phụ kiện Laptop , PC khác </a> </li>
                          <li class="Danhmuccon"> <a href=""><img src="./assets/img/smarthouse.jpg" width="24px" alt=""> Nhà Thông Minh - Smart Home</a> </li>
                        </ul>
                      </li>
                      <!-- <li class="nav2__tag"> <i class="fas fa-home"></i> <a href="./index.html">HOME</a></li>
                      <li class="nav2__tag"> <i class="fas fa-address-card"></i> <a href="">ABOUT</a></li> -->
                    </ul>
              </div>
            
            </div>

            <div id="container" class="grid wide">   <!-- Nội dung chưa thông tin phần body của trang web -->
              <div id="slider" >                 <!-- Slider -->
                        <div class="SliderShow">    <!-- thẻ chứ các slider show ở dưới -->
                          <!-- Hình ảnh trong slider phía dưới  -->
                          <div class="slide fade open">
                            <video src="./assets/video/Lenovo ThinkPad X Series Product Tour 2019.mp4" style="height:854px" muted autoplay loop width="100%" ></video>
                        </div>
                          <div class="slide fade">
                            
                              <img src="./assets/img/sl2.jpg" width="100%" style="height:854px" alt="slide2">
                              <div class="textsl2"> <a href="">XEM THÊM</a> </div>
                              <div class="nutAnmua2">   <a href=""> MUA NGAY</a> </div>
                          </div>
                          <div class="slide fade">
                              <img src="./assets/img/sl3.jpg" width="100%" style="height:854px" alt="slide3">
                              <div class="textsl3"> <a href="">xem chi tiết thêm <i class="fas fa-angle-down"></i></a> </div>
                          </div>
                          <div class="slide fade">
                              <img src="./assets/img/sl4.jpg" width="100%" style="height:854px" alt="slide4">
                              <div class="muangaysl4 an1900"> <a href="">Mua Ngay ></a> </div>
                          </div>
                          <div class="slide fade">
                            <img src="./assets/img/sl5.jpg" width="100%" style="height:854px" alt="slide5">
                            <div class="muangay5 an1900">
                              <a href=""> mua đi,chờ chi !  </a>
                            </div>
                        </div>
                        <div class="slide fade">
                          <img src="./assets/img/sl6.png" width="100%" style="height:854px" alt="slide6">
                          <div class="nutAnmua6">   <a href=""> MUA NGAY</a> </div>
                      </div>
                          <!-- Bộ xử lí -->
                          <a class="prev" onclick="plusSlides(-1)">❮</a>
                          <a class="next" onclick="plusSlides(1)">❯</a>
                       <!-- số đốt nhảy qua trang của web  -->
                        <div class="vitridot">
                           <div style="text-align:center">
                          <span class="dot" onclick="currentSlide(1)"></span>
                          <span class="dot" onclick="currentSlide(2)"></span>
                          <span class="dot" onclick="currentSlide(3)"></span>
                          <span class="dot" onclick="currentSlide(4)"></span>
                          <span class="dot" onclick="currentSlide(5)"></span>
                          <span class="dot" onclick="currentSlide(6)"></span>
                        </div>
                        </div>
                        </div> <!-- kết thức phần slder show -->            
              </div>    <!-- két thúc phần id slider -->
      
              


              <div id="new">
                  <div class="ContainerNew row">
                    <%--<div class="gropNewleft col c-6 m-12">

                        <div class="layoutNewImg">
                             <img src="./assets/img/imgQC.jpg" width="90%" alt="ảnh quảng cáo">
                        </div>
                        <div class="layoutNewInfo">
                          <h2 class="TitNewIf">
                          Laptop Dell Latitude 3420 42LT342001 Tặng kèm ram 4Gb (i3 1115G4/ 4Gb/ SSD 256Gb / 14.0" HD/VGA ON/ DOS/Black)
                          </h2>
                          <div class="GiaNewIf">
                            <h1>Giá :   13.790.000 ₫ </h1> <span class="underNewif"> <h5>15.990.000 VNĐ</h5> </span>
                            <div >
                              
                            </div>
                          </div>

                          <p class="des">
                            - Bộ VXL: Core i3 1115G4 3.0Ghz up to 4.1Ghz-6Mb </br>
                            - Cạc đồ họa: Intel® Iris® Xe Graphics </br>
                            - Bộ nhớ: 4Gb 
                          </p>

                          <button class="btnNew" > <a href=""> MUA NGAY</a>  </button>
                         
                        </div>
                    </div>--%>

                    <div class="groupNewRight col c-12 m-12">
                            <div class="containerGroupRight ">

                                <div class="titNewR">
                                  <h1 style="    text-shadow: 2px 2px #00000071;">NEW : SALE CỰC HOT MẠI DZÔ</h1>
                                </div>

                                <img src="./assets/img/bannerNew.jpg" style="padding-left: 10px ;" width="100%" alt="banner new">
                               <div class="baner2" style="display: flex;">
                                <img src="./assets/img/anhcon1.png" alt="new1" style="width:50%">
                                <img src="./assets/img/anhcon2.png" alt="new2" style="width:50%">
                               </div>

                              </div>
                              

                            </div>
                    </div>

                  </div>
              </div>


             



              <!-- LAPTOP -->
              <form runat="server" method="post" action="LaptopPage.aspx" id="MatHang">
                  <div id="Laptop">
                    <!-- ô chứ Laptop -->

                    <h1 class="TieudeLaptop">
                            LAPTOP
                    </h1>
                    <div class="ContainerLaptop">
                      
<%--                      <div class="tagViTri">
                        <a href="" style="color:rgb(191, 0, 255); text-decoration: underline; font-size: 1.6rem;">Trang chủ</a> 
                      </div>--%>

                        <!-- hàng Laptop -->
                      <div class="groupLapTop row">

                          


                          <asp:ListView ID="DSmathangLaptop" runat="server">
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
                            <h1 class="LaptopPrice" ><%# Eval("gia") %> VNĐ</h1>
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


                    </div>   <!-- container -->
                 
                  </div>



                  <div id="PC">
                    <!-- ô chứ Laptop -->

                    <h1 class="TieudeLaptop">
                            MÁY TÍNH BÀN
                    </h1>
                    <div class="ContainerLaptop">
                      
                      <div class="tagViTri">
                        <a href="" style="color:rgb(191, 0, 255); text-decoration: underline; font-size: 1.6rem;"></a> 
                      </div>


                        <!-- hàng Laptop -->
                      <div class="groupLapTop row">
                      <asp:ListView ID="DanhSachMatHangPC" runat="server">
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
                                 <%-- <input class="btnMua" type="button" value="MUA">--%>
                                  <%--<input class="btnGioHang" type="button" value="GIỎ HÀNG">--%>
                                </div>
                          </div>
                            </div>

                                 </ItemTemplate>
                          </asp:ListView>
                      </div>

                    </div>   <!-- container -->

                  </div>


                  <div id="PhuKien">
                    <!-- ô chứ Laptop -->

                    <h1 class="TieudeLaptop">
                            LINH KIỆN MÁY TÍNH
                    </h1>
                    <div class="ContainerLaptop">
                      
                      <div class="tagvitri">
                        <a href="" style="color:rgb(191, 0, 255); text-decoration: underline; font-size: 1.6rem;"></a> 
                      </div>


                        <!-- hàng Laptop -->
                      <div class="groupLapTop row">

                        
                               <asp:ListView ID="DanhSachPhuKien" runat="server">
                              	<ItemTemplate>
                                         <a href="PCPage.aspx?ma=<%# Eval("ma") %>" class="itemLaptop col c-4 m-12 ">
                            <div class="MainLap" >
                          <div class="layoutAnh">
                            <img src="<%# Eval("img") %>"  alt="Laptop">
                          </div>
                          <div class="layoutInfo">
                            <!--  để name sản phẩm -->
                            <h3 class="LaptopName"><%# Eval("ten") %></h3>
                            <!-- giá -->
                            <h1 class="LaptopPrice" ><%# Eval("gia") %></h1>
                            <!-- Nội dung -->
                            <p class="LaptopNoidung" >
                              <%# Eval("noidung") %>
                            </p>
                            <div class="LaptopControl">
                             <%-- <input class="btnMua" type="button" value="MUA">--%>
                              <%--<input class="btnGioHang" type="button" value="GIỎ HÀNG">--%>
                            </div>
                          </div>
                            </div>

                                 </ItemTemplate>
                          </asp:ListView>
                      </div>
                      <!-- group -->
                      <%--<div class="groupLapTop xemthemLap"  >
                            <a class="openLoiHethong"  style="color: rgb(37, 105, 195); font-size: 2rem; " >XEM THÊM</a>
                      </div>--%>

                    </div>   <!-- container -->
                  </div>


                  <div id="Manhinh">
                    <!-- ô chứ Laptop -->

                    <h1 class="TieudeLaptop">
                            MÀN HÌNH PC , LAP
                    </h1>
                    <div class="ContainerLaptop">
                      
                      <div class="tagViTri">
                          
                        <a href="" style="color:rgb(191, 0, 255); text-decoration: underline; font-size: 1.6rem;"></a> 
                      </div>


                        <!-- hàng Laptop -->
                      <div class="groupLapTop row">

                                     <asp:ListView ID="DanhSachmathangmanhinh" runat="server">
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
                             <%-- <input class="btnMua" type="button" value="MUA">--%>
                              <%--<input class="btnGioHang" type="button" value="GIỎ HÀNG">--%>
                            </div>
                          </div>
                            </div>

                                 </ItemTemplate>

                          </asp:ListView>


                      </div>
                      <!-- group -->
                      <%--<div class="groupLapTop xemthemLap"  >
                            <a class="openLoiHethong"  href="" style="color: rgb(37, 105, 195); font-size: 2rem; " >XEM THÊM</a>
                      </div>--%>

                    </div>   <!-- container -->
                 
                  </div>

                  <!-- mat hang -->
              </form>



<%--              <div id="contact">

                <div class="LayoutMap">
                  <iframe style="border: 20px solid rgb(255, 255, 255) ;" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3725.1879948224414!2d105.83655571488264!3d20.985099986022043!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ac5d6ec1b8cf%3A0x982365cd4337fdc8!2zS2hvYSBDw7RuZyBOZ2jhu4cgVGjDtG5nIFRpbg!5e0!3m2!1svi!2s!4v1649652838206!5m2!1svi!2s" width="80%" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                </div>

                <div class="LayoutFormContact">
                        <form class="formContact" action="">
                                  <h2 class="TitContact">
                                    CONTACT
                                  </h2>

                                  <div class="rowContact">
                                    <div class="itemContact">
                                      <label  class="lbContact" for="">NAME </label>
                                    </div>

                                    <div class="itemContact">
                                      <input type="text" required name="" id="" placeholder="Nhập tên của bạn ?">
                                    </div>
                                  
                                  </div>

                                    <div class="rowContact">
                                      <div class="itemContact">
                                        <label class="lbContact" for="">EMAIL </label>
                                      </div>
                                    
  
                                      <div class="itemContact">
                                        <input type="email" required name="" id="" placeholder="Nhập địa chỉ email ?">
                                      </div>
                                      </div>

                                      <div class="MesContact"  >
                                        <label class="lbContact" for="">MESSAGE</label>
                                      <div class="mess">
                                                 <textarea name="" style="width: 39%; height: 150px;"  id="" ></textarea>
                                      </div>

                                      <div class="controlContact">
                                        <input class="btnContact" type="reset" value="Bỏ">
                                        <input class="btnContact" type="submit" value="Gửi">
                                      </div>

                                      </div>     
                                </form>
                            </div>
                        </div>--%>



                <%--<!--  CHINH SACH -->
              <div id="Chinhsach grid wide" style="margin-bottom: 10px;padding-top: 40px; background-color: whitesmoke;">
                  <!-- Container Chinh sách -->
                  <div class="ContainerChinhSach ">
                    <div class="groupCs row">
                          <div class="tieuDeChinhSach">
                              CHÍNH SÁCH 
                          </div>                  
                      </div>


                    <!-- các hàng của chính sách -->
                      <div class="groupCs row">

                        <!-- trái -->
                        <div class="csTraiL1 col c-8">
                            <h2 class="titCs" > <i class="fas fa-shipping-fast"></i> CHÍNH SÁCH VẬN CHUYỂN</h2>
                            <p class="trick">
                                 - Ship tại Hà Nội giá từ 20k trở lên tùy vào lộ trình
                                  </br>
                                 - Mua từ 2 sản phẩm trở lên sẽ được freeship tại Hà Nội và giảm ship 10% tại các địa điểm khác
                                </br>
                                 - Ship các địa điểm khác sẽ giao hàng tiết kiệm bản phải tự trả phí sẽ được cộng sẵn vào
                            </p>
                        </div>

                        <!-- phải -->
                        <div class="csPhaiL1 col c-4">
                            <img id="shipPlay" src="./assets/img/ship.jpg" width="200px" alt="vận chuyển">
                        </div>
                      </div>



                      <div class="groupCs row">

                        <!-- trái -->
                        <div class="csTraiL2 col c-4">
                          <img  src="./assets/img/diamon.png" style="margin-left: 25%;  " width="400px" alt="Kim cương">
                        </div>

                        <!-- phải -->
                        <div class="csPhaiL2 col c-8">

                          <h2 class="titCs" > <i class="far fa-gem"></i> CHÍNH SÁCH BẢO HÀNH VIP</h2>
                         <ul class="trick">
                              <li>Mua check hàng từ lúc nhận máy có sai xót trong vòng 1 tuần đổi trả cái mới</li>
                              <li>Qua một tuần bạn được có ưu đãi bảo hành 1 năm màn , các phụ kiện lỗi do nhà sản xuất</li>
                              <li>Tặng thêm phụ kiện VIP</li>
                         </ul>                  
                        </div>
                      </div>



                      

                      
                      <div class="groupCs row">

                        <!-- trái -->
                        <div class="csTraiL1 col c-8">
                            <h2 class="titCs" > <i class="fas fa-lock"></i> CHÍNH SÁCH BẢO MẬT</h2>
                            <p class="trick">
                                 - Bảo vệ thông tin khách hàng 
                                  </br>
                                 - Ghi lại một số thông tin cơ bản nếu mua VIP sẽ được hệ thống ghi lại
                                </br>
                                 - Khi hết hạn VIP sẽ ghi lại số mã máy mua và xóa hết thông tin khách hàng
                            </p>
                        </div>

                        <!-- phải -->
                        <div class="csPhaiL1 col c-4">
                            <img  src="./assets/img/LOCK.gif" width="350px" style="margin-top: 25px; " alt="vận chuyển">
                        </div>
                      </div>




                      <div class="groupCs row">

                        <!-- trái -->
                        <div class="csTraiL2 col c-4">
                          <img  src="./assets/img/baohanh.png" style="margin-left: 25%;  " width="300px" alt="bảo hành thường">
                        </div>

                        <!-- phải -->
                        <div class="csPhaiL2 col c-8">

                          <h2 class="titCs" > ! CHÍNH SÁCH BẢO HÀNH </h2>
                         <ul class="trick">
                              <li>Bảo hành các lỗi nhà sản xuất 5 tháng</li>
                              <!-- <li></li> -->
                              <li>Vệ sinh máy một lần</li>
                         </ul>                  
                        </div>
                      </div>

                  </div>

              </div>



            </div> <!-- laptop -->


           


                </div>
            </div> -->--%>

<%--              <!-- AboutUS --> 
            <div id="AboutUs"  >
              <div class="wrapper">
                <div class="container">
            
                    <div class="slideshow">
            
                         <div class="slideshow-left">
            
                             <div class="Lslide">
                                 <div class="Lslide-content">
                                     <!-- <h2>QNP PC</h2> -->
                                     <p><img src="./assets/img/logo.png" width="300px" alt=""></p>
            
                                     <!-- <div class="button">
                                         <a href="#">
                                             <p>More</p>
                                             <i class="fa fa-chevron-right" aria-hidden="true"></i>
                                         </a>
                                     </div> -->
                                 </div>
                             </div>
                             <div class="Lslide">
                                 <div class="Lslide-content">
                                     <h3>Phạm Hồng Quân</h3>
                                     <p><img src="./assets/img/avatarQuan.jpg" width="300px" alt=""></p>
            
                                     <!-- <div class="button">
                                         <a href="#">
                                             <p>More</p>
                                             <i class="fa fa-chevron-right" aria-hidden="true"></i>
                                         </a>
                                     </div> -->
                                 </div>
                             </div>
                             <div class="Lslide">
                                 <div class="Lslide-content">
                                     <h3>Nguyễn Phương Nam </h3>
                                     <p><img src="./assets/img/avatarNam.jpg" width="300px" alt=""></p>
            
                                     
                                 </div>
                                 
                             </div>    
                             <div class="Lslide">
                                <div class="Lslide-content">
                                    <h3>Trần Văn Phụng</h3>
                                    <p><img src="./assets/img/avatarPhung.jpg" width="300px" alt=""></p>
            
                                    <!-- <div class="button">
                                        <a href="#">
                                            <p>More</p>
                                            <i class="fa fa-chevron-right" aria-hidden="true"></i>
                                        </a>
                                    </div> -->
                                </div>
                            </div>
            
                            <div class="Lslide">
                                <div class="Lslide-content">
                                    
                                    <p><img src="./assets/img/logoKhoa.png" width="300px" alt=""></p>
            
                                    <!-- <div class="button">
                                        <a href="#">
                                            <p>More</p>
                                            <i class="fa fa-chevron-right" aria-hidden="true"></i>
                                        </a>
                                    </div> -->
                                </div>
                            </div>
            
                         </div>
            
                         <div class="slideshow-right">
            
                             <div class="Rslide">
                                 <div class="right-content">
                                     <h1 class="AboutUsTIP">ABOUT US</h1>
                                 <p class="RC1" >
                                        Sản phẩm dựa trên các nguồn web:
                                        <ul>
                                                <li>Sam Sung :  <a href="">Tại đây</a>  </li> 
                                                <li>An Phát PC : <a href="">Tại đây</a>  </li> 
                                                <li>Mobile City : <a href="">Tại đây</a> </li>
                                                <li>Lenovo : <a href=""> Tại đây</a> </li>  
                                        </ul>
                                 </p>
                                 </div>
                                 
                                 <img src="./assets/img/nenLogo.jpg" alt="">
                             </div>
            
                             <div class="Rslide">
                                <div class="right-content">
                                    <h1 class="AboutUsTIP">ABOUT US</h1>
                                <p class="RC1" >
                                       IN4:
                                       <ul>
                                               <li>Họ và tên : Phạm Hồng Quân </li> 
                                               <li>Mã sinh viên : 20A10010034 </li> 
                                               <li>Ngày sinh : 15/12/2002  </li>
                                               <li>Lớp hành chính : 2010A05</li>  
                                               <li>Link Facebook : <a href="https://www.facebook.com/QuanITTB">Tại đây</a></li> 
                                       </ul>
                                </p>
                                </div>
                               
                                 <img src="./assets/img/nenQuan.png" alt="">
                             </div>     
                             <div class="Rslide">
                                <div class="right-content">
                                    <h1 class="AboutUsTIP">ABOUT US</h1>
                                <p class="RC1" >
                                       IN4:
                                       <ul>
                                               <li>Họ và tên : Nguyễn Phương Nam </li> 
                                               <li>Mã sinh viên : 20A10010115 </li> 
                                               <li>Ngày sinh : 13/08/2002  </li>
                                               <li>Lớp hành chính : 2010A05</li>  
                                               <li>Link Facebook : <a href="https://www.facebook.com/profile.php?id=100028331590041">Tại đây</a></li> 
                                       </ul>
                                </p>
                                </div>
                                 <img src="./assets/img/nenNam.png" alt="">
                             </div>       
                             <div class="Rslide">
                                <div class="right-content">
                                    <h1 class="AboutUsTIP">ABOUT US</h1>
                                <p class="RC1" >
                                       IN4:
                                       <ul>
                                               <li>Họ và tên : Trần Văn Phụng </li> 
                                               <li>Mã sinh viên : 20A10010059 </li> 
                                               <li>Ngày sinh : 26/08/2002</li>
                                               <li>Lớp hành chính : 2010A05</li>  
                                               <li>Link Facebook : <a href="https://www.facebook.com/viemde3">Tại đây</a></li> 
                                       </ul>
                                </p>
                                </div>
                                <img src="./assets/img/nenPhung.png" alt="">
                            </div> 
                            <div class="Rslide">
                                <div class="right-content" style="color: black;">
                                    <h1 class="AboutUsTIP " style="color: black;">ABOUT US</h1>
                                <p class="RC1" style="color: black; font-size: 1.8rem; line-height: 1.1;" >
                                    -  Đây là bài tập nhóm được lấy tên từ các viết tắt các thành viên là Phạm Hồng Quân , Nguyễn Phương Nam , Trần văn Phụng là bài tập lớn về lập tình web cơ bản của lớp lí thuyết thầy Trần Đức Tuấn Lớp AAW7112021.011 . Bài tập lớn này làm về web thương mại điện tử bán laptop và phụ kiện laptop được dựa vào các nguồn trang web khác nhau và có thể sử dụng trang web trên các thiết bị điện thoại , tabet , pc
                                        <div class="banquyen" style="color: red;font-size: 2rem;">Cấm đạo nhái và sử dụng hỏi chính chủ !</div>
                                       </ul>
                                </p>
                                </div>
                                <img src="./assets/img/nenKhoa.png" alt="">
                            </div>                                                 
                         </div>    
            
                         
                         <div class="control" style="display: none;">
                             <div class="oncontrol control-top">
                                 <i class="fa fa-arrow-up" aria-hidden="true"></i>
                             </div>
                             <div class="oncontrol control-bottom">
                                 <i class="fa fa-arrow-down" aria-hidden="true"></i>
                             </div>                          
                         </div>
            
                    </div>
            
                </div>
            </div>
            </div>
            <!-- ABOUT US -->--%>




            </div>  <!-- kết thúc phần container -->
           


            <!-- FOOTER -->
            <div id="footer" class="grid wide">
          <%-- <div>
               <label id="online" runat="server" style="margin-left:48%;">Số lượt truy cập</label>
           </div>--%>
                <img src="./assets/img/logo.png" alt="Logo" style="width: 140px;" class="logoImg row col c-12">

                <div class="containerFooter row">   <!-- Ô chứa hàng row -->

                  <div class="footer__Info col c-4 m-12">
                    <div class="footer__title">
                      <a href=""><i class="fas fa-map-marker"></i> HỆ THỐNG CỬA HÀNG</a>
                    </div>
                    <p class="footer__des">
                      Đây là bài tập lớn web cơ bản của 2 sinh viên Lê Đức Mạnh, Lý Lâm Khải lớp hành chính 2010A05 . Bài tập lớn được hướng dẫn bải giảng viên Trần Đức Tuấn lớp tín chỉ lí thuyết 	AAW7112021.011
                    </p>
                  
                  </div>
    
                  <div class="footer__Csach_QuyDinh col c-4 m-12">
                    <div class="footer__title">
                      <i class="fas fa-question-circle"></i> QUY ĐỊNH - CHÍNH SÁCH
                    </div>
                    <div class="footer__des">
                      <ul class="menuCsQd">
                        <li class="sbMenuCsQd"><a href=""  >Chính sách bảo hành</a></li>
                        <li class="sbMenuCsQd"><a href=""  >Chính sách vận chuyển</a></li>
                        <li class="sbMenuCsQd"><a href=""  >Chính sách đổi trả hàng</a></li>
                        <li class="sbMenuCsQd"><a href=""  >Chính sách bảo mật thông tin</a></li>
                        <li class="sbMenuCsQd"><a href=""  >Hướng dẫn thanh toán</a></li>
                        <li class="sbMenuCsQd"><a href=""  >Hướng dẫn mua hàng Online</a></li>
                        <li class="sbMenuCsQd"><a href=""  >Dịch vụ Ship COD Toàn quốc</a></li>
                        <li class="sbMenuCsQd"><a href=""  >Chính sách đại lý linh, phụ kiện</a></li>
                        <li class="sbMenuCsQd"><a href=""  >Sitemap</a></li>
                      </ul>
                    </div>
                  </div>
    
    
                  <div class="footer__LienKet col c-4 m-12">
                    <div class="footer__title">
                      <i class="fas fa-mail-bulk"></i> ĐĂNG KÍ NHẬN BẢNG TIN
                    </div>
                    <div class="footer__des">
                      <form action="">
                        <input type="email" name="" id=""  style="width: 200px; height: 3rem; border: 1px solid black; border-radius: 5px 0px 0px 5px;" placeholder="Nhập email ">
                        <input type="button" style="height: 3rem; border-radius: 0px 5px 5px 0px; " value="Gửi">
                      </form>
                    </div>
                    <div class="footer__title">
                      <i class="fas fa-link"></i> LIÊN KẾT 
                    </div>
                    <div class="footer__des">
                      <a href="" class="iconLK" style="color: red;"><i class="fab fa-youtube"></i></a>
                      <a href="" class="iconLK" style="color: blue;"><i class="fab fa-facebook"></i></a>
                      <a href="" class="iconLK" style="color: darkorchid;" ><i class="fab fa-instagram"></i></a>
                      <a href="" class="iconLK" style="color: red;"><i class="fab fa-google"></i></a>
                   
                   
                    </div>
                  </div>
    
    
                  <div class="footer__imgThuonghieu col c-12 m-0">
                    <img  class="imgFooter" src="./assets/img/congthuong.png" width="300px" alt="Bộ Công Thương">
                    <img  class="imgFooter" src="./assets/img/dkcongthuong.png"  width="300px" alt="Đăng kí bộ công thương">
                  </div>

                </div>
                <!-- kết thúc ô chứa hàng row -->
              
                <!-- phần đuôi của footer -->
                <div class="endfooter" style="padding-top: 20px; padding-bottom: 20px; padding-left: 100px;">

                  <i class="fas fa-copyright"></i>.2022 QNP PC . Tất cả đều được bảo lưu

                </div>  <!-- kết thúc phần đuôi footer -->
               
           </div>  <!-- Kết thúc phần footer -->
    
           <div id="ThongBaoHeThong" >
              <div class="ContainerHeThong">
                <form class="formHeThong" >
                  <h2 class="ThongBaoTit">
                    <i class="fas fa-exclamation-circle"></i>THÔNG BÁO HỆ THỐNG
                    </h2>
                    <div class="LayoutHeThong">
                      Hệ thống chưa tạo ra chức năng này xin vui lòng đợi lần sau sẽ update sau ạ !
                    </div>
                    <div class="layoutButon" >
                      <input type="button" class="OkHeThong" value="OK ! Hẹn gặp lại nha !" ></input>
                      
                    </div>
                </form>
                    

              </div>
           </div>
      

    

   


</body>
<script>
  var slideIndex = 1;
showSlides(slideIndex);


function plusSlides(n) {
  showSlides(slideIndex += n);
}

function currentSlide(n) {
  showSlides(slideIndex = n);
}


    function showSlides(n) {
        <a href="Index.aspx">Index.aspx</a>
    
    var i ;
    var slides = document.getElementsByClassName("slide");
    var dots = document.getElementsByClassName("dot");
    if (n > slides.length) {slideIndex = 1}
    if (n < 1) {slideIndex = slides.length}
    for (i = 0; i < slides.length; i++) {
        slides[i].style.display = "none";
    }
    for (i = 0; i < dots.length; i++) {
        dots[i].className = dots[i].className.replace(" active", "");
        // slides[i].removeClass('open')
    }
    slides[slideIndex-1].style.display = "block";
    // slides[slideIndex-1].setAttribute('class','open')
    dots[slideIndex-1].className += " active";


    // chuyển tiếp slider
    if(slideIndex == 1)
    {
      setTimeout(function()
  {
  
      slideIndex++;
      showSlides(slideIndex);
  }
  ,88000)
    }
    else
    {
       setTimeout(function()
  {
  
      slideIndex++;
      showSlides(slideIndex);
  }
  ,20000)
    }
   
  }




// hệ thống cảnh báo

var xemthemLapHTHT = document.querySelector('.openLoiHethong')
const ThongBaoHeThong = document.querySelector('#ThongBaoHeThong')
var buttonOkht = document.querySelector('.OkHeThong')

//  ThongBaoHeThong.style.display = 'none'





 buttonOkht.addEventListener('click', function()
{
  ThongBaoHeThong.style.display = 'none'
})


xemthemLapHTHT.addEventListener('click', function()
{
  ThongBaoHeThong.style.display = 'block';
}
)



// kết thúc hệ thống cảnh báo


// about slider chạy
var Lslide      = document.querySelectorAll('.Lslide'),
    Rslide      = document.querySelectorAll('.Rslide'),
    control     = document.querySelectorAll('.oncontrol'),
    slideHeight = document.querySelector('.wrapper').clientHeight,
    color = ['rgb(0 0 0)', '#234956', '#af8742','rgb(13 13 13 / 91%)','#ffffff'],
    index = 0;


function init() {
    slideHeight = document.querySelector('.wrapper').clientHeight;
    for (i = 0; i < Lslide.length; i++) {
        Lslide[i].style.backgroundColor = color[i];
        Lslide[i].style.top = -slideHeight * i + "px";
        Rslide[i].style.top = slideHeight * i + "px";
    }  
}
init()
window.addEventListener('resize', function(){
    init()
});

function moveToTop() {

    index++;
    for (el = 0; el < Lslide.length; el++) {
        Lslide[el].style.top = parseInt(Lslide[el].style.top) + slideHeight + "px";
        Rslide[el].style.top = parseInt(Rslide[el].style.top) - slideHeight + "px";
    }

    if (index > Lslide.length-1) {
        index = 0;
        for (el = 0; el < Lslide.length; el++) {
            Lslide[el].style.top = -slideHeight * el + "px";
            Rslide[el].style.top = slideHeight * el + "px";
        }
    }
}

function moveToBottom() {
    index--;
    for (el = 0; el < Lslide.length; el++) {
        Lslide[el].style.top = parseInt(Lslide[el].style.top) - slideHeight + "px";
        Rslide[el].style.top = parseInt(Rslide[el].style.top) + slideHeight + "px";
        
    }
    if (index < 0) {
        index = Rslide.length-1;
        for (el = 0; el < Lslide.length; el++) {
            Lslide[el].style.top = parseInt(Lslide[el].style.top) + slideHeight * Lslide.length + "px";
            Rslide[el].style.top = parseInt(Rslide[el].style.top) - slideHeight * Rslide.length + "px";
        }
    }
}

function transition() {
    for (t = 0; t < Lslide.length; t++) {
        Lslide[t].style.transition = "all 0.8s";
        Rslide[t].style.transition = "all 0.8s";
    }
}
  

for (t = 0; t < control.length; t++) {
    control[t].addEventListener("click", function() {

        if (this.classList.contains('control-top')) {
            moveToTop()
        } 
        if (this.classList.contains('control-bottom')) {
            moveToBottom()
        }

        transition()
   
    });
}

var wheeling;
function mousemouve(e) {

    clearTimeout(wheeling);
    e.preventDefault();
    var e = window.event || e; 
    var delta = Math.max(-1, Math.min(1, (e.wheelDelta || -e.detail)));
    
    wheeling = setTimeout(function() {
        wheeling = undefined;
        if (delta === 1) {
            moveToTop()
        }
        if (delta === -1) {
            moveToBottom()
        }
    }, 100);

    transition()
}

document.addEventListener("mousewheel", mousemouve);
document.addEventListener("DOMMouseScroll", mousemouve);

</script>



</html>