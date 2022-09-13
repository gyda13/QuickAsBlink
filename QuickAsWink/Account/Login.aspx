<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="QuickAsBlink.Account.Login" %>
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

    <div class="container">
   
        <center>
                <div class="card " style="width: 22rem; height:15rem;">

  <div class="card-body">
    <h5 class="card-title">Admin Log In</h5>
    <p class="card-text"></p>

               <table class="style1">
            
            <tr>
                <td class="style2">
                    User Name</td>
                <td>
                    <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
  
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Password</td>
                <td>
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox> 
                </td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    <asp:Button ID="btnLogin" runat="server" onclick="btnLogin_Click" 
                        Text="Login"  />
                </td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    <asp:Label ID="lblOutput" runat="server" Font-Bold="True" Font-Size="10pt" ForeColor="red"></asp:Label>
                </td>
            </tr>
        </table>
       
  </div>
</div>
                    
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
    <br />

</asp:Content>
