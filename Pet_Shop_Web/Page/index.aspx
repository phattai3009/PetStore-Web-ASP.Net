<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/MasterPage.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="Page_index" %>
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
    <h1 class="title-background"><span class="title">Thú Cưng mới</span> </h1>
    <hr />
    <div>
    <asp:DataList ID="DataListCTSP" runat="server" RepeatColumns="4" RepeatDirection="Horizontal" Width="1140px" style="padding-left:10px">
        <ItemTemplate>
            <table class="tdSP" style="width:285px;">
                <tr>
                    <td style="text-align:center;">
                        <asp:Image ID="Image1" runat="server" Height="114px" ImageUrl='<%#"~/images/" + Eval("DuongDan") %>' Width="99px" />
                    </td>
                </tr>
                <tr>
                    <td style="text-align:center;"><span style="color:red;font-weight:bold">Mã Thú Cưng: </span>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("MaTC") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="text-align:center;"><span style="color:red;font-weight:bold">Tên Giống: </span>
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("TenGiong") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="text-align:center;"><span style="color:red;font-weight:bold">Giá : </span>
                        <asp:Label ID="Label4" runat="server" Font-Bold="true" Text='<%# Eval("DONGIA") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="text-align:center;">
                        <asp:Button CssClass="btnmain" ID="Button2" runat="server" PostBackUrl='<%# "~/Page/ChiTietSanPham.aspx?matc="+Eval("MaTC") %>' Text="Chi tiết" Width="150px" />
                    </td>
                </tr>
                <tr>
                    <td style="text-align:center;">
                        <asp:Button CssClass="btnmain" ID="Button1" runat="server" CommandArgument='<%# Eval("MaTC") %>' CommandName="chonmua" Text="Thêm Vào Giỏ" Width="150px"/>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
    </div>
    <div class="clear">
    </div>
</asp:Content>

