<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/MasterPage2.master" AutoEventWireup="true" CodeFile="DangKy.aspx.cs" Inherits="Page_DangKy" %>

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
    <form method="post">
    <table style="width: 600px; margin: 0px auto; margin-top: 5px; font-size: 16px; border: 1px solid #ccc; box-shadow: 0px 5px 10px 10px #d7d7d7;">
        <tr>
            <td colspan="2">
                <h2 style="text-align: center;margin-bottom: 0px" class="title">Đăng ký</h2>
            </td>
        </tr>

        <tr>
            <td class="tdDK">Tên đăng nhập</td>
            <td>
                <asp:TextBox CssClass="tdrDK" ID="txtTenDNDangKy" autofocus="autofocus" runat="server" ValidationGroup="DKTKM"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtTenDNDangKy" ErrorMessage="Vui lòng nhập tên đăng nhập!" ValidationGroup="DKTKM" ForeColor="Red">Vui lòng nhập tên đăng nhập!</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="tdDK">Mật khẩu</td>
            <td>
                <asp:TextBox ID="txtMatKhauDangKy" runat="server" CssClass="tdrDK" TextMode="Password" ValidationGroup="DKTKM"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtMatKhauDangKy" ErrorMessage="Vui lòng nhập mật khẩu!" ValidationGroup="DKTKM" ForeColor="Red">Vui lòng nhập mật khẩu!</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="tdDK">Nhập lại mật khẩu</td>
            <td>
                <asp:TextBox ID="txtNhapLaiMkDangKy" runat="server" CssClass="tdrDK" TextMode="Password" ValidationGroup="DKTKM"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtMatKhauDangKy" ControlToValidate="txtNhapLaiMkDangKy" ErrorMessage="Mật khẩu không trùng khớp!" ValidationGroup="DKTKM" ForeColor="Red">Mật khẩu không trùng khớp!</asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="tdDK">Họ và Tên</td>
            <td>
                <asp:TextBox CssClass="tdrDK" ID="txtHoTenDangKy" runat="server" ValidationGroup="DKTKM"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtHoTenDangKy" ErrorMessage="Vui lòng nhập họ và tên!" ValidationGroup="DKTKM" ForeColor="Red">Vui lòng nhập họ và tên!</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="tdDK">Số điện thoại</td>
            <td>
                <asp:TextBox CssClass="tdrDK" ID="txtSoDTDangKy" runat="server" ValidationGroup="DKTKM"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtSoDTDangKy" ErrorMessage="Vui lòng nhập số điện thoại!" ValidationGroup="DKTKM" ForeColor="Red">Vui lòng nhập số điện thoại!</asp:RequiredFieldValidator>
            </td>
        </tr>
                <tr>
            <td class="tdDK">Địa chỉ</td>
            <td>
                <asp:TextBox CssClass="tdrDK" ID="txtDiaChi" runat="server" ValidationGroup="DKTKM"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="tdDK">Email</td>
            <td>
                <asp:TextBox CssClass="tdrDK" ID="txtEmailDangKy" runat="server" ValidationGroup="DKTKM"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmailDangKy" ErrorMessage="Email bạn nhập không đúng!" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="DKTKM" ForeColor="Red">Email bạn nhập không đúng!</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align:center;padding-top:20px">
                <asp:Button CssClass="btDNDK" ID="tbDangKy" runat="server" Text="Đăng ký" ValidationGroup="DKTKM" OnClick="tbDangKy_Click" />
                <span style="padding-left:35px"><input class="btDNDK" type="reset" style="cursor:pointer" value="Nhập lại"/></span>

            </td>
        </tr>
    </table>
    </form>
    
    </asp:Content>

