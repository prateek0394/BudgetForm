using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.OleDb;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int thisyear = DateTime.Today.Year;
        Label1.Text = Convert.ToString(thisyear) + "-" + Convert.ToString(thisyear + 1);
        string con = ConfigurationManager.ConnectionStrings["BudgetString"].ConnectionString;
        OleDbConnection cn = new OleDbConnection(con);
        OleDbDataAdapter da = new OleDbDataAdapter("(select Div_Name as 'Divisions/Units/Departments' from Div_Details where not Div_Code in (select Div_Code from User_info where UserID in (select userid from revenue_expenditure)))", cn);
        DataSet ds = new DataSet();
        da.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
    }
}