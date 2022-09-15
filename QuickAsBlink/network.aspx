<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="network.aspx.cs" Inherits="QuickAsBlink.network" %>
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


    <div class=" container ">

         <center>
                       
            <div class="col">
        <div class="card-deck"  >
     <%--card 1 and its contect--%>
      <div  class="col">
          <br />
          <br />
      <div class="card" style="width: 20rem;">
  <img class="card-img-top" src="imgs/layer.jpg" alt="Card image cap">
  <div class="card-body">
       <br />
      <br />
    <h5 class="card-title">OSI vs TCP/IP</h5>
    <p class="card-text"></p>
    
      <hr />
<button type="button" class="btn" data-toggle="modal" data-target="#exampleModalCenter" style="width:16rem;">
  CheatSheet
</button>
      <hr />
   
 <button type="button" class="btn" data-toggle="modal" data-target="#testQ" data-backdrop="static" data-keyboard="false" style="width:16rem;">
  Quiz
</button>
      <hr />
            <asp:Button class="btn2"  ID="Button2" runat="server" Text="PDF Download" onclick="LayerPdf_Click" style="width:16rem;"></asp:Button>



  </div>
     </div>
       


<!--CheatSheet Modal -->
<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">Modal title</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">

          <div class="card" style="width: 20rem;">

  <img class="card-img-top" src="imgs/layer1Sheet.jpeg" alt="Card image cap">
  <img class="card-img-bottom" src="imgs/layer2Sheet.jpeg" alt="Card image cap">

               </div>


      </div>
     
    </div>
  </div>
</div>




          
<!--Quiz Modal -->
<div class="modal hide fade in" id="testQ" aria-labelledby="testtitle"  tabindex="-1" role="dialog" aria-hidden="true"   data-backdrop="static">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="testtitle">Quiz</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
         <asp:UpdatePanel ID="UpdatePanel2" runat="server" UpdateMode="Always" ChildrenAsTriggers="true" >
             <ContentTemplate >
           <div class="card" style="width:20rem;">
             
               <hr />
                  <asp:Label ID="result1" runat="server" Font-Bold="True" Font-Size="12pt" Text="" ></asp:Label> 
               <hr />
    <br />
  
<asp:Label ID="Label6" runat="server" Font-Bold="true"  Text="1. What layer of the OSI model describes methods for exchanging
    data frames between devices over a common media?"></asp:Label>
 <asp:RadioButtonList ID="r1" runat="server">
    <asp:ListItem Text="Application" Value="1"  />
    <asp:ListItem Text="Data Link" Value="2" />
    <asp:ListItem Text="Physical" Value="3" />
</asp:RadioButtonList>
<asp:Label ID="L1" runat="server" Text=""  style="text-align:center"></asp:Label>

 <asp:Label ID="Label8"  Font-Bold="true" runat="server" Text="2.What layer of the OSI model contains
     protocols used for process-to-process communication?"></asp:Label>
     <asp:RadioButtonList ID="r2" runat="server">
    <asp:ListItem Text="Application" Value="1" />
    <asp:ListItem Text="Transport " Value="2" />
    <asp:ListItem Text="Data Link" Value="3" /> 
</asp:RadioButtonList>
<asp:Label ID="L2" runat="server" Text=""></asp:Label>

 <asp:Label ID="Label10" runat="server" Font-Bold="true"  Text="3.What are the four layers of the TCP/IP model?"></asp:Label>
     <asp:RadioButtonList ID="r3" runat="server">
    <asp:ListItem Text="Application, Presentation, Session, and Transport" Value="1" />
    <asp:ListItem Text="Application, Network, Data Link, and Physical" Value="2" />
    <asp:ListItem Text="Application, Transport, Internet, and Network Access" Value="3" />
</asp:RadioButtonList>
<asp:Label ID="L3" runat="server" Text=""></asp:Label>


 <asp:Label ID="Label12" runat="server" Font-Bold="true"  Text="4.What layer of the TCP/IP model controls the hardware
     devices and media that makeup the network?"></asp:Label>
     <asp:RadioButtonList ID="r4" runat="server">
    <asp:ListItem Text="Application" Value="1" />
    <asp:ListItem Text="Network Access" Value="2" />
    <asp:ListItem Text="Physical" Value="3" /> 
</asp:RadioButtonList>
<asp:Label ID="L4" runat="server" Text=""></asp:Label>

     <asp:Label ID="Label5" runat="server" Font-Bold="true"  Text="5.The OSI Layer 3, 
         the network layer, maps directly to what TCP/IP layer?"></asp:Label>
     <asp:RadioButtonList ID="r5" runat="server">
    <asp:ListItem Text="Application" Value="1" />
    <asp:ListItem Text="Internet" Value="2" />
    <asp:ListItem Text="Network Access" Value="3" /> 
</asp:RadioButtonList>
<asp:Label ID="L5" runat="server" Text=""></asp:Label>                        


               </div>
  </ContentTemplate>
            <Triggers>
                 <asp:AsyncPostBackTrigger ControlID="resultbtn" 
                /> 
                            </Triggers>
                 </asp:UpdatePanel>  
      </div>
          
         <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
           
         
        <asp:Button type="button" class="btn"  
                 id="resultbtn" onclick="LayerQuiz_Click" runat="server" Text="View Result"  ></asp:Button> 
            
     
      </div>
        


</div>
  
    </div>
              
  </div>


          </div> 

      
     
<%--card 1 end ----------------------------------------%>
       

<%--card 2 and its contect--%>
         <div class="col">
                 <br />
      <br />
      <div class="card" style="width: 20rem;">
  <img class="card-img-top" src="imgs/lan-wan.png" alt="Card image cap">
  <div class="card-body">
    <h5 class="card-title">LAN vs WAN</h5>
    <p class="card-text"></p>
     
      <hr />
<button type="button" class="btn" data-toggle="modal" data-target="#exampleModalCenter2" style="width:16rem;">
  CheatSheet
</button>
      <hr />
   
      <button type="button" class="btn" data-toggle="modal" data-target="#testQ2" data-backdrop="static" data-keyboard="false" style="width:16rem;" >
  Quiz
</button>
           

      <hr />
            <asp:Button class="btn2"  ID="downloadbtn" runat="server" Text="PDF Download " onclick="LanWanPdf_Click" style="width:16rem;" ></asp:Button>
  </div>
     </div>
 
<!--CheatSheet Modal -->
       
<div class="modal fade" id="exampleModalCenter2" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle2" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document" >
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle2">Cheat Sheet</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
           <div class="card" style="width: 20rem;">
  <img class="card-img-top" src="imgs/lanvswansheet.jpeg" alt="Card image cap">
               </div>
      </div>
  
    </div>
  </div>
</div>



<!--Quiz Modal -->
<div class="modal hide fade in" id="testQ2" aria-labelledby="testtitle2"  tabindex="-1" role="dialog" aria-hidden="true"   data-backdrop="static">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="testtitle2">Quiz</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
         <asp:UpdatePanel ID="UpdatePanel" runat="server" UpdateMode="Always" ChildrenAsTriggers="true" >
             <ContentTemplate>
           <div class="card" style="width:20rem;">
             
               <hr />
                  <asp:Label ID="result2" runat="server" Font-Bold="True" Font-Size="12pt" Text="" ></asp:Label> 
               <hr />
    <br />
  
<asp:Label ID="Label1" runat="server" Font-Bold="true"  Text="1.The following is not needed to connect to LAN:"></asp:Label>
 <asp:RadioButtonList ID="rbl1" runat="server">
    <asp:ListItem Text="The latest version of an operating system and all the updates." Value="1"  />
    <asp:ListItem Text="Network card" Value="2" />
    <asp:ListItem Text="Wireless or wired router" Value="3" />
</asp:RadioButtonList>
<asp:Label ID="Lq1" runat="server" Text=""  style="text-align:center"></asp:Label>

 <asp:Label ID="Label2"  Font-Bold="true" runat="server" Text="2.What is a WAN ?"></asp:Label>
     <asp:RadioButtonList ID="rbl2" runat="server">
    <asp:ListItem Text="Wider Allowance Networking" Value="1" />
    <asp:ListItem Text="Wide Access Network " Value="2" />
    <asp:ListItem Text="Wide Area Network" Value="3" /> 
</asp:RadioButtonList>
<asp:Label ID="Lq2" runat="server" Text=""></asp:Label>

 <asp:Label ID="Label3" runat="server" Font-Bold="true"  Text="3. What is a LAN?"></asp:Label>
     <asp:RadioButtonList ID="rbl3" runat="server">
    <asp:ListItem Text="Local Area Network" Value="1" />
    <asp:ListItem Text="Local Access Network" Value="2" />
    <asp:ListItem Text="Localized Area Network" Value="3" />
</asp:RadioButtonList>
<asp:Label ID="Lq3" runat="server" Text=""></asp:Label>


 <asp:Label ID="Label4" runat="server" Font-Bold="true"  Text="4.What is a characteristic of a WAN?"></asp:Label>
     <asp:RadioButtonList ID="rbl4" runat="server">
    <asp:ListItem Text="All computers are really close to each other." Value="1" />
    <asp:ListItem Text="Uses 3rd Party Hardware, cables or satellites." Value="2" />
    <asp:ListItem Text="Play games in your house on it." Value="3" /> 
</asp:RadioButtonList>
<asp:Label ID="Lq4" runat="server" Text=""></asp:Label>

                <asp:Label ID="Label7" runat="server" Font-Bold="true"  Text="5.What are two factors that affect network performance?"></asp:Label>
     <asp:RadioButtonList ID="rbl5" runat="server">
    <asp:ListItem Text="Traffic and bandwidth." Value="1" />
    <asp:ListItem Text="Lag and ping." Value="2" />
    <asp:ListItem Text="Banter and bants." Value="3" /> 
</asp:RadioButtonList>
<asp:Label ID="Lq5" runat="server" Text=""></asp:Label>

                            


               </div>
  </ContentTemplate>
            <Triggers>
                 <asp:AsyncPostBackTrigger ControlID="Button5" 
                /> 
                            </Triggers>
                 </asp:UpdatePanel>  
      </div>
          
         <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
           
         
        <asp:Button type="button" class="btn"  
                 id="Button5" onclick="LanWanQuiz_Click" runat="server" Text="View Result"  ></asp:Button> 
            
     
      </div>
        


</div>
  
    </div>
              
  </div>



</div>






<%--card 2 end ----------------------------------------%>








             </div>

             </div>
                       
  
              </center>
        </div>
          
        








        </body>
    </html>

</asp:Content>
