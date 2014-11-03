<%@ Page Title="" Language="C#" MasterPageFile="~/Base.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
<title>
    LOGIN
</title>
     <link href="Styles/login.css" rel="stylesheet" />
    <style>
        .button {
            display:block;
            margin-left:30%;
        width:120px;
        height:35px;
        border-radius:6px;
        border:1px solid whitesmoke;
        background-color:whitesmoke;
        margin-bottom:2em;
        cursor:pointer;
        font-weight:700;
        font-size:16px;

        }
            .button:hover {
            background-color:darkgrey;
            }
        .logint {
        width:250px;margin:0.2em 0 0.2em 2em;height:25px;border:1px solid whitesmoke;border-radius: 6px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="width:400px;height:auto;margin-left:30%;border:2px solid black;border-radius:5px;background-color:lightgrey">
    <div style="text-align:center;font-size:20px;font-weight:700;margin:0.5em 0 0.5em 0;display:block;padding-bottom:0.5em;border-bottom:2px solid black">LOGIN</div>
        <div style="font-family:Arial;line-height:40px;font-weight:700;color:black;font-size:14px;margin-left:0.6em;margin-top:1em">
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
    	Username:<asp:TextBox ID="TextBox1" runat="server" CssClass="logint" ToolTip="Username" ValidateRequestMode="Enabled"></asp:TextBox><br />
            
        Password:<asp:TextBox ID="TextBox2" runat="server" CssClass="logint" ToolTip="Password" ValidateRequestMode="Enabled" TextMode="Password"></asp:TextBox><br />
        <div>
            <div class="col"><a href="#" title="Recuperar Password">Forgot Password?</a></div>
        </div>
            
        <asp:Button ID="Button1" runat="server" Text="Submit" CssClass="button" OnClick="Button1_Click" />
        </div>
                </div>
</asp:Content>

