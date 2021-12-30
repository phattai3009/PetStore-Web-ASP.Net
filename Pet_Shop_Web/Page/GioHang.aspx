<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/MasterPage.master" AutoEventWireup="true" CodeFile="GioHang.aspx.cs" Inherits="Page_GioHang" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <ul>
	    <li>
		    <asp:HyperLink ID="tabDangNhap" runat="server" NavigateUrl="~/Page/DangNhap.aspx"><i style="font-size:21px"></i> Đăng xuất</asp:HyperLink>
	    </li>
	    <li>
		    <asp:HyperLink ID="tabDangKy" runat="server" NavigateUrl="~/Page/TaiKhoan.aspx"><i style="font-size:21px"></i> Tài khoản</asp:HyperLink>
	    </li>
    </ul>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h3 style="text-align:center;color:red">Thông tin giỏ hàng</h3>
    <center>
        <div style="box-shadow: 0px 5px 10px 10px #d7d7d7; width:900px; text-align:center">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" ShowFooter="True" CellPadding="4" ForeColor="#333333" GridLines="None" OnRowCancelingEdit="GridView1_CancelingEdit" OnRowEditing="GridView1_RowEditing" OnRowDeleting="GridView1_RowDeleting" OnRowUpdating="GridView1_RowUpdating" width="900px">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField HeaderText="Mã Thú Cưng" DataField="MATC" ReadOnly="True" />
                <asp:BoundField HeaderText="Tên Giống" DataField="TENGIONG" ReadOnly="True" />
                <asp:BoundField HeaderText="Đơn giá" DataField="DonGia" ReadOnly="True" />
                <asp:BoundField HeaderText="Số lượng" DataField="SoLuong" />
                <asp:BoundField HeaderText="Thành tiền" DataField="ThanhTien" ReadOnly="True" />
                <asp:CommandField ShowEditButton="True"/>
                <asp:CommandField ShowDeleteButton="True" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />

        </asp:GridView>
        </div>
        <br />
        <asp:Button CssClass="btDNDK" ID="btnMuaTiep" runat="server" Text="Mua tiếp" Height="35px" Width="100px" OnClick="btnMuaTiep_Click"></asp:Button>
        <span style="padding-left:35px"><asp:Button CssClass="btDNDK" ID="btnDatHang" runat="server" Text="Đặt hàng" Height="35px" Width="100px" OnClick="btnDatHang_Click"></asp:Button></span>
    </center>
</asp:Content>

