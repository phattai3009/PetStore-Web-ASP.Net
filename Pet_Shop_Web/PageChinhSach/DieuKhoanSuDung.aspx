﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/MasterPage.master" AutoEventWireup="true" CodeFile="DieuKhoanSuDung.aspx.cs" Inherits="DieuKhoanSuDung" %>

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
            <p><span style="color: #3366ff;"><strong>Điều khoản sử dụng tại PetShop</strong></span></p>
            <p>Chào mừng bạn đến mua sắm tại PetShop. Sau khi truy cập vào PetShop để tham khảo hoặc mua sắm, bạn đã đồng ý tuân thủ và ràng buộc với những quy định dưới đây. Rất mong bạn xem kỹ các quy định và hợp tác với chúng tôi để xây dựng một trung tâm mua sắm thân thiện, phục vụ tốt nhất nhu cầu của chính bạn. Nếu có bất cứ câu hỏi nào về những điều khoản dưới đây, vui lòng email cho chúng tôi qua địa chỉ <strong><a href="mailto:cskh@petshop.com">cskh@petshop.com</a></strong></p>
            <p><span style="color: #3366ff;"><strong>Tài khoản của bạn</strong></span></p>
            <p>Khi mua hàng tại PetShop, bạn sẽ được đề nghị đăng ký tài khoản nhằm giúp chúng tôi xử lý đơn hàng và yêu cầu của bạn một cách chính xác. Bên cạnh đó, khi đăng ký tài khoản tại PetShop, bạn sẽ được cung cấp các thông tin khuyến mãi và hưởng nhiều quyền lợi khác dành cho người dùng của PetShop</p>
            <p>Để đăng ký tài khoản PetShop, bạn cần cung cấp cho chúng tôi thông tin về địa chỉ email, mật khẩu, họ tên và thông tin liên lạc. Việc sử dụng và bảo mật thông tin tài khoản là trách nhiệm và quyền lợi của bạn khi sử dụng PetShop. Trong trường hợp thông tin do bạn cung cấp không đầy đủ hoặc sai dẫn đến việc không thể giao hàng cho bạn, chúng tôi có quyền đình chỉ hoặc từ chối phục vụ. Khi có những thay đổi thông tin của bạn, vui lòng cập nhật lại thông tin trong tài khoản. Bạn phải bảo mật mật khẩu và tài khoản, hoàn toàn chịu trách nhiệm đối với tất cả các hoạt động diễn ra thông qua việc sử dụng mật khẩu hoặc tài khoản của mình</p>
            <p><span style="color: #3366ff;"><strong>Một số lưu ý:</strong></span></p>
            <p>Tên đăng nhập được xác định là của riêng cá nhân thành viên. Thành viên có trách nhiệm cập nhật thông tin cá nhân. Không chọn tên đăng nhập đại diện cho một tập thể, hội, nhóm.</p>
            <p>Không chọn tên đăng nhập liên quan đến chính trị và tôn giáo, dưới bất cứ hình thức nào. Không đặt tên đăng nhập là tên các chính trị gia, các danh nhân Việt Nam.</p>
            <p>Không chọn tên đăng nhập gây phản cảm, trái với thuần phong mỹ tục Việt Nam.</p>
            <p>Không dùng tên đăng nhập để chỉ trích, bôi bác, phản đối hay tẩy chay bất kỳ sản phẩm, cá nhân hay tổ chức nào.</p>
            <p>Không chọn tên đăng nhập giống hay gần giống với Ban Quản trị PetShop, ví dụ như: petshopxyz, Adminxyz, Modxyz,…</p>
            <p><span style="color: #3366ff;"><strong>Quyền lợi bảo mật thông tin của bạn</strong></span></p>
            <p>Khi sử dụng dịch vụ tại website PetShop, bạn được đảm bảo rằng những thông tin cung cấp cho chúng tôi sẽ chỉ được dùng để nâng cao chất lượng dịch vụ dành cho khách hàng của PetShop và sẽ không được chuyển giao cho bên thứ ba nào khác vì mục đích thương mại. Chỉ trong trường hợp pháp luật yêu cầu, chúng tôi sẽ buộc phải cung cấp những thông tin này cho các cơ quan chứng năng.</p>
            <p><span style=" color: #3366ff;"><strong>Trách nhiệm của bạn khi sử dụng dịch vụ của PetShop</strong></span></p>
            <p>Bạn tuyệt đối không được sử dụng bất kỳ công cụ, phương pháp nào để can thiệp, xâm nhập bất hợp pháp vào hệ thống hay làm thay đổi cấu trúc dữ liệu tại trang web PetShop. Bạn không được có những hành động, thực hiện, cổ vũ, can thiệp, xâm nhập dữ liệu của PetShop cũng như hệ thống máy chủ của chúng tôi. Ngoài ra, xin vui lòng thông báo cho Ban Quản Trị website ngay khi bạn phát hiện ra lỗi hệ thống theo số điện thoại <strong>(028) xxxx xxxx</strong> hoặc email <strong><a href="mailto:cskh@petshop.com">cskh@petshop.com</a></strong><br><br>
            Tuyệt đối cấm mọi hành vi mạo nhận, cố ý tạo sự nhầm lẫn mình là một khách hàng khác hoặc là thành viên Ban Quản Trị PetShop.</p>
            <p><span style="color: #3366ff;"><strong>Trách nhiệm và quyền lợi của PetShop</strong></span></p>
            <p>Trong trường hợp có những phát sinh ngoài ý muốn hoặc các trường hợp bất khả kháng, PetShop sẽ không chịu trách nhiệm về mọi tổn thất phát sinh. Ngoài ra, chúng tôi không cho phép các tổ chức, cá nhân khác quảng bá sản phẩm tại trang web PetShop mà chưa có sự đồng ý bằng văn bản từ PetShop. Các thỏa thuận và quy định trong Điều khoản sử dụng có thể thay đổi vào bất cứ lúc nào nhưng sẽ được Ban Quản Trị thông báo cụ thể trên trang web PetShop.</p>
        </div>
        <div class="clear"></div>
</asp:Content>

