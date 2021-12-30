<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/MasterPage.master" AutoEventWireup="true" CodeFile="TaiKhoan.aspx.cs" Inherits="Page_TaiKhoan" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <ul>
	    <li>
		    <asp:HyperLink ID="tabDangNhap" runat="server" NavigateUrl="~/Page/DangNhap.aspx"><i style="font-size:21px"></i> Đăng xuất</asp:HyperLink>
	    </li>
	    <li>
		    <asp:HyperLink ID="tabDangKy" runat="server" NavigateUrl="~/Page/TaiKhoan.aspx"><i style="font-size:21px"></i> Tài khoản</asp:HyperLink>
	    </li>
    </ul>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
    <div style="box-shadow:0px 5px 10px 10px #de8ede; Width:700px;">
        <h4 class="title">Thông tin tài khoản</h4>
        <asp:FormView ID="FormView1" runat="server" CellPadding="4" ForeColor="#333333" Width="600px">
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td>Tên đăng nhập</td>
                        <td style="padding-left:10px;">
                            <asp:Label ID="Label1" runat="server" Font-Bold="true" Width="200px" Text='<%# Eval("TENDN") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>Mật khẩu</td>
                        <td>
                            <asp:TextBox ID="TextBox1" runat="server" Width="250px" TextMode="Password" Text='<%# Eval("MATKHAU") %>'></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>Họ tên</td>
                        <td>
                            <asp:TextBox ID="TextBox2" runat="server" Width="250px" Text='<%# Eval("HOTEN") %>'></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>Email</td>
                        <td>
                            <asp:TextBox ID="TextBox3" runat="server" Width="250px" Text='<%# Eval("EMAIL") %>'></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>Số điện thoại</td>
                        <td>
                            <asp:TextBox ID="TextBox4" runat="server" Width="250px" Text='<%# Eval("SODT") %>'></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>Địa chỉ</td>
                        <td>
                            <asp:TextBox ID="TextBox5" runat="server" Width="250px" Text='<%# Eval("DIACHI") %>'></asp:TextBox>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />

        </asp:FormView>
        <asp:Button CssClass="btDNDK" ID="btnChinhSuaTT" runat="server" Text="Chỉnh sửa thông tin" OnClick="btnChinhSuaTT_Click" style="margin:10px"></asp:Button>
    </div>
    </center>
</asp:Content>

