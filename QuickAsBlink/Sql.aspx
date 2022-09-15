<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Sql.aspx.cs" Inherits="QuickAsBlink.Sql" %>





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
     <%-- <div  class="col">
          <br />
          <br />
      <div class="card" style="width: 20rem;">
  <img class="card-img-top" src="imgs/sqlcommand.jpg" alt="Card image cap">
  <div class="card-body">
    <h5 class="card-title">Insert , Delete , Update</h5>
    <p class="card-text"></p>
     
      <hr />
<button type="button" class="btn" data-toggle="modal" style="width:16rem;"
    data-target="#exampleModalCenter2" >
  CheatSheet
</button>
      <hr />
   
            <asp:Button class="btn"  ID="Button1" runat="server" Text="Quiz" style="width:16rem;"></asp:Button>

      <hr />
            <asp:Button class="btn2"  ID="Button2" runat="server" Text="PDF Download" onclick="downloadbtn_Click"
                style="width:16rem;" ></asp:Button>



  </div>
     </div>
       


<!-- Modal -->
<div class="modal fade" id="exampleModalCenter2" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle2" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle2">Modal title</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <img src="imgs/java.jpg" />
      </div>
      <div class="modal-footer">
        
      </div>
    </div>
  </div>
</div>
          </div> 

      
     --%>
<%--card 1 end ----------------------------------------%>
       

<%--card 2 and its contect--%>
         <div class="col">
                 <br />
      <br />
      <div class="card" style="width: 20rem;">
  <img class="card-img-top" src="imgs/sql-join.png" alt="Card image cap">
  <div class="card-body">
    <h5 class="card-title">Join</h5>
    <p class="card-text"></p>
     
      <hr />

<button type="button" class="btn" data-toggle="modal" style="width:16rem;"
    data-target="#exampleModalCenter" >
  CheatSheet
</button>
      <hr />
   
      <button type="button" class="btn" data-toggle="modal" data-target="#testQ" style="width:16rem;">
  Quiz
</button>
           

      <hr />
            <asp:Button class="btn2"  ID="downloadbtn" runat="server" Text="PDF Download " style="width:16rem;"
                onclick="downloadbtn_Click" ></asp:Button>
  </div>
     </div>
 
<!--CheatSheet Modal -->
       
<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document" >
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">Cheat Sheet</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
           <div class="card" style="width:20rem;">
  <img class="card-img-top" src="imgs/JoinSql.png" alt="Card image cap">
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
         <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Always" ChildrenAsTriggers="true" >
             <ContentTemplate>
           <div class="card" style="width:20rem;">
             
                 <img class="card-img-top" src="imgs/joinQuiz.png" alt="Card image cap">
               <hr />
                  <asp:Label ID="result" runat="server" Font-Bold="True" Font-Size="12pt" Text="" ></asp:Label> 
               <hr />
    <br />
  
<asp:Label ID="Label1" runat="server" Font-Bold="true"  Text="1. You want to find the stadium where player 'Dimitris Salpingidis' scored. Select the JOIN condition to use:"></asp:Label>
 <asp:RadioButtonList ID="rbl1" runat="server">
    <asp:ListItem Text=" eteam JOIN game ON (id=team1)" Value="1"  />
    <asp:ListItem Text="eteam JOIN game ON (id=team2)" Value="2" />
    <asp:ListItem Text=" eteam JOIN goal ON (teamid=id)" Value="3" />
    <asp:ListItem Text=" game JOIN goal ON (id=matchid)" Value="4" />
</asp:RadioButtonList>
                 <hr/>
<asp:Label ID="Lq1" runat="server" Text=""  style="text-align:center"></asp:Label>

 <asp:Label ID="Label2"  Font-Bold="true" runat="server" Text="2. You JOIN the tables goal and eteam in an SQL statement. Indicate the list of column names that may be used in the SELECT line:"></asp:Label>
     <asp:RadioButtonList ID="rbl2" runat="server">
    <asp:ListItem Text=" gtime, mdate, stadium, matchid" Value="1" />
    <asp:ListItem Text=" mdate, stadium, id" Value="2" />
    <asp:ListItem Text="matchid, teamid, player, gtime, id, teamname, coach" Value="3" /> 
    <asp:ListItem Text=" matchid, teamid, player, gtime, mdate, stadium, team1" Value="4" />
</asp:RadioButtonList>
<asp:Label ID="Lq2" runat="server" Text=""></asp:Label>

 <asp:Label ID="Label3" runat="server" Font-Bold="true"  Text="3. Select the code which shows players, their team and the amount of goals they scored against Greece(GRE)."></asp:Label>
     <asp:RadioButtonList ID="rbl3" runat="server">
    <asp:ListItem Text="SELECT player, teamid, COUNT(*)
  FROM game JOIN goal ON matchid = id
 WHERE (team1 = 'GRE' OR team2 = 'GRE')
   AND teamid != 'GRE'
 GROUP BY player, teamid" Value="1" />
    <asp:ListItem Text="SELECT player, teamid, COUNT(*)
  FROM game JOIN goal ON matchid = id
 WHERE (team1 = 'GRE') AND teamid != 'GRE'
 GROUP BY player, teamid" Value="2" />
    <asp:ListItem Text="SELECT player, teamid, COUNT(*)
  FROM game JOIN goal ON matchid = id
 WHERE (team1 = 'POL' OR team2 ='POL')
   AND teamid != 'POL'
 GROUP BY player, teamid" Value="3" />
</asp:RadioButtonList>
<asp:Label ID="Lq3" runat="server" Text=""></asp:Label>


 <asp:Label ID="Label4" runat="server" Font-Bold="true"  Text="4. Select the code which would show the player and their team for those who have scored against Poland(POL) in National Stadium, Warsaw."></asp:Label>
     <asp:RadioButtonList ID="rbl4" runat="server">
    <asp:ListItem Text="   SELECT DISTINCT player, teamid 
  FROM game JOIN goal ON matchid = id 
  WHERE stadium = 'National Stadium, Warsaw' 
 AND (team1 = 'GER' OR team2 = 'GER')
   AND teamid != 'GER'" Value="1" />
    <asp:ListItem Text="  SELECT DISTINCT player, teamid 
   FROM game JOIN goal ON matchid = id 
  WHERE stadium = 'National Stadium, Warsaw' 
 AND (team1 = 'POL' OR team2 = 'POL')
   AND teamid != 'POL'" Value="2" />
    <asp:ListItem Text=" 
 SELECT DISTINCT player, teamid 
   FROM game JOIN goal ON matchid = id 
  WHERE stadium = 'National Stadium, Warsaw' AND teamid != 'POL'" Value="3" /> 
</asp:RadioButtonList>
<asp:Label ID="Lq4" runat="server" Text=""></asp:Label>

                            


               </div>
  </ContentTemplate>
            <Triggers>
                 <asp:AsyncPostBackTrigger ControlID="Button4" 
                /> 
                            </Triggers>
                 </asp:UpdatePanel>  
      </div>
          
         <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
           
         
        <asp:Button type="button" class="btn"  
                 id="Button4" onclick="SubmitJoin_Click" runat="server" Text="View Result"  ></asp:Button> 
            
     
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
