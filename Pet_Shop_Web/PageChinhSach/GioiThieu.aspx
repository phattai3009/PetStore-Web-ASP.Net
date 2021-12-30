<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/MasterPage.master" AutoEventWireup="true" CodeFile="GioiThieu.aspx.cs" Inherits="GioiThieu" %>

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
        <div>
            <p style="text-align: center;"><strong><span style="font-size: 20px; color: #ff0000;">PetShop - Nơi mua sắm cho chó mèo, thú cưng</span><br><br></strong></p>
            <p>Rất nhiều nghiên cứu đã chỉ ra rằng: Những người nuôi thú cưng thường khỏe mạnh, chu đáo và hướng ngoại so với những người khác. Đó là lý do mà rất nhiều gia đình hiện nay đều nuôi một vài thú cưng để giúp không khí gia đình trở nên ấm cúng và vui nhộn hơn. Tuy nhiên, việc chọn được địa điểm mua đồ dùng, quần áo, thức ăn.. cho thú cưng, chó mèo ở đâu vừa đảm bảo chất lượng mà giá cả hợp lý thì không phải dễ dàng.</p>
            <p>Đáp ứng nhu cầu này, PetShop ra đời với sứ mệnh cung cấp tất cả các sản phẩm trọn gói dành cho thú cưng, chó mèo: thức ăn, quần áo, đồ dùng, thức ăn dinh dưỡng, đồ chơi, mỹ phẩm, nhà lồng chuồng nệm và linh phụ kiện khác…</p>
            <p>Sứ mệnh của PetShop là phục vụ cho thú cưng của bạn luôn khỏe mạnh và đáng yêu, khiến cho khách hàng thật sự hài lòng với chất lượng sản phẩm và dịch vụ.</p>
            <p><span style="color: #ff0000; font-size: 20px;"><strong>1. Các đặc điểm nổi bật của PetShop</strong></span></p>
            <p>- PetShop là nơi hội tụ các sản phẩm cho chó mèo</p>
            <p>- Mẫu mã và chủng loại hàng hóa đa dạng, chất lượng đảm bảo an toàn</p>
            <p>- Dịch vụ chăm sóc khách hàng vượt trội: tư vấn sử dụng sản phẩm; tư vấn chọn mua hàng; giao hàng miễn phí; đổi - trả hàng trong 30 ngày</p>
            <p>- Các chương trình khuyến mãi, ưu đãi dành cho khách hàng diễn ra thường xuyên</p><br>
            <p><span style="color: #ff0000; font-size: 20px;"><strong>2. Đội ngũ chuyên môn của PetShop</strong></span></p>
            <p>Nhiều năm có mặt trên thị trường, PetShop được biết đến là địa chỉ uy tín và chuyên nghiệp hàng đầu dành cho thú cưng. Mỗi nhân viên của PetShop đều là một người nuôi thú cưng sành sỏi, là một chuyên gia trong lĩnh vực chăm sóc thú cưng. Với đội ngũ bán hàng trẻ và đầy nhiệt huyết, khách hàng khi đến PetShop chắc chắn sẽ vô cùng hài lòng về chất lượng mặt hàng cũng như chất lượng dịch vụ tại đây.</p>
            <p>Hãy liên hệ ngay với PetShop để được tư vấn những món đồ phù hợp nhất với thú cưng của bạn!</p>
            <ul>
            <li>250/3 Lý Chính Thắng, Quận 3</li>
            <li>Tel: (028) xxxx xxxx</li>
            <li>E-mail: petshop@gmail.com</li>
            </ul>
        </div>
        <div class="clear"></div>
</asp:Content>

