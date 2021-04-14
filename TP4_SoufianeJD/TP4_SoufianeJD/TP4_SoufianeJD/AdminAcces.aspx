<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminAcces.aspx.cs" Inherits="TP4_SoufianeJD.AdminAcces" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title>TP3_SoufianeJD</title>
 
    <link href="style/styleac.css" rel="stylesheet" />
    <link href="font/font/css/all.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>






    <section class ="header">
        
        </br></br>
  <nav class="navbar navbar-expand-lg navbar-light bg-light">
   
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>



    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav">
        <li class="nav-item active ">
           <a class="nav-link " href="/Accueil.aspx">
          Logout
        </a> 
        </li>

        

      
       
      </ul>
    </div>
  </nav>
  </section>



</head>
<body>
    <form id="form1" runat="server">
        

             <div class="auto-style1">
   
             <div class="Africa">
              
                
                 <div class="text">
                      <img class="logo "src="Images/earthL.png" />
                      <b class="text1"> Safari Adventure  </b>
                 </div>  
           </div>
            
         
            </div>
        <%--  --%>

         <div class="sty">

          
        <asp:Label ID="titree" runat="server" Text="Titre"></asp:Label>
               <asp:TextBox ID="title" runat="server"></asp:TextBox>
            
        <asp:Label ID="descriptionn" runat="server" Text="Description"></asp:Label>   
               <asp:TextBox ID="description" runat="server"></asp:TextBox>
      
                   

                  <asp:Label ID="commentt" runat="server" Text="Votre Commentaire"></asp:Label>
                        <asp:TextBox ID="comment" runat="server"></asp:TextBox>
          

                    
                       <asp:Label ID="pricee" runat="server" Text="Prix"></asp:Label>
                            <asp:TextBox ID="price" runat="server"></asp:TextBox>
        
             <br />
               <asp:Label ID="alert" runat="server" Text="Upload Image" ></asp:Label>
             <br />
                <asp:Label ID="img" runat="server"></asp:Label>
             <asp:FileUpload ID="Fileuploadd" runat="server" />
            
             <br />
             <br />
&nbsp;<br />
             
             <asp:Button ID="Button2" runat="server" Text="ADD"  Width="89px" Height="55px" OnClick="Button2_Click"  /> 
      
             <asp:Label ID="succes" runat="server" Text="" ForeColor="Green"></asp:Label>
         <asp:Label ID="failed" runat="server" Text="" ForeColor="Red"></asp:Label>
         
             </div>



             



    </form>
 
</body>
</html>

