using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox1.Attributes.Add("placeholder", "  Username");
        TextBox2.Attributes.Add("placeholder", "  Password");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string connection = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + Server.MapPath("budget.accdb") + ";Persist Security Info=True";
        OleDbConnection cn = new OleDbConnection(connection);
        OleDbDataAdapter da = new OleDbDataAdapter("Select * from User_info where USERID='"+TextBox1.Text.ToLower()+"'and Password='"+TextBox2.Text+"';", cn);
        DataSet ds = new DataSet();
        da.Fill(ds);
        int i = ds.Tables[0].Rows.Count;
        if (i == 1) {
            Label1.Text = "";
            Session["userid"] = TextBox1.Text;
            String timeStamp = DateTime.Now.ToString("yyyyMMddHHmmssffff");
            OleDbCommand command1 = new OleDbCommand("insert into login_log values('" + TextBox1.Text.ToLower() + "','" +timeStamp +"');"); 
            cn.Open();
            command1.Connection = cn;
            command1.ExecuteNonQuery();
            Response.Redirect("budgetForms.aspx");
        } else {
            Label1.Text = "Incorrect Credentials!!!";
            Response.Write("Fail");
        }
        
    }
}