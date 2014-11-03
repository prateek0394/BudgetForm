using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.OleDb;
using System.Data;

public partial class Admin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
        int year = DateTime.Today.Year;
        int j = 2014;
        for (;j <= year;j++)
        {
            DropDownList1.Items.Insert(j - 2013, new ListItem(Convert.ToString(j) + "-" + Convert.ToString(j + 1), Convert.ToString(j) + "-" + Convert.ToString(j + 1)));    //();

        }
        string con=ConfigurationManager.ConnectionStrings["BudgetString"].ConnectionString;
        OleDbConnection cn = new OleDbConnection(con);
        OleDbDataAdapter da = new OleDbDataAdapter("Select * from Div_Details;", cn);
        DataSet ds = new DataSet();
        da.Fill(ds);
        int x = 0;
        for (x = 0; x < ds.Tables[0].Rows.Count; x++) {
            DropDownList2.Items.Insert(x+1, new ListItem(ds.Tables[0].Rows[x][2].ToString(), ds.Tables[0].Rows[x][1].ToString()));
        }
        }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedIndex != 0 && DropDownList2.SelectedIndex != 0)
        {
            string con = ConfigurationManager.ConnectionStrings["BudgetString"].ConnectionString;
            OleDbConnection cn = new OleDbConnection(con);
            OleDbDataAdapter da = new OleDbDataAdapter("Select * from revenue_expenditure where budget_year='" + DropDownList1.SelectedValue + "' and userid=(select UserID from User_info where Div_code='" + DropDownList2.SelectedValue + "');", cn);
            DataSet ds = new DataSet();
            da.Fill(ds);
            Label1.Text = DateTime.Today.ToShortDateString();
            Label2.Text = DropDownList2.SelectedItem.Text;
            Label3.Text = DropDownList1.SelectedValue;
            Label4.Text = ds.Tables[0].Rows[0][2].ToString();
            Label5.Text = ds.Tables[0].Rows[0][3].ToString();
            Label6.Text = ds.Tables[0].Rows[0][4].ToString();
            Label7.Text = ds.Tables[0].Rows[0][5].ToString();
            Label8.Text = ds.Tables[0].Rows[0][6].ToString();
            Label9.Text = ds.Tables[0].Rows[0][7].ToString();
            Label10.Text = (Convert.ToDecimal(ds.Tables[0].Rows[0][2]) + Convert.ToDecimal(ds.Tables[0].Rows[0][4]) + Convert.ToDecimal(ds.Tables[0].Rows[0][6])).ToString();
            Label11.Text = ds.Tables[0].Rows[0][8].ToString();
            Label12.Text = ds.Tables[0].Rows[0][9].ToString();
            Label13.Text = ds.Tables[0].Rows[0][10].ToString();
            Label14.Text = ds.Tables[0].Rows[0][11].ToString();
            Label15.Text = (Convert.ToDecimal(ds.Tables[0].Rows[0][8]) + Convert.ToDecimal(ds.Tables[0].Rows[0][10])).ToString();
            Label16.Text = ds.Tables[0].Rows[0][12].ToString();
            Label17.Text = ds.Tables[0].Rows[0][13].ToString();
            Label18.Text = ds.Tables[0].Rows[0][14].ToString();
            Label19.Text = ds.Tables[0].Rows[0][15].ToString();
            Label20.Text = ds.Tables[0].Rows[0][16].ToString();
            Label21.Text = ds.Tables[0].Rows[0][17].ToString();
            Label22.Text = ds.Tables[0].Rows[0][18].ToString();
            Label23.Text = ds.Tables[0].Rows[0][19].ToString();
            Label24.Text = ds.Tables[0].Rows[0][20].ToString();
            Label25.Text = ds.Tables[0].Rows[0][21].ToString();
            Label26.Text = ds.Tables[0].Rows[0][22].ToString();
            Label27.Text = ds.Tables[0].Rows[0][23].ToString();
            Label28.Text = ds.Tables[0].Rows[0][24].ToString();
            Label29.Text = ds.Tables[0].Rows[0][25].ToString();
            Label30.Text = ds.Tables[0].Rows[0][26].ToString();
            Label31.Text = ds.Tables[0].Rows[0][27].ToString();
            /*subtotal*/
            Label32.Text = (Convert.ToDecimal(ds.Tables[0].Rows[0][12]) + Convert.ToDecimal(ds.Tables[0].Rows[0][14]) + Convert.ToDecimal(ds.Tables[0].Rows[0][16]) + Convert.ToDecimal(ds.Tables[0].Rows[0][18]) + Convert.ToDecimal(ds.Tables[0].Rows[0][20]) + Convert.ToDecimal(ds.Tables[0].Rows[0][22]) + Convert.ToDecimal(ds.Tables[0].Rows[0][24]) + Convert.ToDecimal(ds.Tables[0].Rows[0][26])).ToString();
            /*total*/
            Label33.Text = ds.Tables[0].Rows[0][28].ToString();
            OleDbDataAdapter da1 = new OleDbDataAdapter("Select * from capital_expenditure where budget_year='" + DropDownList1.SelectedValue + "' and userid=(select UserID from User_info where Div_code='" + DropDownList2.SelectedValue + "');", cn);
            DataSet ds1 = new DataSet();
            da1.Fill(ds1);
            Label34.Text = DropDownList1.SelectedValue;
            Label35.Text = ds1.Tables[0].Rows[0][2].ToString();
            Label36.Text = ds1.Tables[0].Rows[0][3].ToString();
            Label37.Text = ds1.Tables[0].Rows[0][4].ToString();
            Label38.Text = ds1.Tables[0].Rows[0][5].ToString();
            Label39.Text = ds1.Tables[0].Rows[0][6].ToString();
            Label40.Text = ds1.Tables[0].Rows[0][7].ToString();
            Label41.Text = ds1.Tables[0].Rows[0][8].ToString();
            Label42.Text = ds1.Tables[0].Rows[0][9].ToString();
            Label43.Text = ds1.Tables[0].Rows[0][10].ToString();
            Label44.Text = ds1.Tables[0].Rows[0][11].ToString();
            Label45.Text = ds1.Tables[0].Rows[0][12].ToString();
            Label46.Text = ds1.Tables[0].Rows[0][13].ToString();
            Label47.Text = ds1.Tables[0].Rows[0][14].ToString();
            Label48.Text = ds1.Tables[0].Rows[0][15].ToString();
            Label49.Text = ds1.Tables[0].Rows[0][16].ToString();
            Label50.Text = ds1.Tables[0].Rows[0][17].ToString();
            Label51.Text = ds1.Tables[0].Rows[0][18].ToString();
            Label52.Text = ds1.Tables[0].Rows[0][19].ToString();
            Label53.Text = ds1.Tables[0].Rows[0][20].ToString();
            Label54.Text = ds1.Tables[0].Rows[0][21].ToString();
            Label55.Text = ds1.Tables[0].Rows[0][22].ToString();
            Label56.Text = ds1.Tables[0].Rows[0][23].ToString();
            Label57.Text = ds1.Tables[0].Rows[0][24].ToString();
            MultiView1.ActiveViewIndex = 1;
        }
        else
        {
            Label58.Visible = true;
        }
    }
}