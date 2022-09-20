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
        <h5 class="modal-title" id="exampleModalLongTitle">CheatSheet</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
            <div class="card" style="width:20rem;">
  <img class="card-img-top" src="imgs/ifCheatsheet.jpeg" alt="Card image cap">
  <img class="card-img-bottom" src="imgs/switchCheatsheet.jpeg" alt="Card image cap">                </div>
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
Is this code segment correct?
if(quizScore == 10)
System.out.println(''Perfect score'');"></asp:Label>
 <asp:RadioButtonList ID="r1" runat="server">
    <asp:ListItem Text="Yes" Value="1"  />
    <asp:ListItem Text="No" Value="2" />
</asp:RadioButtonList>
<asp:Label ID="L1" runat="server" Text=""  style="text-align:center"></asp:Label>

 <asp:Label ID="Label8"  Font-Bold="true" runat="server" Text="2.What will happen when you compile and run the following code?"></asp:Label>
                <div class="card" style="width:18rem;">
 <img class="card-img-top" src="imgs/ifQ2.png" alt="Card image cap">
         </div>
     <asp:RadioButtonList ID="r2" runat="server">
    <asp:ListItem Text="on" Value="1" />
    <asp:ListItem Text="off" Value="2" />
    <asp:ListItem Text="Compilation error" Value="3" /> 
    <asp:ListItem Text="Runtime error" Value="4" /> 
</asp:RadioButtonList>
<asp:Label ID="L2" runat="server" Text=""></asp:Label>

 <asp:Label ID="Label10" runat="server" Font-Bold="true"  Text="3.What will be printed when input is 2?"></asp:Label>
     <div class="card" style="width:18rem;">
 <img class="card-img-top" src="imgs/switchQ.png" alt="Card image cap">
         </div>
    <asp:RadioButtonList ID="r3" runat="server" >
    <asp:ListItem Text="Two Two default" Value="1" />
    <asp:ListItem Text="Two Three default" Value="2" />
    <asp:ListItem Text="Two" Value="3" />
    <asp:ListItem Text="Two default" Value="4" />
</asp:RadioButtonList>
<asp:Label ID="L3" runat="server" Text=""></asp:Label>


 <asp:Label ID="Label12" runat="server" Font-Bold="true"  Text="4.What would be the output of the following code snippet if variable a=10?"></asp:Label>
                <div class="card" style="width:18rem;">
 <img class="card-img-top" src="imgs/ifQ.png" alt="Card image cap">
         </div>
     <asp:RadioButtonList ID="r4" runat="server">
    <asp:ListItem Text="12" Value="1" />
    <asp:ListItem Text="23" Value="2" />
    <asp:ListItem Text="13" Value="3" /> 
     <asp:ListItem Text="3" Value="4" /> 
</asp:RadioButtonList>
<asp:Label ID="L4" runat="server" Text=""></asp:Label>

  <asp:Label ID="Label7"  Font-Bold="true" runat="server" Text="5.What will happen when you compile and run the following code?"></asp:Label>
                <div class="card" style="width:18rem;">
 <img class="card-img-top" src="imgs/ifQ2.png" alt="Card image cap">
         </div>
     <asp:RadioButtonList ID="r5" runat="server">
    <asp:ListItem Text="Hot Boiling" Value="1" />
    <asp:ListItem Text="Hot" Value="2" />
    <asp:ListItem Text="Pleasant" Value="3" /> 
    <asp:ListItem Text="Compilation error" Value="5" /> 
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
        <h5 class="modal-title" id="exampleModalLongTitle2">CheatSheet</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
           <div class="card" style="width: 20rem;">
  <img class="card-img-top" src="imgs/loopCheatsheet.jpeg" alt="Card image cap">
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
  
<asp:Label ID="Label1" runat="server" Font-Bold="true"  Text="1.What is the output?"></asp:Label>
                <div class="card" style="width:18rem;">
 <img class="card-img-top" src="imgs/loopQ.png" alt="Card image cap">
         </div>
 <asp:RadioButtonList ID="rbl1" runat="server">
    <asp:ListItem Text="1" Value="1"  />
    <asp:ListItem Text="0" Value="2" />
    <asp:ListItem Text="10" Value="3" />
    <asp:ListItem Text="9" Value="4" />
</asp:RadioButtonList>
<asp:Label ID="Lq1" runat="server" Text=""  style="text-align:center"></asp:Label>

 <asp:Label ID="Label2"  Font-Bold="true" runat="server" Text="2.Which type of loop is best known for its boolean condition that controls entry to the loop?"></asp:Label>
     <asp:RadioButtonList ID="rbl2" runat="server">
    <asp:ListItem Text="do-while loop" Value="1" />
    <asp:ListItem Text="for(traditional)" Value="2" />
    <asp:ListItem Text="for-each" Value="3" /> 
    <asp:ListItem Text="while" Value="4" />
</asp:RadioButtonList>
<asp:Label ID="Lq2" runat="server" Text=""></asp:Label>

 <asp:Label ID="Label3" runat="server" Font-Bold="true"  Text="3.Which of the following can loop through an array without referring to the elements by index?"></asp:Label>
     <asp:RadioButtonList ID="rbl3" runat="server">
    <asp:ListItem Text="do-while loop" Value="1" />
    <asp:ListItem Text="for(traditional)" Value="2" />
    <asp:ListItem Text="for-each" Value="3" /> 
    <asp:ListItem Text="while" Value="4" />
</asp:RadioButtonList>
<asp:Label ID="Lq3" runat="server" Text=""></asp:Label>


 <asp:Label ID="Label4" runat="server" Font-Bold="true"  Text="4.What will happen when you compile and run the following code?"></asp:Label>
                 <div class="card" style="width:18rem;">
 <img class="card-img-top" src="imgs/loopQ2.png" alt="Card image cap">
         </div>
     <asp:RadioButtonList ID="rbl4" runat="server">
    <asp:ListItem Text="Code will print 0 to 5" Value="1" />
    <asp:ListItem Text=" Code will print 1 to 3" Value="2" />
    <asp:ListItem Text="Code will print 0 to 4" Value="3" /> 
    <asp:ListItem Text="Code will print 1 to 4" Value="4" /> 
</asp:RadioButtonList>
<asp:Label ID="Lq4" runat="server" Text=""></asp:Label>

             
 <asp:Label ID="Label5" runat="server" Font-Bold="true"  Text="5.What will happen when you compile and run the following code?"></asp:Label>
                 <div class="card" style="width:18rem;">
 <img class="card-img-top" src="imgs/loopQ3.png" alt="Card image cap">
         </div>
     <asp:RadioButtonList ID="rbl5" runat="server">
    <asp:ListItem Text="I is 1" Value="1" />
    <asp:ListItem Text="I is 1 I is 1" Value="2" />
    <asp:ListItem Text="No output is produced" Value="3" /> 
    <asp:ListItem Text="Compilation error" Value="4" /> 
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
