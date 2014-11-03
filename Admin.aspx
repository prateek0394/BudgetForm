<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body {
        background-color:whitesmoke;
        overflow:hidden;
        }
        .ddt {
            margin-top:10%;
        margin-left:3%;
        width:100%;
        overflow:hidden;
        font-family:Arial;
        font-size:medium;
        font-weight:600;
        }
        .ddt tr {
            height:20%;
            }
         .tab {
    border:1px black solid;
    border-collapse:collapse;
    }
        .tab td {
        border:1px solid black;
        }
    .bold {
    font-weight:700;
    }
    .highl {
    background-color:aqua;
    }
    .auto-style1 {
        width: 70px;
    }
    .auto-style2 {
        width: 233px;
    }
    .auto-style3 {
        font-weight: 700;
        width: 233px;
    }
    .button {
            display:block;
            margin-left:30%;
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
    .button1 {
            display:block;
            margin-left:30%;
        width:80px;
        height:35px;
        border-radius:6px;
        border:1px solid whitesmoke;
        background-color:gray;
        margin-bottom:2em;
        cursor:pointer;
        font-weight:700;
        font-size:12px;

        }
     .button:hover {
            background-color:darkgrey;
            }
        .errmsg {
            font-size:small;
            color:red;
        margin-left:30%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:MultiView ID="MultiView1" runat="server">
            <asp:View ID="View1" runat="server">
    <table class="ddt" style="border:none">
        <tr>
            <td>Budget-Year:&emsp;&emsp;
<asp:DropDownList ID="DropDownList1" runat="server" Width="40%">
    <asp:ListItem>Select</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>Division/Department/Unit:&emsp;&emsp;
                <asp:DropDownList ID="DropDownList2" runat="server" Width="40%">
                    <asp:ListItem>Select</asp:ListItem>
                </asp:DropDownList>
            </td >
        </tr><tr><td colspan="2"><br /><asp:Label ID="Label58" runat="server" Text="Please Select Correct Values!!!" CssClass="errmsg" Visible="false"></asp:Label></td></tr>
        <tr>
            <td colspan="2" style="padding-left:35%;">
                <br /><br />
                <asp:Button ID="Button1" runat="server" Text="Show" Width="10%" Height="40px" OnClick="Button1_Click" />
            </td>
        </tr>
    </table>
                </asp:View>
            <asp:View ID="View2" runat="server">
                <div style="width:60%;margin-left:20%;margin-right:20%">
        <span style="float:right">
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </span><br />
        <div style="text-align:center;font-weight:700">
            Dept/Div/unit/Section Name:	<asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        </div>
        <table class="tab">
            <tr>
                <td colspan="4" class="bold" style="text-align:center;background-color:orange">
                    Revenue_Expenditure (Recurring)
                </td>
            </tr>
            <tr class="bold highl">
                <td>#</td>
                <td></td>
                <td class="auto-style1">Budgeted Amount(in lakhs)</td>
                <td>Basis of Calculation (attach separate word files if details are more and mention the file name here)</td>
            </tr>
            <tr class="bold highl">
                <td></td>
                <td>Particulars</td>
                <td class="auto-style1"><asp:Label ID="Label3" runat="server" Text="Label"></asp:Label></td>
                <td></td>
            </tr>
            <tr>
                <td>1.</td>
                <td class="bold">Repairs and Maintainence Charges</td>
                <td class="auto-style1"></td>
                <td></td>
            </tr>
            <tr>
                <td>1.1</td>
                <td class="bold">Regular Repairs/ Renovations</td>
                <td class="auto-style1"></td>
                <td></td>
            </tr>
            <tr>
                <td></td>
                <td>Bulildings (Laboratory etc.)</td>
                <td class="auto-style1"><asp:Label ID="Label4" runat="server" Text="Label"></asp:Label></td>
                <td><asp:Label ID="Label5" runat="server" Text="Label"></asp:Label></td>
            </tr>
            <tr>
                <td></td>
                <td>-Equipment</td>
                <td class="auto-style1"><asp:Label ID="Label6" runat="server" Text="Label"></asp:Label></td>
                <td><asp:Label ID="Label7" runat="server" Text="Label"></asp:Label></td>
            </tr>
            <tr>
                <td></td>
                <td>-Others (Pls Specify)</td>
                <td class="auto-style1"><asp:Label ID="Label8" runat="server" Text="Label"></asp:Label></td>
                <td><asp:Label ID="Label9" runat="server" Text="Label"></asp:Label></td>
            </tr>
            <tr class="highl">
                <td></td>
                <td>Sub-Total</td>
                <td class="auto-style1"><asp:Label ID="Label10" runat="server" Text="Label"></asp:Label></td>
                <td></td>
            </tr>
            <tr>
                <td>1.2</td>
                <td class="bold">Maintainence Contracts</td>
                <td class="auto-style1"></td>
                <td></td>
            </tr>
            <tr>
                <td></td>
                <td> Annual and other Maintainence Contracts</td>
                <td class="auto-style1"><asp:Label ID="Label11" runat="server" Text="Label"></asp:Label></td>
                <td><asp:Label ID="Label12" runat="server" Text="Label"></asp:Label></td>
            </tr>
            <tr>
                <td></td>
                <td>-Others (Pls Specify)</td>
                <td class="auto-style1"><asp:Label ID="Label13" runat="server" Text="Label"></asp:Label></td>
                <td><asp:Label ID="Label14" runat="server" Text="Label"></asp:Label></td>
            </tr>
            <tr class="highl">
                <td></td>
                <td>Sub-Total</td>
                <td class="auto-style1"><asp:Label ID="Label15" runat="server" Text="Label"></asp:Label></td>
                <td></td>
            </tr>
            <tr>
                <td>1.3</td>
                <td class="bold">Others</td>
                <td class="auto-style1"></td>
                <td></td>
            </tr>
            <tr>
                <td></td>
                <td>Upkeep of office machines and furniture: Printer cartridges etc.</td>
                <td class="auto-style1"><asp:Label ID="Label16" runat="server" Text="Label"></asp:Label></td>
                <td><asp:Label ID="Label17" runat="server" Text="Label"></asp:Label></td>
            </tr>
            <tr>
                <td></td>
                <td>Maintenance of Tools and Spares, ups batteries etc.</td>
                <td class="auto-style1"><asp:Label ID="Label18" runat="server" Text="Label"></asp:Label></td>
                <td><asp:Label ID="Label19" runat="server" Text="Label"></asp:Label></td>
            </tr>
            <tr>
                <td></td>
                <td>Equipment Rent</td>
                <td class="auto-style1"><asp:Label ID="Label20" runat="server" Text="Label"></asp:Label></td>
                <td><asp:Label ID="Label21" runat="server" Text="Label"></asp:Label></td>
            </tr>
            <tr>
                <td></td>
                <td>Chemicals and Glassware</td>
                <td class="auto-style1"><asp:Label ID="Label22" runat="server" Text="Label"></asp:Label></td>
                <td><asp:Label ID="Label23" runat="server" Text="Label"></asp:Label></td>
            </tr>
            <tr>
                <td></td>
                <td>Contingency (Refreshment, minor Transportation Charges etc,)</td>
                <td class="auto-style1"><asp:Label ID="Label24" runat="server" Text="Label"></asp:Label></td>
                <td><asp:Label ID="Label25" runat="server" Text="Label"></asp:Label></td>
            </tr>
            <tr>
                <td></td>
                <td>Lab and Class Room consumables(stores itemes other than chemicals and Glassware)</td>
                <td class="auto-style1"><asp:Label ID="Label26" runat="server" Text="Label"></asp:Label></td>
                <td><asp:Label ID="Label27" runat="server" Text="Label"></asp:Label></td>
            </tr>
            <tr>
                <td></td>
                <td>Minor stationery and consumables directly purchased</td>
                <td class="auto-style1"><asp:Label ID="Label28" runat="server" Text="Label"></asp:Label></td>
                <td><asp:Label ID="Label29" runat="server" Text="Label"></asp:Label></td>
            </tr>
            <tr>
                <td></td>
                <td>-Others (Pls Specify)</td>
                <td class="auto-style1"><asp:Label ID="Label30" runat="server" Text="Label"></asp:Label></td>
                <td><asp:Label ID="Label31" runat="server" Text="Label"></asp:Label></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td></td>
                <td class="auto-style1">&nbsp;</td>
                <td></td>
            </tr>
            <tr class="highl">
                <td></td>
                <td>Sub-Total</td>
                <td class="auto-style1"><asp:Label ID="Label32" runat="server" Text="Label"></asp:Label></td>
                <td></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td></td>
                <td class="auto-style1"></td>
                <td></td>
            </tr>
            <tr>
                <td></td>
                <td class="bold" style="text-align:right">Total</td>
                <td class="auto-style1"><asp:Label ID="Label33" runat="server" Text="Label"></asp:Label></td>
                <td></td>
            </tr>
        </table>
        <br />
        <br />
        <table class="tab">
            <tr>
                <td colspan="4" class="bold" style="text-align:center;background-color:orange">
                    BITS PILANI
                </td>
            </tr>
            <tr>
                <td colspan="4" class="bold" style="text-align:center;background-color:orange">
                    Capital Expenditure Budget
                </td>
            </tr>
            <tr class="bold highl">
                <td>#</td>
                <td class="auto-style2">Particulars</td>
                <td class="auto-style1">Budgeted Amount <asp:Label ID="Label34" runat="server" Text="Label"></asp:Label> (Total in Lakhs)</td>
                <td>Basis of Calculation(If details are more, mention these in  a word document and mention here only the name of the attached file; Use  separate page for each plan of expenditure for the dept or a centre attached to your dept.; If more than one expenditure plan is there, then create a summary page in the word document and mention only the final figures here.)</td>
            </tr>
            <tr >
                <td>&nbsp;</td>
                <td class="auto-style2"></td>
                <td class="auto-style1"></td>
                <td></td>
            </tr>
            <tr>
                <td>1.</td>
                <td class="auto-style3">Building</td>
                 <td class="auto-style1"><asp:Label ID="Label35" runat="server" Text="Label"></asp:Label> </td>
                <td><asp:Label ID="Label36" runat="server" Text="Label"></asp:Label> </td>
            </tr>
            <tr >
                <td>2.1</td>
                <td class="auto-style3">ICT- Computers Software</td>
                 <td class="auto-style1"><asp:Label ID="Label37" runat="server" Text="Label"></asp:Label> </td>
                <td><asp:Label ID="Label38" runat="server" Text="Label"></asp:Label> </td>
            </tr>
            <tr >
                <td>2.2</td>
                <td class="auto-style3">ICT- Servers</td>
                 <td class="auto-style1"><asp:Label ID="Label39" runat="server" Text="Label"></asp:Label> </td>
                <td><asp:Label ID="Label40" runat="server" Text="Label"></asp:Label> </td>
            </tr>
            <tr >
                <td>2.3</td>
                <td class="auto-style3">ICT- Hardware peripherals</td>
                 <td class="auto-style1"><asp:Label ID="Label41" runat="server" Text="Label"></asp:Label> </td>
                <td><asp:Label ID="Label42" runat="server" Text="Label"></asp:Label> </td>
            </tr>
            <tr >
                <td>2.4</td>
                <td class="auto-style3" >ICT-Networking Equipment-IP Phones etc.</td>
                 <td class="auto-style1"><asp:Label ID="Label43" runat="server" Text="Label"></asp:Label> </td>
                <td><asp:Label ID="Label44" runat="server" Text="Label"></asp:Label> </td>
            </tr>
            <tr >
                <td>2.5</td>
                <td class="auto-style3" >ICT-PCs</td>
                 <td class="auto-style1"><asp:Label ID="Label45" runat="server" Text="Label"></asp:Label> </td>
                <td><asp:Label ID="Label46" runat="server" Text="Label"></asp:Label> </td>
            </tr>
            <tr >
                <td>2.6</td>
                <td class="auto-style3">ICT-Video Projectors etc.</td>
                <td class="auto-style1"><asp:Label ID="Label47" runat="server" Text="Label"></asp:Label> </td>
                <td><asp:Label ID="Label48" runat="server" Text="Label"></asp:Label> 
                </td>
            </tr>   
            <tr >
                <td>3</td>
                <td class="auto-style3">Furniture and Fittings </td>
                 <td class="auto-style1"><asp:Label ID="Label49" runat="server" Text="Label"></asp:Label> </td>
                <td><asp:Label ID="Label50" runat="server" Text="Label"></asp:Label> </td>
            </tr>
            <tr >
                <td>4.1</td>
                <td class="auto-style3">Equipments- Lab/Institute Utilities</td>
                 <td class="auto-style1"><asp:Label ID="Label51" runat="server" Text="Label"></asp:Label> </td>
                <td><asp:Label ID="Label52" runat="server" Text="Label"></asp:Label> </td>
            </tr>
            <tr >
                <td>4.2</td>
                <td class="auto-style3">Equipments - 50% share towards research equipments santioned by GOI agencies.</td>
                <td class="auto-style1"><asp:Label ID="Label53" runat="server" Text="Label"></asp:Label> </td>
                <td><asp:Label ID="Label54" runat="server" Text="Label"></asp:Label> </td>
            </tr>
            <tr >
                <td>5</td>
                <td class="auto-style3">Vehicles</td>
                 <td class="auto-style1"><asp:Label ID="Label55" runat="server" Text="Label"></asp:Label> </td>
                <td><asp:Label ID="Label56" runat="server" Text="Label"></asp:Label> </td>
            </tr>
            <tr class="bold highl">
                <td></td>
                <td class="auto-style2">Total</td>
                 <td class="auto-style1"><asp:Label ID="Label57" runat="server" Text="Label"></asp:Label> 
                    </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <br />
        <br />
    </div>
            </asp:View>
            </asp:MultiView>
    </div>
    </form>
</body>
</html>
