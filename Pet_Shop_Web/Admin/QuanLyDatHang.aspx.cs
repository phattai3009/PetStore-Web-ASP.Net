using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Admin_QuanLyDatHang : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string conStr = "Data Source=PHATTAI\\PHATTAI; Initial Catalog =QLTC; User ID=sa; Password=123";
            using (SqlConnection con = new SqlConnection(conStr))
            {
                String cmdStr = "SELECT TENGIONG,SOLUONG,HOTEN,DIACHI,SODT FROM HOADON HD, CTHOADON CT, THUCUNG TC, GIONG G, TAIKHOAN TK WHERE HD.MAHD = CT.MAHD AND CT.MATC = TC.MATC AND TC.MAGIONG = G.MAGIONG AND HD.TENDN = TK.TENDN";
                SqlCommand cmd = new SqlCommand(cmdStr, con);
                con.Open();
                GridView2.DataSource = cmd.ExecuteReader();
                GridView2.DataBind();
                con.Close();
            }
        }
    }
}