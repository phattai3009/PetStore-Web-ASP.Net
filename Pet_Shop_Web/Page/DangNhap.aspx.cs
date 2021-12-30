using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Page_DangNhap : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnDangNhap_Click(object sender, EventArgs e)
    {
        string tenDN = txtUserDangNhap.Text;
        string matKhau = txtPassworDangNhap.Text;
        string conStr = "Data Source=PHATTAI\\PHATTAI; Initial Catalog =QLTC; User ID=sa; Password=123";
        using (SqlConnection con = new SqlConnection(conStr))
        {
            String cmdStr = "SELECT COUNT(*) FROM TAIKHOAN WHERE TENDN = '" + tenDN + "' AND MATKHAU = '" + matKhau + "' AND QUYEN = 0";
            SqlCommand cmd = new SqlCommand(cmdStr, con);
            con.Open();
            int kt = (int)cmd.ExecuteScalar();
            if (kt == 1)
            {
                Session["tenDN"] = tenDN;
                Response.Redirect("~/Page/IndexLogined.aspx");
            }
            else
            {
                cmdStr = "SELECT COUNT(*) FROM TAIKHOAN WHERE TENDN = '" + tenDN + "' AND MATKHAU = '" + matKhau + "' AND QUYEN = 1";
                cmd = new SqlCommand(cmdStr, con);
                int check = (int)cmd.ExecuteScalar();
                if (check == 1)
                {
                    Response.Redirect("~/Admin/HomeAdmin.aspx");
                }
                else
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Tên đăng nhập hoặc mật khẩu không chính xác!')</script>");
                }
            }
        }
    }
}