using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class QuanLySanPham : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnInsert_Click(object sender, EventArgs e)
    {
        SqlDataSource1.InsertParameters["MALOAI"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtMaLoai")).Text;
        string duongDan = "" + ((FileUpload)GridView1.FooterRow.FindControl("FileUploadAnh")).FileName;
        ((FileUpload)GridView1.FooterRow.FindControl("FileUploadAnh")).SaveAs(Server.MapPath("~/images/" + ((FileUpload)GridView1.FooterRow.FindControl("FileUploadAnh")).FileName));
        SqlDataSource1.InsertParameters["DuongDan"].DefaultValue = duongDan;
        SqlDataSource1.InsertParameters["DONGIA"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtGia")).Text;
        SqlDataSource1.InsertParameters["TONKHO"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtSoLuong")).Text;
        SqlDataSource1.InsertParameters["MAGIONG"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtMaGiong")).Text;

        SqlDataSource1.Insert();
    }
}