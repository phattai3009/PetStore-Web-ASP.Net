<%@ Page Language="C#" AutoEventWireup="true" CodeFile="QuanLyDatHang.aspx.cs" Inherits="Admin_QuanLyDatHang" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="icon" href="../images/logo/petshop.ico">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
    <link href="css/Menu.css" rel="stylesheet" type="text/css" />
    <link href="css/main.css" rel="stylesheet" type="text/css" />
   
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
            <a href="QuanLySanPham.aspx" class="fas fa-box-open"></i> Quản lý sản phẩm</a>
            <a href="QuanLyUser.aspx"><i class="fa fa-users"></i> Quản lý user</a>
            <a href="QuanLyDatHang.aspx" class="current"><i class="fas fa-shipping-fast"></i> Quản lý đơn hàng</a>
            <a href="#" onClick="signout()"><i class="fas fa-power-off"></i> Đăng xuất</a>
            <a href="../Page/IndexLogined.aspx">Quay lại Home</a>
        </div>
    </div> 

    <div class="admin-logo"><img src="images/rsz_admin-header.png"></div>

    <div class="main">
        <h3 style="text-align:center;color:red; width: 1020px;">Các đơn hàng đã đặt.</h3>

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="MAHD" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="MAHD" HeaderText="Mã hóa đơn" InsertVisible="False" ReadOnly="True" SortExpression="MAHD" />
                <asp:BoundField DataField="NGAYLAP" HeaderText="Ngày đặt" SortExpression="NGAYLAP" />
                <asp:BoundField DataField="TENDN" HeaderText="Tài khoản" SortExpression="TENDN" />
                <asp:BoundField DataField="TONGTIEN" HeaderText="Tổng Tiền" SortExpression="TONGTIEN" />
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QLTCConnectionString %>" SelectCommand="SELECT * FROM [HOADON]"></asp:SqlDataSource>

        <h3 style="text-align:center;color:red; width:1020px">Chi tiết đơn đặt hàng.</h3>

        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
            <Columns>
                <asp:BoundField DataField="TENGIONG" HeaderText="Tên sách" />
                <asp:BoundField DataField="SOLUONG" HeaderText="Số lượng" />
                <asp:BoundField DataField="HOTEN" HeaderText="Họ Tên KH" />
                <asp:BoundField DataField="DIACHI" HeaderText="Địa chỉ" />
                <asp:BoundField DataField="SODT" HeaderText="Số điện thoại" />
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:QLTCConnectionString %>" SelectCommand="SELECT * FROM [CTHOADON]"></asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
