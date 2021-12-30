using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Collections;

public partial class Page_index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            String conStr = "Data Source=PHATTAI\\PHATTAI; Initial Catalog =QLTC; User ID=sa; Password=123";
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
}