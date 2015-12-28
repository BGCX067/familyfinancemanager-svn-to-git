<%@ Page Language="C#" EnableViewState="false" MasterPageFile="~/Views/Home.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Views_Login" %>


<asp:Content ID="conten1" runat="server" ContentPlaceHolderID="Main">
    
    <asp:Login ID="Login1" runat="server" BackColor="#EFF3FB" BorderColor="#B5C7DE" 
    BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" 
    Font-Size="0.8em" ForeColor="#333333" EnableViewState="False">
    <TextBoxStyle Font-Size="0.8em" />
    <LoginButtonStyle BackColor="White" BorderColor="#507CD1" BorderStyle="Solid" 
        BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284E98" />
    <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
    <TitleTextStyle BackColor="#507CD1" Font-Bold="True" Font-Size="0.9em" 
        ForeColor="White" />
</asp:Login>
    
</asp:Content>