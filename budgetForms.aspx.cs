using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;
using System.IO;

public partial class budgetForms : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["userid"] != null)
        {
            MultiView1.ActiveViewIndex = 0;
            //TextBox1.Attributes.Add("pattern","^0*[1-9][0-9]*(\.[0-9]+)?|0+\.[0-9]*[1-9][0-9]*$");
            DateTime today = DateTime.Today;
            Label1.Text = "<b>" + DateTime.Now.ToString("dd/MM/yyyy") + "</b>";
            Label10.Text = "<b>" + DateTime.Now.ToString("dd/MM/yyyy") + "</b>";
            string user_id = Session["userid"].ToString();
            string connection = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + Server.MapPath("budget.accdb") + ";Persist Security Info=True";
            OleDbConnection cn = new OleDbConnection(connection);
            OleDbDataAdapter da = new OleDbDataAdapter("Select * from User_info where USERID='" + user_id + "';", cn);
            DataSet ds = new DataSet();
            da.Fill(ds);
            string divid = ds.Tables[0].Rows[0][5].ToString();
            da = new OleDbDataAdapter("Select * from Div_Details where Div_Code='" + divid + "';", cn);
            DataSet ds1 = new DataSet();
            da.Fill(ds1);
            Label2.Text = ds1.Tables[0].Rows[0][2].ToString();
            Label11.Text = ds1.Tables[0].Rows[0][2].ToString();
            Label3.Text = DateTime.Now.Year.ToString() + "-" + DateTime.Now.AddYears(1).Year.ToString();
            Label12.Text = DateTime.Now.Year.ToString() + "-" + DateTime.Now.AddYears(1).Year.ToString();
            Label43.Text = DateTime.Now.Year.ToString() + "-" + DateTime.Now.AddYears(1).Year.ToString();
            Label9.Text = Label3.Text;
            Label4.Text = (Convert.ToDecimal(TextBox1.Text) + Convert.ToDecimal(TextBox3.Text) + Convert.ToDecimal(TextBox5.Text)).ToString();
            Label5.Text = (Convert.ToDecimal(TextBox7.Text) + Convert.ToDecimal(TextBox9.Text)).ToString();
            Label6.Text = (Convert.ToDecimal(TextBox11.Text) + Convert.ToDecimal(TextBox13.Text) + Convert.ToDecimal(TextBox15.Text) + Convert.ToDecimal(TextBox17.Text) + Convert.ToDecimal(TextBox19.Text) + Convert.ToDecimal(TextBox21.Text) + Convert.ToDecimal(TextBox25.Text) + Convert.ToDecimal(TextBox23.Text)).ToString();
        }
        else {
            Response.Redirect("Login.aspx");
        }
        }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
         }
    protected void TextBox7_TextChanged(object sender, EventArgs e)
    {
      }
    protected void TextBox11_TextChanged(object sender, EventArgs e)
    {
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string user_id = Session["userid"].ToString();
        string connection = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + Server.MapPath("budget.accdb") + ";Persist Security Info=True";
        OleDbConnection cn = new OleDbConnection(connection);
        cn.Open();
        string total1 = (Convert.ToDecimal(TextBox1.Text) + Convert.ToDecimal(TextBox3.Text) + Convert.ToDecimal(TextBox5.Text) + Convert.ToDecimal(TextBox7.Text) + Convert.ToDecimal(TextBox9.Text) + Convert.ToDecimal(TextBox11.Text) + Convert.ToDecimal(TextBox13.Text) + Convert.ToDecimal(TextBox15.Text) + Convert.ToDecimal(TextBox17.Text) + Convert.ToDecimal(TextBox19.Text) + Convert.ToDecimal(TextBox21.Text) + Convert.ToDecimal(TextBox23.Text) + Convert.ToDecimal(TextBox25.Text)).ToString(); 
        
        OleDbCommand command = new OleDbCommand("insert into revenue_expenditure values('" + user_id + "','" + Label3.Text + "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "','" + TextBox9.Text + "','" + TextBox10.Text + "','" + TextBox11.Text + "','" + TextBox12.Text + "','" + TextBox13.Text + "','" + TextBox14.Text + "','" + TextBox15.Text + "','" + TextBox16.Text + "','" + TextBox17.Text + "','" + TextBox18.Text + "','" + TextBox19.Text + "','" + TextBox20.Text + "','" + TextBox21.Text + "','" + TextBox22.Text + "','" + TextBox23.Text + "','" + TextBox24.Text + "','" + TextBox25.Text + "','" + TextBox26.Text + "','" +total1+ "');");
        command.Connection = cn;
        command.ExecuteNonQuery();
        
    string total2 = (Convert.ToDecimal(TextBox27.Text)+Convert.ToDecimal(TextBox29.Text)+Convert.ToDecimal(TextBox31.Text)+Convert.ToDecimal(TextBox33.Text)+Convert.ToDecimal(TextBox35.Text)+Convert.ToDecimal(TextBox37.Text)+Convert.ToDecimal(TextBox39.Text)+Convert.ToDecimal(TextBox41.Text)+Convert.ToDecimal(TextBox43.Text)+Convert.ToDecimal(TextBox45.Text)+Convert.ToDecimal(TextBox47.Text)).ToString();
        OleDbCommand command1 = new OleDbCommand("insert into capital_expenditure values('" + user_id + "','" + Label3.Text + "','" + TextBox27.Text + "','" + TextBox28.Text + "','" + TextBox29.Text + "','" + TextBox30.Text + "','" + TextBox31.Text + "','" + TextBox32.Text + "','" + TextBox33.Text + "','" + TextBox34.Text + "','" + TextBox35.Text + "','" + TextBox36.Text + "','" + TextBox37.Text + "','" + TextBox38.Text + "','" + TextBox39.Text + "','" + TextBox40.Text + "','" + TextBox41.Text + "','" + TextBox42.Text + "','" + TextBox43.Text + "','" + TextBox44.Text + "','" + TextBox45.Text + "','" + TextBox46.Text + "','" + TextBox47.Text + "','" + TextBox48.Text + "','"+total2+"');");
        command1.Connection = cn;
        command1.ExecuteNonQuery();
        string fileName1 = "";
        string fileName2 = "";
        string fileName3 = "";
        if (FileUpload1.HasFile) {
            if (!System.IO.Directory.Exists(Server.MapPath("files")+"/"+Label3.Text+"/"+user_id)) {
                System.IO.Directory.CreateDirectory(Server.MapPath("files") + "/" + Label3.Text + "/" + user_id);            
            }
            fileName1 = Path.GetFileName(FileUpload1.PostedFile.FileName);
            FileUpload1.PostedFile.SaveAs(Server.MapPath("files") + "/" + Label3.Text + "/" + user_id +"/"+ fileName1);
        }
        if (FileUpload2.HasFile)
        {
            if (!System.IO.Directory.Exists(Server.MapPath("files") + "/" + Label3.Text + "/" + user_id))
            {
                System.IO.Directory.CreateDirectory(Server.MapPath("files") + "/" + Label3.Text + "/" + user_id);
            }
            fileName2 = Path.GetFileName(FileUpload2.PostedFile.FileName);
            FileUpload2.PostedFile.SaveAs(Server.MapPath("files") + "/" + Label3.Text + "/" + user_id + "/" + fileName2);
        }
        if (FileUpload3.HasFile)
        {
            if (!System.IO.Directory.Exists(Server.MapPath("files") + "/" + Label3.Text + "/" + user_id))
            {
                System.IO.Directory.CreateDirectory(Server.MapPath("files") + "/" + Label3.Text + "/" + user_id);
            }
            fileName3 = Path.GetFileName(FileUpload3.PostedFile.FileName);
            FileUpload3.PostedFile.SaveAs(Server.MapPath("files") + "/" + Label3.Text + "/" + user_id + "/" + fileName3);
        }
        OleDbCommand command2 = new OleDbCommand("insert into annexures values('" + user_id + "','" + Label3.Text + "','" + fileName1 + "','" + fileName2 + "','" + fileName3 + "');");
        command2.Connection = cn;
        command2.ExecuteNonQuery();
        cn.Close();
        Label13.Text = TextBox1.Text;
        Label14.Text = TextBox2.Text;
        Label15.Text = TextBox3.Text;
        Label16.Text = TextBox4.Text;
        Label17.Text = TextBox5.Text;
        Label18.Text = TextBox6.Text;
        Label19.Text = Label4.Text;
        Label20.Text = TextBox7.Text;
        Label21.Text = TextBox8.Text;
        Label22.Text = TextBox9.Text;
        Label23.Text = TextBox10.Text;
        Label24.Text = Label5.Text;
        Label25.Text = TextBox11.Text;
        Label26.Text = TextBox12.Text;
        Label27.Text = TextBox13.Text;
        Label28.Text = TextBox14.Text;
        Label29.Text = TextBox15.Text;
        Label30.Text = TextBox16.Text;
        Label31.Text = TextBox17.Text;
        Label32.Text = TextBox18.Text;
        Label33.Text = TextBox19.Text;
        Label34.Text = TextBox20.Text;
        Label35.Text = TextBox21.Text;
        Label36.Text = TextBox22.Text;
        Label37.Text = TextBox23.Text;
        Label38.Text = TextBox24.Text;
        Label39.Text = TextBox25.Text;
        Label40.Text = TextBox26.Text;
        Label41.Text = Label6.Text;
        Label42.Text = total1;

        Label44.Text = TextBox27.Text;
        Label45.Text = TextBox28.Text;
        Label46.Text = TextBox29.Text;
        Label47.Text = TextBox30.Text;
        Label48.Text = TextBox31.Text;
        Label49.Text = TextBox32.Text;
        Label50.Text = TextBox33.Text;
        Label51.Text = TextBox34.Text;
        Label52.Text = TextBox35.Text;
        Label53.Text = TextBox36.Text;
        Label54.Text = TextBox37.Text;
        Label55.Text = TextBox38.Text;
        Label56.Text = TextBox39.Text;
        Label57.Text = TextBox40.Text;
        Label58.Text = TextBox41.Text;
        Label59.Text = TextBox42.Text;
        Label60.Text = TextBox43.Text;
        Label61.Text = TextBox44.Text;
        Label62.Text = TextBox45.Text;
        Label63.Text = TextBox46.Text;
        Label64.Text = TextBox47.Text;
        Label65.Text = TextBox48.Text;
        Label66.Text = total2;
        MultiView1.ActiveViewIndex = 1;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Session.Remove("userid");
        Response.Redirect("Login.aspx");
    }
}