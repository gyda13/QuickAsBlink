<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="JoinUs.aspx.cs" Inherits="QuickAsWink.JoinUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


<!DOCTYPE html>

<html>
<head>
<title></title>
           <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
<link href="bootstrap.min.css" rel="stylesheet" />

<style>
    .mytable {
width: 30%;
margin: 8px;
}

</style>
</head>
<body>
<center>
<div class="container">
<h2>Join Us and Upload Your Summarization</h2>
<table class="table table-condensed mytable">
<tr>
<td>Subject Name:
</td>
<td>
<asp:TextBox runat="server" ID="txtFileName" Width="150" />
</td>
</tr>
<tr>
<td>Select File:
</td>
<td>
<asp:FileUpload runat="server" ID="fileupload1" />
</td>
</tr>
<tr>
<td colspan="2">
<asp:Button runat="server" ID="btnUpload" OnClick="btnUpload_Click" Text="Join Us" CssClass="btn btn-success" />
</td>
</tr>
</table>
<asp:Label runat="server" ID="lblInfo"  Font-Bold="True" />

</div>
    </center>
</body>
</html>


    <br />
    <br />
     <br />
    <br />
     <br />
    <br />
     <br />
    <br />
     <br />
    <br />
</asp:Content>
