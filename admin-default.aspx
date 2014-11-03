<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin-default.aspx.cs" Inherits="admin_default" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <link rel="stylesheet" href="//code.jquery.com/ui/1.11.2/themes/smoothness/jquery-ui.css">
 <script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="//code.jquery.com/ui/1.11.2/jquery-ui.js"></script>
    <script>
        $(document).ready(function () {
            $("#TextBox1").datepicker({ mindate: "+1m 18d", maxdate: "+9m" });
            $("#TextBox2").datepicker({ mindate: "+4m 18d", maxdate: "+9m" });
        });
    </script>
<style>
    body {
    background-color:whitesmoke;
    color:darkblue;
    overflow:hidden;
    }
    .button {
            display:block;
            margin-left:25%;
            margin-top:5%;
        width:120px;
        height:35px;
        border-radius:6px;
        border:1px solid whitesmoke;
        background-color:gray;
        margin-bottom:2em;
        cursor:pointer;
        font-weight:700;
        font-size:16px;

        }
     .button:hover {
            background-color:darkgrey;
            }
    .div_name {
    text-align:center;
    }
</style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        <img src="images/logo.gif" alt="BITS Pilani logo"  style="margin:2% 0 0 2%"/>
           </div><div style="padding:0 7% 0 0;text-align:right;font-weight:700;font-size:2.7em;background-color:darkblue;color:white">
            BITS BUDGET
        </div>
        <br />
        <br />
        <a href="Admin.aspx">View Submited Reports</a><br /><br />
        <a href="Set-time.aspx">Set time interval for switching the site</a><br />
        
        <br />
        <br />
        <table style="width:100%;">
            <tr>
                <td style="font-weight:700;font-size:medium">
                    List Of Divisions/DepList Of Divisions/DepList Of Divisions/Department/Units not submitted the Budget application for <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                </td>
            </tr><tr><td style="padding-left:15%">
                <br /><br />
        <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Height="196px" Width="245px">
            <AlternatingRowStyle BackColor="White" />
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB"  CssClass="div_name"/>
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
                </asp:GridView>
            </td></tr></table>
    </form>
</body>
</html>
