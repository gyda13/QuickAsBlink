<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ShowUsersFiles.aspx.cs" Inherits="QuickAsBlink.Admin.ShowUsersFiles" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


        <!DOCTYPE html>

<html>
    <head>
         <title></title>

    <link href="/Style/Site.css" rel="stylesheet" type="text/css" />
               <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    </head>
<body>
    <center>
<div class="container">


     <asp:GridView runat="server" ID="gridviewFiles" UseAccessibleHeader="true" CssClass="table table-hover table-condensed mytable" AutoGenerateColumns="false">
<Columns>
<asp:BoundField HeaderText="Id" DataField="Id" />
<asp:BoundField HeaderText="File name" DataField="FileN" />

<asp:TemplateField HeaderText="File">
<ItemTemplate>
<asp:LinkButton runat="server" Text='<%# Eval("FilePath") %>'
OnClick="FileDownload_Clicked"/>
</ItemTemplate>
</asp:TemplateField>
</Columns>
</asp:GridView>

    <br />

    <asp:Button class="btn" ID="Export" runat="server" Text="Export To Excel" OnClick="Export_Click" style="width:15rem;"></asp:Button>
    </div>
    </center>

    </body>
    </html>



</asp:Content>
