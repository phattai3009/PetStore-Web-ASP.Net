using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Page_TaiKhoan : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string tenDN = Session["tenDN"].ToString();
            string conStr = "Data Source=PHATTAI\\PHATTAI; Initial Catalog =QLTC; User ID=sa; Password=123";
            using (SqlConnection con = new SqlConnection(conStr))
            {
                String cmdStr = "SELECT * FROM TAIKHOAN WHERE TENDN='" + tenDN + "'";
                SqlCommand cmd = new SqlCommand(cmdStr, con);
                con.Open();
                FormView1.DataSource = cmd.ExecuteReader();
                FormView1.DataBind();
                con.Close();
            }
        }
    }
    protected void btnChinhSuaTT_Click(object sender, EventArgs e)
    {
        string maKhau = ((TextBox)FormView1.FindControl("TextBox1")).Text;
        string hoTen = ((TextBox)FormView1.FindControl("TextBox2")).Text;
        string email = ((TextBox)FormView1.FindControl("TextBox3")).Text;
        string soDT = ((TextBox)FormView1.FindControl("TextBox4")).Text;
        string diaChi = ((TextBox)FormView1.FindControl("TextBox5")).Text;
        String conStr = "Data Source=PHATTAI\\PHATTAI; Initial Catalog =QLTC; User ID=sa; Password=123";
        SqlConnection con = new SqlConnection(conStr);
        string tenDN = Session["tenDN"].ToString();
        con.Open();
        string cmdStr = "UPDATE TAIKHOAN SET MATKHAU = '" + maKhau + "',HOTEN = N'" + hoTen + "',EMAIL ='" + email + "',SODT='" + soDT + "',DIACHI=N'" + soDT + "' WHERE TENDN='" + tenDN + "'";
        SqlCommand cmd = new SqlCommand(cmdStr, con);
        int n = cmd.ExecuteNonQuery();
        if (n == 1)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Chỉnh sửa thông tin thành công!')</script>");
        }
    }
}