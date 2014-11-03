<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Header.ascx.cs" Inherits="UserControls_Header" %>
<div class="headerWrapper">
    <div class="headerWrapperFix">
        <h1 class="hidden">
            BITS Pilani</h1>
        <div class="logoWrapper">
            <a id="ancp" runat="server" class="logo">
                <img src="../images/BITS_Pilani_campus_logo.gif" runat="server" alt="BITS Pilani logo" />
            </a>
        </div>
        <asp:Literal ID="ltHeader" runat="server"></asp:Literal>
        <asp:Literal ID="ltTop" runat="server"></asp:Literal>
       
    </div>
</div>
<div class="infoWrapper">
    <div class="breadCrumbWrapper">
        <p>
            You are here:</p>
        <ul class="breadCrumb">
            <li class="home"><a href="index.aspx">Home</a></li>
            <li>
                <asp:Label ID="lblbc" runat="server"></asp:Label></li>
        </ul>
    </div>
</div>
