<%@ Page Language="C#" AutoEventWireup="true" CodeFile="budgetForms.aspx.cs" Inherits="budgetForms" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Budget forms</title>
    <script>
        function st1() {
            //alert(parseFloat(document.getElementById('TextBox1').value));
            document.getElementById('Label4').innerHTML = Number((parseFloat(document.getElementById('TextBox1').value)+ parseFloat(document.getElementById('TextBox3').value) + parseFloat(document.getElementById('TextBox5').value)).toFixed(1));
            document.getElementById('Label7').innerHTML = Number((parseFloat(document.getElementById('Label4').innerHTML) + parseFloat(document.getElementById('Label5').innerHTML) + parseFloat(document.getElementById('Label6').innerHTML)).toFixed(1));
        }
        function st2() {
            //alert(parseFloat(document.getElementById('TextBox1').value));
            document.getElementById('Label5').innerHTML = Number((parseFloat(document.getElementById('TextBox7').value) + parseFloat(document.getElementById('TextBox9').value)).toFixed(1));
            document.getElementById('Label7').innerHTML = Number((parseFloat(document.getElementById('Label4').innerHTML) + parseFloat(document.getElementById('Label5').innerHTML) + parseFloat(document.getElementById('Label6').innerHTML)).toFixed(1));
        }
        function st3() {
            //alert(parseFloat(document.getElementById('TextBox1').value));
            document.getElementById('Label6').innerHTML = Number((parseFloat(document.getElementById('TextBox11').value) + parseFloat(document.getElementById('TextBox13').value) + parseFloat(document.getElementById('TextBox15').value) + parseFloat(document.getElementById('TextBox17').value) + parseFloat(document.getElementById('TextBox19').value) + parseFloat(document.getElementById('TextBox21').value) + parseFloat(document.getElementById('TextBox23').value) + parseFloat(document.getElementById('TextBox25').value)).toFixed(1));
            document.getElementById('Label7').innerHTML = Number((parseFloat(document.getElementById('Label4').innerHTML) + parseFloat(document.getElementById('Label5').innerHTML) + parseFloat(document.getElementById('Label6').innerHTML)).toFixed(1));
        }
        function st4() {
            document.getElementById('Label8').innerHTML =Number((parseFloat(document.getElementById('TextBox27').value) + parseFloat(document.getElementById('TextBox29').value) + parseFloat(document.getElementById('TextBox31').value) + parseFloat(document.getElementById('TextBox33').value) + parseFloat(document.getElementById('TextBox35').value) + parseFloat(document.getElementById('TextBox39').value) + parseFloat(document.getElementById('TextBox41').value) + parseFloat(document.getElementById('TextBox43').value) + parseFloat(document.getElementById('TextBox45').value) + parseFloat(document.getElementById('TextBox47').value) + parseFloat(document.getElementById('TextBox37').value)).toFixed(1));
        }
    </script>
<style>
    table {
    border:1px black solid;
    border-collapse:collapse;
    }
        table td {
        border:1px solid black;
        }
    .bold {
    font-weight:700;
    }
    .highl {
    background-color:aqua;
    }
    [type=number] {
        text-align:right;
         border:2px black solid;
    width: 100px;
    height:70%;
    }
    textarea {
        border:2px black solid;
        margin:0px 0px -1px 0px ;
    width:99%;
        height:100%;
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
</style>
</head>
<body>
    <form id="form1" runat="server">
       <span style="float:right;margin-right:20px">
                    <asp:Button ID="Button2" runat="server" Text="Logout" cssClass="button1" OnClick="Button2_Click"/>
       </span>
         <asp:MultiView ID="MultiView1" runat="server">
            <asp:View ID="View1" runat="server">
                
                <div style="width:60%;margin-left:20%;margin-right:20%">
        <span style="float:right">
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </span><br />
        <div style="text-align:center;font-weight:700">
            Dept/Div/unit/Section Name:	<asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        </div>
        <table>
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
                <td class="auto-style1"><asp:TextBox ID="TextBox1" runat="server" style="margin-right: 0px" CssClass="textbox" AutoPostBack="False" onchange="st1()" TextMode="Number" step="0.1" min="0">0.0</asp:TextBox></td>
                <td><asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine" CssClass="textbox"></asp:TextBox></td>
            </tr>
            <tr>
                <td></td>
                <td>-Equipment</td>
                <td class="auto-style1"><asp:TextBox ID="TextBox3" runat="server" onchange="st1()" AutoPostBack="False" TextMode="Number"  step="0.1" min="0">0.0</asp:TextBox></td>
                <td><asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine"></asp:TextBox></td>
            </tr>
            <tr>
                <td></td>
                <td>-Others (Pls Specify)</td>
                <td class="auto-style1"><asp:TextBox ID="TextBox5" runat="server" onchange="st1()" AutoPostBack="False" TextMode="Number"  step="0.1" min="0">0.0</asp:TextBox></td>
                <td><asp:TextBox ID="TextBox6" runat="server" TextMode="MultiLine"></asp:TextBox></td>
            </tr>
            <tr class="highl">
                <td></td>
                <td>Sub-Total</td>
                <td class="auto-style1"><asp:Label ID="Label4" runat="server" Text=""></asp:Label></td>
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
                <td class="auto-style1"><asp:TextBox ID="TextBox7" runat="server" onchange="st2()" AutoPostBack="False" TextMode="Number" step="0.1" min="0" >0.0</asp:TextBox></td>
                <td><asp:TextBox ID="TextBox8" runat="server" TextMode="MultiLine"></asp:TextBox></td>
            </tr>
            <tr>
                <td></td>
                <td>-Others (Pls Specify)</td>
                <td class="auto-style1"><asp:TextBox ID="TextBox9" runat="server" onchange="st2()" AutoPostBack="False" TextMode="Number" step="0.1" min="0">0.0</asp:TextBox></td>
                <td><asp:TextBox ID="TextBox10" runat="server" TextMode="MultiLine"></asp:TextBox></td>
            </tr>
            <tr class="highl">
                <td></td>
                <td>Sub-Total</td>
                <td class="auto-style1">
                    <asp:Label ID="Label5" runat="server" Text=""></asp:Label></td>
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
                <td class="auto-style1"><asp:TextBox ID="TextBox11" runat="server" onchange="st3()" AutoPostBack="False" TextMode="Number" step="0.1" min="0">0.0</asp:TextBox></td>
                <td><asp:TextBox ID="TextBox12" runat="server" TextMode="MultiLine"></asp:TextBox></td>
            </tr>
            <tr>
                <td></td>
                <td>Maintenance of Tools and Spares, ups batteries etc.</td>
                <td class="auto-style1"><asp:TextBox ID="TextBox13" runat="server"  onchange="st3()" AutoPostBack="False" TextMode="Number" step="0.1" min="0">0.0</asp:TextBox></td>
                <td><asp:TextBox ID="TextBox14" runat="server" TextMode="MultiLine"></asp:TextBox></td>
            </tr>
            <tr>
                <td></td>
                <td>Equipment Rent</td>
                <td class="auto-style1"><asp:TextBox ID="TextBox15" runat="server"  onchange="st3()" AutoPostBack="False" TextMode="Number" step="0.1" min="0">0.0</asp:TextBox></td>
                <td><asp:TextBox ID="TextBox16" runat="server" TextMode="MultiLine"></asp:TextBox></td>
            </tr>
            <tr>
                <td></td>
                <td>Chemicals and Glassware</td>
                <td class="auto-style1"><asp:TextBox ID="TextBox17" runat="server"  onchange="st3()" AutoPostBack="False" TextMode="Number" step="0.1" min="0">0.0</asp:TextBox></td>
                <td><asp:TextBox ID="TextBox18" runat="server" TextMode="MultiLine"></asp:TextBox></td>
            </tr>
            <tr>
                <td></td>
                <td>Contingency (Refreshment, minor Transportation Charges etc,)</td>
                <td class="auto-style1"><asp:TextBox ID="TextBox19" runat="server"  onchange="st3()" AutoPostBack="False" TextMode="Number" step="0.1" min="0">0.0</asp:TextBox></td>
                <td><asp:TextBox ID="TextBox20" runat="server" TextMode="MultiLine"></asp:TextBox></td>
            </tr>
            <tr>
                <td></td>
                <td>Lab and Class Room consumables(stores itemes other than chemicals and Glassware)</td>
                <td class="auto-style1"><asp:TextBox ID="TextBox21" runat="server" onchange="st3()" AutoPostBack="False" TextMode="Number" step="0.1" min="0">0.0</asp:TextBox></td>
                <td><asp:TextBox ID="TextBox22" runat="server" TextMode="MultiLine"></asp:TextBox></td>
            </tr>
            <tr>
                <td></td>
                <td>Minor stationery and consumables directly purchased</td>
                <td class="auto-style1"><asp:TextBox ID="TextBox23" runat="server"  onchange="st3()" AutoPostBack="False" TextMode="Number" step="0.1" min="0">0.0</asp:TextBox></td>
                <td><asp:TextBox ID="TextBox24" runat="server" TextMode="MultiLine"></asp:TextBox></td>
            </tr>
            <tr>
                <td></td>
                <td>-Others (Pls Specify)</td>
                <td class="auto-style1"><asp:TextBox ID="TextBox25" runat="server"  onchange="st3()" AutoPostBack="False" TextMode="Number" step="0.1" min="0">0.0</asp:TextBox></td>
                <td><asp:TextBox ID="TextBox26" runat="server" TextMode="MultiLine"></asp:TextBox></td>
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
                <td class="auto-style1">
                    <asp:Label ID="Label6" runat="server" Text=""></asp:Label></td>
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
                <td class="auto-style1"><asp:Label ID="Label7" runat="server" Text=""></asp:Label></td>
                <td></td>
            </tr>
        </table>
        <br />
        <br />
        <table>
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
                <td class="auto-style1">Budgeted Amount <asp:Label ID="Label9" runat="server" Text=""></asp:Label> (Total in Lakhs)</td>
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
                 <td class="auto-style1"><asp:TextBox ID="TextBox27" runat="server" onchange="st4()" AutoPostBack="False" TextMode="Number"  step="0.1" min="0">0.0</asp:TextBox></td>
                <td><asp:TextBox ID="TextBox28" runat="server" TextMode="MultiLine"></asp:TextBox></td>
            </tr>
            <tr >
                <td>2.1</td>
                <td class="auto-style3">ICT- Computers Software</td>
                 <td class="auto-style1"><asp:TextBox ID="TextBox29" runat="server" onchange="st4()" AutoPostBack="False" TextMode="Number"  step="0.1" min="0">0.0</asp:TextBox></td>
                <td><asp:TextBox ID="TextBox30" runat="server" TextMode="MultiLine"></asp:TextBox></td>
            </tr>
            <tr >
                <td>2.2</td>
                <td class="auto-style3">ICT- Servers</td>
                 <td class="auto-style1"><asp:TextBox ID="TextBox31" runat="server" onchange="st4()" AutoPostBack="False" TextMode="Number"  step="0.1" min="0">0.0</asp:TextBox></td>
                <td><asp:TextBox ID="TextBox32" runat="server" TextMode="MultiLine"></asp:TextBox></td>
            </tr>
            <tr >
                <td>2.3</td>
                <td class="auto-style3">ICT- Hardware peripherals</td>
                 <td class="auto-style1"><asp:TextBox ID="TextBox33" runat="server" onchange="st4()" AutoPostBack="False" TextMode="Number"  step="0.1" min="0">0.0</asp:TextBox></td>
                <td><asp:TextBox ID="TextBox34" runat="server" TextMode="MultiLine"></asp:TextBox></td>
            </tr>
            <tr >
                <td>2.4</td>
                <td class="auto-style3" >ICT-Networking Equipment-IP Phones etc.</td>
                 <td class="auto-style1"><asp:TextBox ID="TextBox35" runat="server" onchange="st4()" AutoPostBack="False" TextMode="Number"  step="0.1" min="0">0.0</asp:TextBox></td>
                <td><asp:TextBox ID="TextBox36" runat="server" TextMode="MultiLine"></asp:TextBox></td>
            </tr>
            <tr >
                <td>2.5</td>
                <td class="auto-style3" >ICT-PCs</td>
                 <td class="auto-style1"><asp:TextBox ID="TextBox37" runat="server" onchange="st4()" AutoPostBack="False" TextMode="Number"  step="0.1" min="0">0.0</asp:TextBox></td>
                <td><asp:TextBox ID="TextBox38" runat="server" TextMode="MultiLine"></asp:TextBox></td>
            </tr>
            <tr >
                <td>2.6</td>
                <td class="auto-style3">ICT-Video Projectors etc.</td>
                <td class="auto-style1"><asp:TextBox ID="TextBox39" runat="server" onchange="st4()" AutoPostBack="False" TextMode="Number"  step="0.1" min="0">0.0</asp:TextBox></td>
                <td><asp:TextBox ID="TextBox40" runat="server" TextMode="MultiLine"></asp:TextBox></td>
            </tr>   
            <tr >
                <td>3</td>
                <td class="auto-style3">Furniture and Fittings </td>
                 <td class="auto-style1"><asp:TextBox ID="TextBox41" runat="server" onchange="st4()" AutoPostBack="False" TextMode="Number"  step="0.1" min="0">0.0</asp:TextBox></td>
                <td><asp:TextBox ID="TextBox42" runat="server" TextMode="MultiLine"></asp:TextBox></td>
            </tr>
            <tr >
                <td>4.1</td>
                <td class="auto-style3">Equipments- Lab/Institute Utilities</td>
                 <td class="auto-style1"><asp:TextBox ID="TextBox43" runat="server" onchange="st4()" AutoPostBack="False" TextMode="Number"  step="0.1" min="0">0.0</asp:TextBox></td>
                <td><asp:TextBox ID="TextBox44" runat="server" TextMode="MultiLine"></asp:TextBox></td>
            </tr>
            <tr >
                <td>4.2</td>
                <td class="auto-style3">Equipments - 50% share towards research equipments santioned by GOI agencies.</td>
                <td class="auto-style1"><asp:TextBox ID="TextBox45" runat="server" onchange="st4()" AutoPostBack="False" TextMode="Number"  step="0.1" min="0">0.0</asp:TextBox></td>
                <td><asp:TextBox ID="TextBox46" runat="server" TextMode="MultiLine"></asp:TextBox></td>
            </tr>
            <tr >
                <td>5</td>
                <td class="auto-style3">Vehicles</td>
                 <td class="auto-style1"><asp:TextBox ID="TextBox47" runat="server" onchange="st4()" AutoPostBack="False" TextMode="Number"  step="0.1" min="0">0.0</asp:TextBox></td>
                <td><asp:TextBox ID="TextBox48" runat="server" TextMode="MultiLine"></asp:TextBox></td>
            </tr>
            <tr class="bold highl">
                <td></td>
                <td class="auto-style2">Total</td>
                 <td class="auto-style1">
                     <asp:Label ID="Label8" runat="server" Text=""></asp:Label></td>
                <td></td>
            </tr>
        </table>
        <br />
        <br />
        Upload Annexures:<br />
        <asp:FileUpload ID="FileUpload1" runat="server" /><br/>
        <asp:FileUpload ID="FileUpload2" runat="server" /><br/>
        <asp:FileUpload ID="FileUpload3" runat="server" /><br/><br/>
        <asp:Button ID="Button1" runat="server" Text="Submit" CssClass="button" OnClick="Button1_Click" />
    </div>
            </asp:View>
            <asp:View ID="View2" runat="server">
                <div style="font-size:14px;font-weight:700">
                    Congratulations, your budget details have been successfully submiited. Below is preview of the data submitted.<br />
                </div>
                <div style="width:60%;margin-left:20%;margin-right:20%">
        <span style="float:right">
            <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label>
        </span><br />
        <div style="text-align:center;font-weight:700">
            Dept/Div/unit/Section Name:	<asp:Label ID="Label11" runat="server" Text="Label"></asp:Label>
        </div>
        <table>
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
                <td class="auto-style1"><asp:Label ID="Label12" runat="server" Text="Label"></asp:Label></td>
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
                <td class="auto-style1"><asp:Label ID="Label13" runat="server" Text="Label"></asp:Label></td>
                <td><asp:Label ID="Label14" runat="server" Text="Label"></asp:Label></td>
            </tr>
            <tr>
                <td></td>
                <td>-Equipment</td>
                <td class="auto-style1"><asp:Label ID="Label15" runat="server" Text="Label"></asp:Label></td>
                <td><asp:Label ID="Label16" runat="server" Text="Label"></asp:Label></td>
            </tr>
            <tr>
                <td></td>
                <td>-Others (Pls Specify)</td>
                <td class="auto-style1"><asp:Label ID="Label17" runat="server" Text="Label"></asp:Label></td>
                <td><asp:Label ID="Label18" runat="server" Text="Label"></asp:Label></td>
            </tr>
            <tr class="highl">
                <td></td>
                <td>Sub-Total</td>
                <td class="auto-style1"><asp:Label ID="Label19" runat="server" Text="Label"></asp:Label></td>
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
                <td class="auto-style1"><asp:Label ID="Label20" runat="server" Text="Label"></asp:Label></td>
                <td><asp:Label ID="Label21" runat="server" Text="Label"></asp:Label></td>
            </tr>
            <tr>
                <td></td>
                <td>-Others (Pls Specify)</td>
                <td class="auto-style1"><asp:Label ID="Label22" runat="server" Text="Label"></asp:Label></td>
                <td><asp:Label ID="Label23" runat="server" Text="Label"></asp:Label></td>
            </tr>
            <tr class="highl">
                <td></td>
                <td>Sub-Total</td>
                <td class="auto-style1"><asp:Label ID="Label24" runat="server" Text="Label"></asp:Label></td>
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
                <td class="auto-style1"><asp:Label ID="Label25" runat="server" Text="Label"></asp:Label></td>
                <td><asp:Label ID="Label26" runat="server" Text="Label"></asp:Label></td>
            </tr>
            <tr>
                <td></td>
                <td>Maintenance of Tools and Spares, ups batteries etc.</td>
                <td class="auto-style1"><asp:Label ID="Label27" runat="server" Text="Label"></asp:Label></td>
                <td><asp:Label ID="Label28" runat="server" Text="Label"></asp:Label></td>
            </tr>
            <tr>
                <td></td>
                <td>Equipment Rent</td>
                <td class="auto-style1"><asp:Label ID="Label29" runat="server" Text="Label"></asp:Label></td>
                <td><asp:Label ID="Label30" runat="server" Text="Label"></asp:Label></td>
            </tr>
            <tr>
                <td></td>
                <td>Chemicals and Glassware</td>
                <td class="auto-style1"><asp:Label ID="Label31" runat="server" Text="Label"></asp:Label></td>
                <td><asp:Label ID="Label32" runat="server" Text="Label"></asp:Label></td>
            </tr>
            <tr>
                <td></td>
                <td>Contingency (Refreshment, minor Transportation Charges etc,)</td>
                <td class="auto-style1"><asp:Label ID="Label33" runat="server" Text="Label"></asp:Label></td>
                <td><asp:Label ID="Label34" runat="server" Text="Label"></asp:Label></td>
            </tr>
            <tr>
                <td></td>
                <td>Lab and Class Room consumables(stores itemes other than chemicals and Glassware)</td>
                <td class="auto-style1"><asp:Label ID="Label35" runat="server" Text="Label"></asp:Label></td>
                <td><asp:Label ID="Label36" runat="server" Text="Label"></asp:Label></td>
            </tr>
            <tr>
                <td></td>
                <td>Minor stationery and consumables directly purchased</td>
                <td class="auto-style1"><asp:Label ID="Label37" runat="server" Text="Label"></asp:Label></td>
                <td><asp:Label ID="Label38" runat="server" Text="Label"></asp:Label></td>
            </tr>
            <tr>
                <td></td>
                <td>-Others (Pls Specify)</td>
                <td class="auto-style1"><asp:Label ID="Label39" runat="server" Text="Label"></asp:Label></td>
                <td><asp:Label ID="Label40" runat="server" Text="Label"></asp:Label></td>
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
                <td class="auto-style1"><asp:Label ID="Label41" runat="server" Text="Label"></asp:Label></td>
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
                <td class="auto-style1"><asp:Label ID="Label42" runat="server" Text="Label"></asp:Label></td>
                <td></td>
            </tr>
        </table>
        <br />
        <br />
        <table>
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
                <td class="auto-style1">Budgeted Amount <asp:Label ID="Label43" runat="server" Text="Label"></asp:Label> (Total in Lakhs)</td>
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
                 <td class="auto-style1"><asp:Label ID="Label44" runat="server" Text="Label"></asp:Label> </td>
                <td><asp:Label ID="Label45" runat="server" Text="Label"></asp:Label> </td>
            </tr>
            <tr >
                <td>2.1</td>
                <td class="auto-style3">ICT- Computers Software</td>
                 <td class="auto-style1"><asp:Label ID="Label46" runat="server" Text="Label"></asp:Label> </td>
                <td><asp:Label ID="Label47" runat="server" Text="Label"></asp:Label> </td>
            </tr>
            <tr >
                <td>2.2</td>
                <td class="auto-style3">ICT- Servers</td>
                 <td class="auto-style1"><asp:Label ID="Label48" runat="server" Text="Label"></asp:Label> </td>
                <td><asp:Label ID="Label49" runat="server" Text="Label"></asp:Label> </td>
            </tr>
            <tr >
                <td>2.3</td>
                <td class="auto-style3">ICT- Hardware peripherals</td>
                 <td class="auto-style1"><asp:Label ID="Label50" runat="server" Text="Label"></asp:Label> </td>
                <td><asp:Label ID="Label51" runat="server" Text="Label"></asp:Label> </td>
            </tr>
            <tr >
                <td>2.4</td>
                <td class="auto-style3" >ICT-Networking Equipment-IP Phones etc.</td>
                 <td class="auto-style1"><asp:Label ID="Label52" runat="server" Text="Label"></asp:Label> </td>
                <td><asp:Label ID="Label53" runat="server" Text="Label"></asp:Label> </td>
            </tr>
            <tr >
                <td>2.5</td>
                <td class="auto-style3" >ICT-PCs</td>
                 <td class="auto-style1"><asp:Label ID="Label54" runat="server" Text="Label"></asp:Label> </td>
                <td><asp:Label ID="Label55" runat="server" Text="Label"></asp:Label> </td>
            </tr>
            <tr >
                <td>2.6</td>
                <td class="auto-style3">ICT-Video Projectors etc.</td>
                <td class="auto-style1"><asp:Label ID="Label56" runat="server" Text="Label"></asp:Label> </td>
                <td><asp:Label ID="Label57" runat="server" Text="Label"></asp:Label> 
                </td>
            </tr>   
            <tr >
                <td>3</td>
                <td class="auto-style3">Furniture and Fittings </td>
                 <td class="auto-style1"><asp:Label ID="Label58" runat="server" Text="Label"></asp:Label> </td>
                <td><asp:Label ID="Label59" runat="server" Text="Label"></asp:Label> </td>
            </tr>
            <tr >
                <td>4.1</td>
                <td class="auto-style3">Equipments- Lab/Institute Utilities</td>
                 <td class="auto-style1"><asp:Label ID="Label60" runat="server" Text="Label"></asp:Label> </td>
                <td><asp:Label ID="Label61" runat="server" Text="Label"></asp:Label> </td>
            </tr>
            <tr >
                <td>4.2</td>
                <td class="auto-style3">Equipments - 50% share towards research equipments santioned by GOI agencies.</td>
                <td class="auto-style1"><asp:Label ID="Label62" runat="server" Text="Label"></asp:Label> </td>
                <td><asp:Label ID="Label63" runat="server" Text="Label"></asp:Label> </td>
            </tr>
            <tr >
                <td>5</td>
                <td class="auto-style3">Vehicles</td>
                 <td class="auto-style1"><asp:Label ID="Label64" runat="server" Text="Label"></asp:Label> </td>
                <td><asp:Label ID="Label65" runat="server" Text="Label"></asp:Label> </td>
            </tr>
            <tr class="bold highl">
                <td></td>
                <td class="auto-style2">Total</td>
                 <td class="auto-style1"><asp:Label ID="Label66" runat="server" Text="Label"></asp:Label> 
                    </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <br />
        <br />
    </div>
            </asp:View>
        
       </asp:MultiView>
    </form>
</body>
</html>
