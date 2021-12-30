<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/MasterPage.master" AutoEventWireup="true" CodeFile="ThuCungKhac.aspx.cs" Inherits="Page_ThuCungKhac" %>

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
            <h1 class="title-background"><span class="title">Thú cưng: Chim</span> <a class="xemtatca" href="Chim.aspx"><span>Xem tất cả→</span></a> </h1>
            <hr />
            <div id="chim">
                <asp:DataList ID="DL_Chim" runat="server" RepeatColumns="4" RepeatDirection="Horizontal" Width="1140px" OnItemCommand="DL_Chim_ItemCommand">
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
                                    <asp:Button CssClass="btnmain" ID="Button1" runat="server" CommandArgument='<%# Eval("MaTC") %>' CommandName="chonmua" Text="Thêm Vào Giỏ" Width="150px" OnClick="Button1_Click" />
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
            </div>
            <h1 class="title-background"><span class="title">Thú cưng: cá</span> <a class="xemtatca" href="Ca.aspx"><span>Xem tất cả→</span></a> </h1>
            <hr />
            <div id="ca">
                <asp:DataList ID="DL_Ca" runat="server" RepeatColumns="4" RepeatDirection="Horizontal" Width="1140px" OnItemCommand="DL_Ca_ItemCommand">
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
                                    <asp:Button CssClass="btnmain" ID="Button1" runat="server" CommandArgument='<%# Eval("MaTC") %>' CommandName="chonmua" Text="Thêm Vào Giỏ" Width="150px" OnClick="Button1_Click" />
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
            </div>

            <h1 class="title-background"><span class="title">Thú cưng: hamster</span> <a class="xemtatca" href="Hamster.aspx"><span>Xem tất cả→</span></a> </h1>
            <hr />
            <div id="hamster">
                <asp:DataList ID="DL_Hamster" runat="server" RepeatColumns="4" RepeatDirection="Horizontal" Width="1140px" OnItemCommand="DL_Hamster_ItemCommand">
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
                                    <asp:Button CssClass="btnmain" ID="Button1" runat="server" CommandArgument='<%# Eval("MaTC") %>' CommandName="chonmua" Text="Thêm Vào Giỏ" Width="150px" OnClick="Button1_Click" />
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
            </div>
</asp:Content>

