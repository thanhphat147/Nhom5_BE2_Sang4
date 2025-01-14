<!DOCTYPE blade.php>
<blade.php lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!-- Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Nunito:200,600" rel="stylesheet">

        <!-- Styles -->
        <style>
            blade.php, body {
                background-color: #fff;
                color: #636b6f;
                font-family: 'Nunito', sans-serif;
                font-weight: 200;
                height: 100vh;
                margin: 0;
            }

            .full-height {
                height: 100vh;
            }

            .flex-center {
                align-items: center;
                display: flex;
                justify-content: center;
            }

            .position-ref {
                position: relative;
            }

            .top-right {
                position: absolute;
                right: 10px;
                top: 18px;
            }

            .content {
                text-align: center;
            }

            .title {
                font-size: 84px;
            }

            .links > a {
                color: #636b6f;
                margin: 20px;
                
                padding: 0 25px;
                font-size: 13px;
                font-weight: 600;
                letter-spacing: .1rem;
                text-decoration: none;
                text-transform: uppercase;
            }

            .m-b-md {
                margin-bottom: 30px;
            }

            .dropdown {
  position: relative;
  display: inline-block;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f9f9f9;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  padding: 12px 16px;
  z-index: 1;

}

.dropdown:hover .dropdown-content {
  display: block;
}

.noidung > h1 {
    color: #00000f;

}

        </style>
    </head>
    <body>
    <div class="links">
        <a name=trangchu href="index1.php">Trang Chủ</a>
        <a name=gioithieu href="gioithieu.php">Giới thiệu</a>
        <div class="dropdown">
            <span>Sản phẩm</span>
            <div class="dropdown-content">
            <p><a name=ban href="ban.php">Bàn</a></p>
            <p><a name=ghe href="ghe.php">Ghế</a></p>
  </div>
</div>
        <a name=lienhe href=lienhe.php>Liên hệ</a>
    </div>
    <div class="noidung"><h1>Đây là trang chủ</h1></div>
    </body>
</blade.php>
