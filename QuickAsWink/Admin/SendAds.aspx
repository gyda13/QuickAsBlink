<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="SendAds.aspx.cs" Inherits="QuickAsBlink.Admin.SendAds" %>
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
                 
  <div class="card-body">
    <h5 class="card-title">Send Ads To Users</h5>
    <p class="card-text"></p>

               <table class="style1">
            
              <tr> 
                <td>
                  <asp:Label ID="Label2" runat="server" Text="Email Title"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
            <asp:TextBox ID="title" runat="server" style="margin-left: 0px" Width="379px" Height="28px"></asp:TextBox>
  
                    <br />
  
                </td>

            </tr>
            <tr> 
                <td>
                  <asp:Label ID="Label3" runat="server" Text="Email Message"></asp:Label>
                </td>
            </tr>

            <tr> 
                <td>
            <asp:TextBox ID="msg" runat="server" style="margin-left: 0px" Width="379px" Height="138px"></asp:TextBox>
                </td>
            </tr>
            <tr>
              
                <td>
            <asp:Button class="btn" ID="sbtBtn" runat="server" Text="Send Ad" OnClick="sbtBtn_Click" Width="379px" />
                </td>
            </tr>
            <tr>
              
                <td>
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="10pt" ForeColor="#33CC33" Width="379px"></asp:Label>
                </td>
            </tr>
        </table>
       
  </div>
</div>


    </center>  

</body>


</html>


</asp:Content>
