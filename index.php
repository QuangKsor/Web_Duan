<?php
    session_start();
    include_once('cauhinh/ketnoi.php');
?>
<html lang="vi">
    <head>
        <meta charset="UTF-8">
        <meta charset="Windows-1252">
        <title>Shop Dép - Siêu xịn</title>
        <link rel="icon" type="image/x-icon" href="quantri/anh/logo.ico">
        <link rel="stylesheet" type="text/css" href="css/trangchu.css"> 
        <link rel="stylesheet" typr="text/css" href="css/chitietsp.css"> 
    </head>
    <body>
    <div id="wrapper">
        <header class="header">
            <div class="container">
                <div class="logo">
                    <div class="logo-icon"><img width="90px" height="auto" src="quantri/anh/logo_bieutuong.png" alt="Logo biểu tượng"></div>
                    <span>Bạch Vân </span>
                </div>
                <div class="search-container">
                    <?php
                        include_once('chucnang/timkiem/timkiem.php');
                    ?>
                </div>

                <!-- logo mạng xã hội -->
                <div class="social-icons">
                    <div class="auth-container">
                        <?php if (isset($_SESSION['username'])): ?>
                                <p>Xin chào, <?php echo htmlspecialchars($_SESSION['username']); ?>!</p>
                                <span><a href="logout.php" class="auth-link"><img src="quantri/anh/user.png" alt="" width="75px" height="auto"></a></span>
                            <?php else: ?>
                                <a href="login.php" class="auth-link"><img src="quantri/anh/user.png" alt="" width="75px" height="auto"></a>
                            <?php endif; ?>
                    </div>
                    <div class="social-icon facebook"><a href="https://web.facebook.com/quang.ksor.37"><img src="quantri/anh/fbook.png" alt="" width="40px" height="auto"></a></div>
                    <div class="social-icon tiktok"><a href="https://www.tiktok.com/@tqtuan295?lang=vi-VN"><img src="quantri/anh/tiktok1.png" alt="" width="47px" height="auto"></a></div>
                    <div class="social-icon cart"><a href="index.php"><img width="50px" height="50px" src="quantri/anh/giohang.jpg" /></a>
                        <?php
                                include_once('chucnang/giohang/giohangcuaban.php');
                            ?>
                    </div>
                </div>
            </div>
                <nav id = "nav-menu">
                    <div class="navbar navbar-expand">
                        <ul>
                            <li><a href="index.php">TRANG CHỦ</a></li>
                            <li><a href="index.php?page_layout=gioithieu">GIỚI THIỆU</a></li>
                            <li><a href="index.php?page_layout=depnam">DÉP NAM</a></li>
                            <li><a href="index.php?page_layout=depnu">DÉP NỮ</a></li>
                            <li><a href="index.php?page_layout=tatcasanpham">TẤT CẢ SẢN PHẨM</a></li>
                            <li><a href="index.php?page_layout=khuyenmai">KHUYẾN MÃI</a></li>
                            <?php
                                if (isset($_SESSION['role']) && $_SESSION['role'] == 1) {
                                    echo '<li><a href="quantri/quantri.php">TRANG ADMIN</a></li>';
                                }
                            ?>
                        </ul>
                    </div>
                </nav>
        </header>
    
        
    
                <div id="main">
                    <?php
                    if(isset($_GET['page_layout'])){
                        switch($_GET['page_layout']){
                            case 'tatcasanpham':include_once('chucnang/menungang/tatcasanpham.php');break;
                            case 'chitietsp':include_once('chucnang/sanpham/chitietsp.php');break;
                            case 'khuyenmai':include_once('chucnang/menungang/khuyenmai.php');break;
                            case 'tatcatimkiem':include_once('chucnang/timkiem/tatcatimkiem.php');break;
                            case 'giohang': include_once('chucnang/giohang/giohang.php');break;
                            case 'muahang':include_once('chucnang/giohang/muahang.php');break;
                        default: 
                            case 'depnu':include_once('chucnang/menungang/depnu.php');break;
                            case 'depnam':include_once('chucnang/menungang/depnam.php');break;
                            case 'gioithieu':include_once('chucnang/menungang/gioithieu.php');break;
                        }
                    }else{
                        include_once('chucnang/banner/banner2.php');
                        include_once('chucnang/sanpham/spmoi.php');
                        include_once('chucnang/banner/banner3.php');
                        include_once('chucnang/sanpham/spdacbiet.php');
                        include_once('chucnang/banner/banner.php');
                        include_once('chucnang/menungang/khuyenmai.php');
                    }
                    ?>
                </div>
                <div id="footer">
                    <div id="footer-item">
                        <h4>Cửa hàng Website bán dép <b>Nguyệt Dạ Lâu</b> uy tín Việt Nam</h4>
                        <p><span>Địa chỉ:</span> 170 - An Dương Vương, Thành Phố Quy Nhơn | <span>Hotline: 0946042975</span> </p>
                    </div>
                </div>
        </div>    
            <script src="./js/banner.js"></script>
    </body>

</html>