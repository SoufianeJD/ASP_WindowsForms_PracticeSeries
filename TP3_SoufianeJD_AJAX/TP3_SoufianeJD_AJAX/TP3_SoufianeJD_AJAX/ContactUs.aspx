<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="TP3_SoufianeJD_AJAX.ContactUs" %>

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
        <li class="nav-item active dropdown">
           <a class="nav-link dropdown-toggle" href="/">
          Home
        </a> 
        </li>



        <li class="nav-item active">
          <a class="nav-link">    About    </a>
        </li>

           <li class="nav-item active dropdown">
           <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Pages
        </a>
        </li>

        <li class="nav-item active">
          <a class="nav-link" href="/">   Gallery    </a>
        </li>
           <li class="nav-item active">
          <a class="nav-link" href="/">   Blog   </a>
        </li>
       
        <li class="nav-item active">
          <a class="nav-link" href="/ContactUs.aspx">    Contact    </a>
        </li>
       
      </ul>
    </div>
  </nav>
  </section>



</head>
<body>
    <form id="form1" runat="server">
        <div>

             <div class="center">
   
             <div class="Africa">
              
                
                 <div class="text">
                      <img class="logo "src="Images/earthL.png" />
                      <b class="text1"> Safari Adventure  </b>
                 </div>  
           </div>
            
         
            </div>
        
        <div class="container container d-flex justify-content-center">

        <div class="container p-5">
            <div class="row ">
<div class="col-12">
    <h4></h4>
</div>
                </div>
            <div class="row ">

<div class="col-12">
     <h4><%=contactus_aspx.txt1%></h4>

    <i class="fas fa-home"></i><span>  <%=contactus_aspx.txt2 %></span>

</div>

            </div>

            <div class="row mt-4">

                <div class="col-12">
                   <h4> <%=contactus_aspx.txt3 %></h4>
                </div>

            </div>

            <div class="row ">

              <div class="col-12"><i class="fas fa-phone"></i><span>    <%=contactus_aspx.txt4 %> </span></div> 
              <div class="col-12"><i class="fas fa-suitcase"></i><span>     <%=contactus_aspx.txt5%> </span></div>
            </div>

            <div class="row mt-4">
                <div class="col"><h4><%=contactus_aspx.txt6 %> </h4></div>
            </div>

            <div class="row ">
              <div class="col-12"><i class="fas fa-envelope"></i><span>    <%=contactus_aspx.txt7 %>span></div>
                <div class="col-12"><i class="far fa-arrow"></i><span> <%=contactus_aspx.txt8 %> <a href="https://www.youtube.com/channel/UC6hiZNK9HgGWwPPtajdjfyw?view_as=subscriber" style="color:burlywood;">MyYoutube</a></span></div>
            </div>

            </div>

        <div class="container p-5">
            <div class="row">
                <div class="col-12">
                   <h4> <%=contactus_aspx.txt9 %></h4>
                    
                </div>
                <div class="col-12">
                    <span> <%=contactus_aspx.txt10 %> </span>
                    </div>
                
                <div class="backwhite">

                <div class="row pt-3 pb-2">
        
               <asp:TextBox ID="name" runat="server" placeholder="Name"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid Name Format" ControlToValidate="name" ValidationExpression="^[\w'\-,.][^0-9_!¡?÷?¿/\\+=@#$%ˆ&*(){}|~<>;:[\]]{2,}$"></asp:RegularExpressionValidator>
          
               <asp:TextBox ID="prenom" runat="server" placeholder="Prenom"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Invalid Prenom Format" ControlToValidate="prenom" ValidationExpression="^[\w'\-,.][^0-9_!¡?÷?¿/\\+=@#$%ˆ&*(){}|~<>;:[\]]{2,}$"></asp:RegularExpressionValidator>
                    </div>

                    <div class="row pt-3 pb-2">
                        <asp:TextBox ID="email" runat="server" placeholder="Email"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Invalid Email Format" ControlToValidate="email" ValidationExpression="([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$"></asp:RegularExpressionValidator>

                    
                        <asp:TextBox ID="phone" runat="server" placeholder="Phone(XXX-XXX-XXXX)"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="Invalid Phone Format" ControlToValidate="phone" ValidationExpression="^(\+\d{1,2}\s)?\(?\d{3}\)?[\s.-]\d{3}[\s.-]\d{4}$"></asp:RegularExpressionValidator>
                    </div>
                    
                    <div class="col-12 pb-2">
                 
                    <asp:TextBox ID="msg" runat="server" placeholder="Message" Height="100px" Width="500px"></asp:TextBox>
                     <asp:Label ID="succes" runat="server" Text="" ForeColor="Green"></asp:Label>  
                      <asp:Label ID="failed" runat="server" Text="" ForeColor="Red"></asp:Label>

                        </div>


               
                    <input type="button" id="b1" value="insert" onclick="insert();" />





                    </div>
                    </div>
            </div>
                
        </div>            
            
                  
            
            </span>            
            <script>

                function insert() {
                    var name = document.getElementById("name").value;
                    var prenom = document.getElementById("prenom").value;
                    var email = document.getElementById("email").value;
                    var phone = document.getElementById("phone").value;
                    var msg = document.getElementById("msg").value;

                    var xmlhttp = new XMLHttpRequest();
                    xmlhttp.open("GET", "insert.aspx?name=" + name + "&prenom=" + prenom + "&email=" + email + "&phone=" + phone + "&msg=" + msg, false);

                    xmlhttp.send(null);

                }

            </script>
                  

        </div>
    </form>
</body>
</html>
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                Create procedure [dbo].[inscription]    
(    
  
  
    @username VARCHAR (50),
    @name     VARCHAR (50),
    @lastname VARCHAR (50),
    @birthday VARCHAR (50),
    @gender   VARCHAR (10),
    @phone    VARCHAR (50),
    @email    VARCHAR (100)
)    
as    
begin    
   Insert into inscription values(@username,@name,@lastname,@birthday,@gender,@phone,@email)    
End    
                
                
                
                
                
                
                CREATE TABLE [dbo].[inscription] (
    [Id]       INT           IDENTITY (1, 1) NOT NULL,
    [username] VARCHAR (50)  NULL,
    [name]     VARCHAR (50)  NULL,
    [lastname] VARCHAR (50)  NULL,
    [birthday] VARCHAR (50)  NULL,
    [gender]   VARCHAR (10)  NULL,
    [phone]    VARCHAR (50)  NULL,
    [email]    VARCHAR (100) NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);
