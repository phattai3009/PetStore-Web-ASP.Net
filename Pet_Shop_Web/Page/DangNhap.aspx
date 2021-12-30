<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/MasterPage2.master" AutoEventWireup="true" CodeFile="DangNhap.aspx.cs" Inherits="Page_DangNhap" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <ul>
        <li>
	        <asp:HyperLink ID="tabDangNhap" runat="server" NavigateUrl="~/Page/DangNhap.aspx"><i style="font-size:21px"></i> Đăng nhập</asp:HyperLink>
        </li>
        <li>
	        <asp:HyperLink ID="tabDangKy" runat="server" NavigateUrl="~/Page/DangKy.aspx"><i style="font-size:21px"></i> Đăng ký</asp:HyperLink>
        </li>
    </ul>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
        <table style="width:600px; margin: 0px auto; margin-top: 5px; font-size: 16px; border: 1px solid #ccc; box-shadow: 0px 5px 10px 10px #d7d7d7;">
            <tr>
                <td colspan="2">
                    <h2 style="text-align:center" class="title">Đăng nhập</h2>
                </td>
            </tr>
            <tr>
                <%--<td><i id="user" class="fa fa-user-circle-o"></i></td>--%>
                <td colspan="2" align="center">
                    <asp:TextBox ID="txtUserDangNhap" runat="server" CssClass="txtDK" placeholder="Tên đăng nhập" TextMode="SingleLine" ValidationGroup="DNTK"></asp:TextBox>
                </td>
            </tr>
            <tr>
<%--                <td><i id="password" class="fa fa-lock"></i></td>--%>
                <td colspan="2" align="center">
                    <asp:TextBox ID="txtPassworDangNhap" runat="server" CssClass="txtPassword" placeholder="Mật khẩu" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
<%--                <td></td>--%>
                <td colspan="2" align="center">
                    <asp:Button ID="btnDangNhap" runat="server" CssClass="btDN" Text="Đăng nhập" ValidationGroup="DNTK" OnClick="btnDangNhap_Click" />
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <asp:HyperLink ID="idQuenMatKhau" runat="server">Quên mật khẩu?</asp:HyperLink>
                    <asp:HyperLink ID="idDangKy" runat="server" NavigateUrl="~/Page/DangKy.aspx">Đăng ký</asp:HyperLink>
                </td>
            </tr>
        </table>
    </center>
    
</asp:Content>

