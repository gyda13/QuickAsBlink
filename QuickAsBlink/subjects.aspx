<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="subjects.aspx.cs" Inherits="QuickAsBlink.WebForm1" %>
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
  <div class="row">
    <div class="col-sm-4">
        <br />
          <br />
      <div class="card" style="width: 20rem; height:22rem;" >
  <img class="card-img-top" src="imgs/programming.jpg" alt="Card image cap">
  <div class="card-body">
    <h3 class="card-text">Programming</h3>

      <hr />
               <a href="Programing.aspx" class="btn">Start</a>
  </div>
</div>
     </div>
  <br />
      <br />
<div  class="col-sm-4">
        <br />
      <br />
      <div class="card" style="width: 20rem;  height:22rem;">
  <img class="card-img-top" src="imgs/Sql.jpg" alt="Card image cap">
  <div class="card-body">
          <h3 class="card-text">SQL</h3>
    
       <hr />
               <a href="Sql.aspx" class="btn">Start</a>

  </div>
</div>
 </div>
 
      <div  class="col-sm-4">
           <br />
      <br />
      <div class="card" style="width: 20rem;  height:22rem;">
  <img class="card-img-top" src="imgs/nw.png" alt="Card image cap">
  <div class="card-body">
          <h3 class="card-text">Network</h3>
    
       <hr />
               <a href="network.aspx" class="btn">Start</a>

</div>
  </div>
</div>

               
       </div>
        </div>
              </center>
      
        </body>
    </html>






     <br />
     <br />
    <br />
              
</asp:Content>
