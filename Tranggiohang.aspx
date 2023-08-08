<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Tranggiohang.aspx.cs" Inherits="BtlLaptop.Tranggiohang" %>

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
    <link rel="stylesheet" href="./assets/css/styleCard.css">

 
    <title>Trang chi tiết sản phẩm</title>
</head>
<body class="grid wide">
    
    <div class="app grid wide " >
        <div id="header">
              <div id="header_first">
                <div class="header__in4">
                    <div class="header__attention">
                      <i class="far fa-hand-point-right"></i>
                    </div>
                    <marquee behavior="" direction="" width="100%"  >Nhóm Lê Đức Mạnh , Lý Lâm Khải bài tập lớn web giáo viên hướng dẫn Trần Đức Tuấn</marquee>
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
                  <form action="">
                  <select name="scat_id">
                    <option value="">Tất cả danh mục</option>
                    <option value="395">Laptop - Máy Tính Xách Tay</option>
                    <option value="394">Máy tính - Máy chủ</option>   
                    <option value="400">Máy in - TB văn phòng</option>    
                    <option value="1253">Linh kiện máy tính</option>     
                    <option value="1052">Màn Hình Máy Tính</option>    
                    <option value="1255">Gaming Gear</option>   
                </select>
                  <input type="search"  name="" id="js_search" placeholder="Tìm kiếm sản phầm ....">
                  <button id="btnTimKiem"><i class="fas fa-search"></i> Tìm kiếm</button>
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
            </div>  <!-- kết thúc phần container -->
           
            <div id="Card">
                <div class="container-card grid wide" >  <!-- container card -->
                    <h1 class="tieude-card">
                        GIỎ HÀNG
                    </h1>

                    <table id="bangGiohang" >
                      <tr style="font-size: 2rem;  text-align: center; text-transform: uppercase;" >
                        <th >Ảnh</th>
                        <th >Tên sản phẩm</th>
                        <th >Giá</th>
                          <th >Số lượng</th>
                        <th >Tổng Tiền</th>
                          
                      </tr  >
                        
             <asp:ListView ID="ListViewCartLaptop" runat="server">
				<ItemTemplate>
                       <tr class="cotsp" style="text-align:center; background-color:whitesmoke; font-size:2rem;" >
                        <td style="width: 40%;" ><img src= "<%# Eval("img") %>" class="anh" width="70%" /></td>
                        <td><p><%# Eval("ten") %></p></td>
                        <td><p><%# Eval("gia") %> VNĐ </p></td>
                           <td><p><%# Eval("soluong") %>  Chiếc </p></td>
                           <td><p><%# Eval("thanhtien") %>  VND </p></td>
                        <%--<td><a href="Xoa.aspx?ma=<%# Eval("ma") %>" class="xoa"><button class="xoa" >Tổng Tiền</button></a></td>--%>
                           
                      </tr>
				</ItemTemplate>
                 
			</asp:ListView>
             <tr><td><p id="tongtien" style="color:black" runat="server"></p></td></tr>
                    


                    </table>

                
                </div> <!-- kết thúc container card -->


            </div>

      

            <!-- FOOTER -->
            <div id="footer" class="grid wide">
                <img src="./assets/img/logo.png" alt="Logo" style="width: 140px;" class="logoImg row col c-12">

                <div class="containerFooter row">   <!-- Ô chứa hàng row -->

                  <div class="footer__Info col c-4 m-12">
                    <div class="footer__title">
                      <a href=""><i class="fas fa-map-marker"></i> HỆ THỐNG CỬA HÀNG</a>
                    </div>
                    <p class="footer__des">
                      Đây là bài tập lớn web cơ bản của 2 sinh viên Lê Đức Mạnh , Lý Lâm Khải lớp hành chính 2010A05 . Bài tập lớn được hướng dẫn bải giảng viên Trần Đức Tuấn lớp tín chỉ lí thuyết 	AAW7112021.011
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


    //  trang con 
    // slder chi tiết
    const rightbtnConCT = document.querySelector('.btnright-contet-slider-top')
    const leftbtnConCT = document.querySelector('.btnleft-contet-slider-top')
    const imgNumber = document.querySelectorAll('.slider-content-top img').length
    var index = 0;
    rightbtnConCT.addEventListener('click', function () {
        index = index + 1;
        if (index == imgNumber)
            index = 0
        console.log('ok')
        document.querySelector('.slider-content-top').style.right = index * 100 + "%"
        removeLi()
        document.querySelector('.slider-content-top').style.right = index * 100 + "%"
        imgNumberLi[index].classList.add('active')
    }
    )

    leftbtnConCT.addEventListener('click', function () {
        index = index - 1;
        if (index == imgNumber)
            index = imgNumber
        // console.log('ok')
        document.querySelector('.slider-content-top').style.right = index * 100 + "%"
        removeLi()
        document.querySelector('.slider-content-top').style.right = index * 100 + "%"
        imgNumberLi[index].classList.add('active')
    }
    )

    const imgNumberLi = document.querySelectorAll('li.bottomSlider')

    imgNumberLi.forEach(function (image, index) {
        // console.log(image)

        image.addEventListener('click',
            function () {
                removeLi()
                document.querySelector('.slider-content-top').style.right = index * 100 + "%"
                image.classList.add("active")

            }
        )
    })

    function removeLi() {
        var imgactive = document.querySelector('.active')
        imgactive.classList.remove('active')

    }

    function imgauto() {
        index = index + 1;
        if (index == imgNumber)
            index = 0
        removeLi()
        document.querySelector('.slider-content-top').style.right = index * 100 + "%"
        imgNumberLi[index].classList.add('active')



    }

    setInterval(imgauto, 5000)


</script>



</html>
