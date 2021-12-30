using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Collections;

public partial class Page_IndexLogined : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string conStr = "Data Source=PHATTAI\\PHATTAI; Initial Catalog =QLTC; User ID=sa; Password=123";
            using (SqlConnection con = new SqlConnection(conStr))
            {
                String cmdStr = "SELECT * FROM THUCUNG, GIONG WHERE THUCUNG.MAGIONG = GIONG.MAGIONG";
                SqlCommand cmd = new SqlCommand(cmdStr, con);
                con.Open();
                DataListCTSP.DataSource = cmd.ExecuteReader();
                DataListCTSP.DataBind();

                con.Close();
            }
        }
    }
    protected void Page_Init(object sender, EventArgs e)
    {
        Master.buttonSearch.Click += buttonSearch_Click;
    }
    void buttonSearch_Click(object sender, ImageClickEventArgs e)
    {
        string conStr = "Data Source=PHATTAI\\PHATTAI; Initial Catalog =QLTC; User ID=sa; Password=123";
        using (SqlConnection con = new SqlConnection(conStr))
        {
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "SELECT * FROM THUCUNG, GIONG WHERE THUCUNG.MAGIONG = GIONG.MAGIONG AND TENGIONG LIKE '%' + @search + '%'";
            cmd.Connection = con;

            SqlParameter Par = new SqlParameter("@search", Master.textBoxSearch.Text);
            cmd.Parameters.Add(Par);

            con.Open();
            DataListCTSP.DataSource = cmd.ExecuteReader();
            DataListCTSP.DataBind();
            con.Close();
        }
    }
    protected void DataListCTSP_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "chonmua")
        {
            ArrayList gioCu = (ArrayList)Session["GioHang"];
            Label gia = (Label)e.Item.FindControl("Label4");
            int dg = Convert.ToInt32(gia.Text);
            Session["SoTien"] = (int)Session["SoTien"] + dg;

            GioHang hangMoi = new GioHang();
            hangMoi.MaTC = int.Parse(e.CommandArgument.ToString());
            hangMoi.TenGiong = ((Label)e.Item.FindControl("Label2")).Text;
            hangMoi.DonGia = dg;
            hangMoi.SoLuong = 1;
            int n = ktHangTonTai(hangMoi.MaTC);
            if (n == -1)
            {
                gioCu.Add(hangMoi);
            }
            else
            {
                GioHang nhapHang = (GioHang)gioCu[n];
                nhapHang.SoLuong = nhapHang.SoLuong + 1;

            }
            Session["GioHang"] = gioCu;
            Response.Redirect(Request.RawUrl);
        }
    }
    public int ktHangTonTai(int ms)
    {
        ArrayList gioCu = (ArrayList)Session["GioHang"];
        for (int i = 0; i < gioCu.Count; i++)
        {
            GioHang gh = (GioHang)gioCu[i];
            if (gh.MaTC == ms)
                return i;
        }
        return -1;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Đã thêm vào giỏ hàng!')</script>");
    }
}