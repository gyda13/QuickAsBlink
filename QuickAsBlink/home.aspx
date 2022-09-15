<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="QuickAsBlink.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!DOCTYPE html>
<html>
<head>
    <title></title>
           <link href="/Style/Site.css" rel="stylesheet" type="text/css" />
<script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
    <meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://www.w3schools.com/lib/w3-theme-black.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css">
    <style>
        h1 {
         
 background-color:#ffffff;
 
   border: 5px solid #ffffff;
  border-radius: 10px;
  border-width: 50px;
 
}

        .btnh {
    border-style: none;
    border-color: inherit;
    border-width: medium;
    background-color:lightgray;
    color: black;
    font-size: 12px;
    padding: 16px 30px;
    cursor: pointer;
    border-radius: 5px;
    text-align: center;
    width: 100%;
}

        .btnh:hover {
            background-color: black;
            color: white;
        }
    </style>

    <style>
.special-card {

  background-color: rgba(245, 245, 245, 1);
  opacity: .8;
}
</style>


</head>


    <body  style=" 
background-image: radial-gradient( circle farthest-corner at -8.9% 51.2%,  rgba(0,80,255,0.6)0%, rgba(0,80,255,0.6) 15.9%, rgba(0,80,255,0.4) 15.9%, 
rgba(0,80,255,0.4) 24.4%, rgba(19,30,37,1) 24.5%, rgba(19,30,37,1) 66% ); " >


        <div class="container">
<center>

        <header >
  <div class="w3-center">
  <h1 class="w3-xxxlarge w3-animate-bottom">Review a Concept Quick As a Blink!</h1>

  </div>
</header>
<br />
 
  <div class="row">
  <div class="col-6">

      <div class="row-2">
            <a href="subjects.aspx" class="card special-card" style="width: 25.5rem;">
  <div class="card-body">
      <h2>Select  Subject</h2>
      <i class='fas fa-arrow-right' style='font-size:20px'></i>
  </div>
</a>
      </div>
        <br />
        <br />
      <div class="row-2">
                   <a href="JoinUs.aspx" class="card special-card" style="width: 25.5rem;  ">
  <div class="card-body">
      <h2>Upload Your Summarization</h2>
      <i class='fas fa-arrow-right' style='font-size:20px'></i>
  </div>
</a>
      </div>
         <br />
        <br />
       <br />
        <br />
        </div>

 <div class="card" style="width: 25rem; margin-left:1.5rem; ">
      <img class="card-img-top" src="imgs/5213655.jpg" alt="Card image cap">
  <div class="card-body">
      <h3>Join our newsletter for the latest update</h3><br>
         <h6>Please Enter Your Email</h6>
      <div class="input-group mb-3">
        <asp:TextBox class="form-control form-control-sm" ID="email" runat="server" placeholder="name@example.com" Height="45px"></asp:TextBox>
  <div class="input-group-append">
      <asp:Button class="btn" ID="Button1" runat="server" Text="Join"   OnClick="Joinbtn_Click" Height="45px" Width="15px" />
  </div>
</div>
          <asp:Label ID="lblMessage" runat="server"></asp:Label>  
  </div>
      </div>

  </div>


 

     </center> 
       </div> 
 </body>
    </html>

     <br />
     <br />
    <br />

</asp:Content>
