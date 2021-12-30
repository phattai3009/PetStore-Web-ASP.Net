<%@ Page Language="C#" AutoEventWireup="true" CodeFile="QuanLySanPham.aspx.cs" Inherits="QuanLySanPham" %>

!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
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
            <a href="QuanLySanPham.aspx" class="current"><i class="fas fa-box-open"></i> Quản lý sản phẩm</a>
            <a href="QuanLyUser.aspx"><i class="fa fa-users"></i> Quản lý user</a>
            <a href="QuanLyDatHang.aspx"><i class="fas fa-shipping-fast"></i> Quản lý đơn hàng</a>
            <a href="#" onClick="signout()"><i class="fas fa-power-off"></i> Đăng xuất</a>
            <a href="../Page/IndexLogined.aspx">Quay lại Home</a>
        </div>
    </div>

    <div class="admin-logo"><img src="images/rsz_admin-header.png"></div>
    <div class="main">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="MATC" DataSourceID="SqlDataSource1" ShowFooter="True">
        <Columns>
            <asp:CommandField ShowSelectButton="True" ShowEditButton="true" ShowDeleteButton="true"/>
            <asp:TemplateField HeaderText="Mã Thú Cưng" SortExpression="MATC">
                <EditItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("MATC") %>'></asp:Label>
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:LinkButton ID="btnInsert" runat="server" OnClick="btnInsert_Click" >Insert</asp:LinkButton>
                </FooterTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("MATC") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Mã Loại" SortExpression="MALOAI">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("MALOAI") %>'></asp:TextBox>
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtMaLoai" runat="server"></asp:TextBox>
                </FooterTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("MALOAI") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Mã Giống" SortExpression="MAGIONG">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("MAGIONG") %>'></asp:TextBox>
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtMaGiong" runat="server"></asp:TextBox>
                </FooterTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("MAGIONG") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Đơn Giá" SortExpression="DONGIA">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("DONGIA") %>'></asp:TextBox>
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtGia" runat="server"></asp:TextBox>
                </FooterTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("DONGIA") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Số Lượng" SortExpression="TONKHO">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("TONKHO") %>'></asp:TextBox>
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtSoLuong" runat="server"></asp:TextBox>
                </FooterTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("TONKHO") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Hình Ảnh" SortExpression="DUONGDAN">
                <EditItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("MATC") %>'></asp:Label>
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:FileUpload ID="FileUploadAnh" runat="server" />
                </FooterTemplate>
                <ItemTemplate>
                    <asp:Image ID="Image1" Width="150px" runat="server" ImageUrl='<%#"~/images/" + Eval("DUONGDAN") %>' />
                </ItemTemplate>
            </asp:TemplateField>
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QLTCConnectionString %>" SelectCommand="SELECT * FROM [THUCUNG]"
    UpdateCommand="UPDATE THUCUNG SET MALOAI=@MALOAI,MAGIONG=@MAGIONG,DONGIA=@DONGIA,TONKHO=@TONKHO,DUONGDAN=@DUONGDAN WHERE MATC=@MATC"
    InsertCommand= "INSERT INTO THUCUNG(MALOAI,MAGIONG,DONGIA,TONKHO,DUONGDAN) VALUES(@MALOAI,@MAGIONG,@DONGIA,@TONKHO,@DUONGDAN)"
    DeleteCommand="DELETE FROM THUCUNG WHERE MATC = @MATC">
    <DeleteParameters>
                <asp:Parameter Name="MATC" Type="Int32"/>
            </DeleteParameters>

     <InsertParameters>
                <asp:Parameter Name="MALOAI" Type="String"/>
                <asp:Parameter Name="DUONGDAN" Type="String"/> 
                <asp:Parameter Name="DONGIA" Type="Double"/> 
                <asp:Parameter Name="TONKHO" Type="Int32"/> 
                <asp:Parameter Name="MAGIONG" Type="String"/> 
            </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="MALOAI" Type="String"/>
                <asp:Parameter Name="DUONGDAN" Type="String"/> 
                <asp:Parameter Name="DONGIA" Type="Double"/> 
                <asp:Parameter Name="TONKHO" Type="Int32"/> 
                <asp:Parameter Name="MAGIONG" Type="String"/> 
        <asp:Parameter Name="MATC" Type="Int32"/>
    </UpdateParameters>
    </asp:SqlDataSource>
    </div>	
    </form>
</body>
</html>

