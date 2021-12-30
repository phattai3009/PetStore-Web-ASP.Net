<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/MasterPage.master" AutoEventWireup="true" CodeFile="ChiTietSanPham.aspx.cs" Inherits="Page_ChiTietThuCung" %>

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
    <center>
    <div style="box-shadow: 0px 5px 10px 10px #d7d7d7;">
    <asp:DataList ID="DataListCTSP" runat="server" OnItemCommand="DataListCTSP_ItemCommand">
        <ItemTemplate >
            <table style="width:1000px;text-align:center;font-size:14px" align="center">
                <tr>
                    <td class="auto-style3">
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%#"~/images/" + Eval("DUONGDAN") %>' Width="150px" Height="150px"/>
                    </td>
                    <td rowspan="1" style="text-align:justify;padding-left:10px;padding-top:0px">
                        <p style="color:red;font-weight:bold">
                            Mô tả sản phẩm :</p>
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("MOTA") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label1" runat="server" Font-Bold="true" Text='<%# Eval("TENGIONG") %>'></asp:Label>
                    </td>
                    <td style="float:left;padding-left:10px;">
                        <asp:Button CssClass="btnmain" ID="Button1" runat="server" CommandArgument='<%# Eval("MATC") %>' CommandName="chonmua" Text="Thêm  vào giỏ hàng" Width="150px"/>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3"><span style="color:red;font-weight:bold">Giá : </span>
                        <asp:Label ID="Label2" runat="server" Font-Bold="true" Text='<%# Eval("DONGIA")%>'></asp:Label>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
    </div>
    </center>
</asp:Content>

