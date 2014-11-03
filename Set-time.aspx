<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Set-time.aspx.cs" Inherits="Set_time" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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
</style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        <img src="images/logo.gif" alt="BITS Pilani logo"  style="margin:2% 0 0 2%"/>
           </div><div style="padding:0 7% 0 0;text-align:right;font-weight:700;font-size:2.7em;background-color:darkblue;color:white">
            BITS BUDGET
        </div>
         <h3>Set the interval within which Users will be allowed to fill the form:</h3>
    <div style="margin-top:0;padding-top:-10px;position:absolute;width:100%">
  <br /><br />
       <div style="margin-left:10%;font-weight:600"> From:&emsp;<asp:TextBox ID="TextBox1" runat="server" Width="20%"></asp:TextBox>&emsp;&emsp;&emsp;&emsp;To:&emsp;<asp:TextBox ID="TextBox2" runat="server" Width="20%"></asp:TextBox>
           <br /><br />
           <span><asp:Button ID="Button1" runat="server" Text="Submit" CssClass="button"/></span>
    </div>
        </div>
    </form>
</body>
</html>
