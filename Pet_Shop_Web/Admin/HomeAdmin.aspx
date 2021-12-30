<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HomeAdmin.aspx.cs" Inherits="Admin_HomeAdmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="icon" href="../images/logo/petshop.ico">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
    <link href="css/Menu.css" rel="stylesheet" type="text/css" />
    <style>
    * {
	box-sizing:border-box;
	-moz-box-sizing:border-box;
	-webkit-box-sizing:border-box;	
    }

    ::-webkit-scrollbar {
        height:10px;
        width:10px;	
    }

    ::-webkit-scrollbar-thumb {
        background:lightpink;
        border-radius:10px;
    }
    
    html {
 	    scroll-behavior: smooth;
    }

    body {
	    margin:0;
        padding: 0;
    }

    html, body { 
        cursor:url('http://www.snazzyspace.com/cursorsfolder/dog-paw.png'), auto; 
    }
    </style>
    <script>
        function signout() {
            document.location.href = '/Page/DangNhap.aspx'
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="menu">
        <img src="images/logo.png">
        <div class="menu-content">
            <a href="ThongKe.aspx"><i class="fa fa-chart-bar" style="padding-left: 3px"> Thống kê</i></a>
            <a href="QuanLySanPham.aspx" <i class="fas fa-box-open"></i> Quản lý sản phẩm</a>
            <a href="QuanLyUser.aspx"><i class="fa fa-users"></i> Quản lý user</a>
            <a href="QuanLyDatHang.aspx"><i class="fas fa-shipping-fast"></i> Quản lý đơn hàng</a>
            <a href="#" onClick="signout()"><i class="fas fa-power-off"></i> Đăng xuất</a>
            <a href="../Page/IndexLogined.aspx">Quay lại Home</a>
        </div>
    </div>

    <div class="admin-logo"><img src="images/rsz_admin-header.png"></div>

    <div class="main">

    </div>

    </form>
</body>
</html>
