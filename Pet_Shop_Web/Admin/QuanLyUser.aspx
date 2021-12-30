<%@ Page Language="C#" AutoEventWireup="true" CodeFile="QuanLyUser.aspx.cs" Inherits="Admin_QuanLyUser" %>

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
            <a href="QuanLySanPham.aspx" <i class="fas fa-box-open"></i> Quản lý sản phẩm</a>
            <a href="QuanLyUser.aspx"class="current"><i class="fa fa-users"></i> Quản lý user</a>
            <a href="QuanLyDatHang.aspx"><i class="fas fa-shipping-fast"></i> Quản lý đơn hàng</a>
            <a href="#" onClick="signout()"><i class="fas fa-power-off"></i> Đăng xuất</a>
            <a href="../Page/IndexLogined.aspx">Quay lại Home</a>
        </div>
    </div>

    <div class="admin-logo"><img src="images/rsz_admin-header.png"></div>

    <div class="main">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="TENDN" DataSourceID="SqlDataSource2" CellPadding="4" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px">
            <Columns>
                <asp:CommandField ShowSelectButton="True" ShowEditButton="true" ShowDeleteButton="true" />
                <asp:BoundField DataField="TENDN" HeaderText="Tài Khoản" ReadOnly="True" SortExpression="TENDN" />
                <asp:BoundField DataField="MATKHAU" HeaderText="Mật Khẩu" SortExpression="MATKHAU" />
                <asp:BoundField DataField="HOTEN" HeaderText="Họ Tên" SortExpression="HOTEN" />
                <asp:BoundField DataField="EMAIL" HeaderText="Email" SortExpression="EMAIL" />
                <asp:BoundField DataField="SODT" HeaderText="Số Điện Thoại" SortExpression="SODT" />
                <asp:BoundField DataField="DIACHI" HeaderText="Địa Chỉ" SortExpression="DIACHI" />
                <asp:CheckBoxField DataField="QUYEN" HeaderText="Quyền Admin" SortExpression="QUYEN" />
            </Columns>
            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
            <RowStyle BackColor="White" ForeColor="#003399" />
            <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <SortedAscendingCellStyle BackColor="#EDF6F6" />
            <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
            <SortedDescendingCellStyle BackColor="#D6DFDF" />
            <SortedDescendingHeaderStyle BackColor="#002876" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:QLTCConnectionString %>" SelectCommand="SELECT * FROM [TAIKHOAN]"
            UpdateCommand="UPDATE TAIKHOAN SET MATKHAU=@MATKHAU,HOTEN=@HOTEN,EMAIL=@EMAIL,SODT=@SODT, DIACHI=@DIACHI, QUYEN=@QUYEN WHERE TENDN=@TENDN"
            InsertCommand= "INSERT INTO TAIKHOAN(TENDN,MATKHAU,HOTEN,EMAIL,SODT,DIACHI,QUYEN) VALUES(@TENDN,@MATKHAU,@HOTEN,@EMAIL,@SODT,@DIACHI,@QUYEN)"
            DeleteCommand="DELETE FROM TAIKHOAN WHERE TENDN = @TENDN">
            <DeleteParameters>
                        <asp:Parameter Name="TENDN" Type="String"/>
                    </DeleteParameters>
             <InsertParameters>
                        <asp:Parameter Name="MATKHAU" Type="String"/>
                        <asp:Parameter Name="HOTEN" Type="String"/> 
                        <asp:Parameter Name="EMAIL" Type="String"/> 
                        <asp:Parameter Name="SODT" Type="String"/> 
                        <asp:Parameter Name="DIACHI" Type="String"/>
                        <asp:Parameter Name="QUYEN" Type="Int32"/> 
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="TENDN" Type="String"/>
                <asp:Parameter Name="MATKHAU" Type="String"/>
                <asp:Parameter Name="HOTEN" Type="String"/> 
                <asp:Parameter Name="EMAIL" Type="String"/> 
                <asp:Parameter Name="SODT" Type="String"/> 
                <asp:Parameter Name="DIACHI" Type="String"/> 
                <asp:Parameter Name="QUYEN" Type="Int32"/> 
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
