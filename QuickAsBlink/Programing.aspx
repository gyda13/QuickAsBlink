<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Programing.aspx.cs" Inherits="QuickAsBlink.Subjects.Programing" %>
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

              <div class="row">

 <div  class="col-sm">
     <br />
          <br />
      <div class="card" style="width: 20rem; ">
  <img class="card-img-top" src="imgs/java.jpg" alt="Card image cap">
          <br />
  <div class="card-body">
    <h3 class="card-text">Java</h3>

      <hr />
               <a href="java.aspx" class="btn">Start</a>
  </div>
</div>
     </div>
  <div  class="col-sm">
        <br />
      <br />
      <div class="card" style="width: 20rem; height:24.5rem;">
  <img class="card-img-top" src="imgs/c.jpg" alt="Card image cap">
  <div class="card-body">
          <h3 class="card-text">C#</h3>
    <hr />
          <button type="button" class="btn" data-toggle="modal"  data-target="#msg" >
  start
</button>

  </div>
</div>
 </div>

<div  class="col-sm">
        <br />
      <br />
      <div class="card" style="width: 20rem;">
  <img class="card-img-top" src="imgs/Python.Jpg" alt="Card image cap">
  <div class="card-body">
          <h3 class="card-text">Python</h3>
    
       <hr />
          <button type="button" class="btn" data-toggle="modal"  data-target="#msg" >
  start
</button>

  </div>
</div>
 </div>

   

               
       </div>

<%--Modal--%>
              <div class="modal fade" id="msg" tabindex="-1" role="dialog" aria-labelledby="msgtitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="msgtitle"></h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      <h5>Sorry, This Subject are not ready yet.</h5>
          <a href="home.aspx"> Follow our newsletter for the latest update</a>
      </div>
      <div class="modal-footer">
        
      </div>
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
