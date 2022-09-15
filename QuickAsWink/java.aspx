<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="java.aspx.cs" Inherits="QuickAsWink.java" %>
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
      <div class="card" style="width: 20rem; ">
  <img class="card-img-top" src="imgs/java-if-else-switch.png" alt="Card image cap">
          <br />
          <br />
  <div class="card-body">
    <h5 class="card-title">Control Statment</h5>
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
            <asp:Button class="btn2"  ID="Button2" runat="server" Text="PDF Download" onclick="ControlStatmentPdf_Click" style="width:16rem;" ></asp:Button>



  </div>
     </div>
       


<!--cheatSheet Modal -->
<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">Cheat Sheet</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
            <div class="card" style="width:20rem;">
                  <img class="card-img-top" src="imgs/java.jpg" alt="Card image cap">
                </div>
      </div>
      <div class="modal-footer">
        
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
  
<asp:Label ID="Label6" runat="server" Font-Bold="true"  Text="1.
Is this code segment is correct?
if(quizScore == 10)
System.out.println(''Perfect score'');"></asp:Label>
 <asp:RadioButtonList ID="r1" runat="server">
    <asp:ListItem Text="Yes" Value="1"  />
    <asp:ListItem Text="No" Value="2" />
</asp:RadioButtonList>
<asp:Label ID="L1" runat="server" Text=""  style="text-align:center"></asp:Label>

 <asp:Label ID="Label8"  Font-Bold="true" runat="server" Text="2.  
WHICH TYPE OF DECISION STRUCTURE IS THIS?
if (x==10)
{
          if (y==20)
          {
                    System.out.println(''Coordinates: 10, 20'');
          }
}"></asp:Label>
     <asp:RadioButtonList ID="r2" runat="server">
    <asp:ListItem Text="If Else if " Value="1" />
    <asp:ListItem Text="If else (binary choice)" Value="2" />
    <asp:ListItem Text="Nested If" Value="3" /> 
</asp:RadioButtonList>
<asp:Label ID="L2" runat="server" Text=""></asp:Label>

 <asp:Label ID="Label10" runat="server" Font-Bold="true"  Text="3."></asp:Label>
     <div class="card" style="width:18rem;">
 <img class="card-img-top" src="imgs/switch1.png" alt="Card image cap">

         </div>
    <asp:RadioButtonList ID="r3" runat="server" >
    <asp:ListItem Text="The case clause" Value="1" />
    <asp:ListItem Text="The break clause" Value="2" />
    <asp:ListItem Text="The continue clause" Value="3" />
</asp:RadioButtonList>
<asp:Label ID="L3" runat="server" Text=""></asp:Label>


 <asp:Label ID="Label12" runat="server" Font-Bold="true"  Text="4."></asp:Label>
     <asp:RadioButtonList ID="r4" runat="server">
    <asp:ListItem Text="" Value="1" />
    <asp:ListItem Text=" " Value="2" />
    <asp:ListItem Text="" Value="3" /> 
</asp:RadioButtonList>
<asp:Label ID="L4" runat="server" Text=""></asp:Label>

                            


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
                 id="resultbtn" onclick="ControlStatmentQuiz_Click" runat="server" Text="View Result"  ></asp:Button> 
            
     
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
  <img class="card-img-top" src="imgs/loop.png" alt="Card image cap">
  <div class="card-body">
    <h5 class="card-title">Loops</h5>
    <p class="card-text"></p>
     
      <hr />
<button type="button" class="btn" data-toggle="modal" data-target="#exampleModalCenter2" style="width:16rem;">
  CheatSheet
</button>
      <hr />
   
      <button type="button" class="btn" data-toggle="modal" data-target="#testQ2" data-backdrop="static" data-keyboard="false" style="width:16rem;">
  Quiz
</button>
           

      <hr />
            <asp:Button class="btn2"  ID="downloadbtn" runat="server" Text="PDF Download " onclick="LoopPdf_Click" style="width:16rem;"></asp:Button>
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
  <img class="card-img-top" src="imgs/JoinSql.png" alt="Card image cap">
               </div>
      </div>
      <div class="modal-footer">
        
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
  
<asp:Label ID="Label1" runat="server" Font-Bold="true"  Text="1."></asp:Label>
 <asp:RadioButtonList ID="rbl1" runat="server">
    <asp:ListItem Text=" " Value="1"  />
    <asp:ListItem Text="" Value="2" />
    <asp:ListItem Text="" Value="3" />
    <asp:ListItem Text="" Value="4" />
</asp:RadioButtonList>
<asp:Label ID="Lq1" runat="server" Text=""  style="text-align:center"></asp:Label>

 <asp:Label ID="Label2"  Font-Bold="true" runat="server" Text="2. "></asp:Label>
     <asp:RadioButtonList ID="rbl2" runat="server">
    <asp:ListItem Text="" Value="1" />
    <asp:ListItem Text=" " Value="2" />
    <asp:ListItem Text="" Value="3" /> 
    <asp:ListItem Text="" Value="4" />
</asp:RadioButtonList>
<asp:Label ID="Lq2" runat="server" Text=""></asp:Label>

 <asp:Label ID="Label3" runat="server" Font-Bold="true"  Text="3.."></asp:Label>
     <asp:RadioButtonList ID="rbl3" runat="server">
    <asp:ListItem Text="" Value="1" />
    <asp:ListItem Text="" Value="2" />
    <asp:ListItem Text="" Value="3" />
</asp:RadioButtonList>
<asp:Label ID="Lq3" runat="server" Text=""></asp:Label>


 <asp:Label ID="Label4" runat="server" Font-Bold="true"  Text="4."></asp:Label>
     <asp:RadioButtonList ID="rbl4" runat="server">
    <asp:ListItem Text="" Value="1" />
    <asp:ListItem Text=" " Value="2" />
    <asp:ListItem Text="" Value="3" /> 
</asp:RadioButtonList>
<asp:Label ID="Lq4" runat="server" Text=""></asp:Label>

                            


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
                 id="Button5" onclick="LoopQuiz_Click" runat="server" Text="View Result"  ></asp:Button> 
            
     
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
