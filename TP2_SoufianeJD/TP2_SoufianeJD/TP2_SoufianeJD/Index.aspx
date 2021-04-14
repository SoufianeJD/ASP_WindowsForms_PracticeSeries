<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="TP2_SoufianeJD.Index" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
   

        <div class="center">
       
             <div class="Africa">
              
                
                 <div class="text">
                      <img class="logo "src="Images/earthL.png" />
                      <b class="text1"> </b>
                 </div>
             
                
           </div>
            <div class="center1">
                     <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators moveUp">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img class="d-block w-100" src="<%=img1 %>" alt="First slide">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="<%=img2 %>" alt="Second slide">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="<%=img3 %>" alt="Third slide">
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
                <div class="titre">

                    <h1></h1>
                    </div>
                <div class="second">
                     <h2><%= txt1 %></h2>
                </div>
                   
                

              
            </div>
            </div>
         <div class="card1" style="width: 18rem;">
            <center><h5 class="card-title"> <%=txt2 %></h5></center> 
  <img src="<%=img4 %>" class="card-img-top" >
  <div class="card-body">
    <h5 class="card-title">Winter-Season</h5>
    <p class="card-text"><%=txt5 %></p>
    <a class="btn btn-primary">More</a>
  </div>
</div>
        <div class="card2" style="width: 18rem;">
              <center><h5 class="card-title"><%=txt3 %></h5></center> 
        <img src="<%=img5 %>"  class="card-img-top" >
  <div class="card-body">
    <h5 class="card-title">Spring-Season</h5>
    <p class="card-text"><%=txt6 %> </p>
    <a class="btn btn-primary">More</a>
  </div>
</div>
         <div class="card3" style="width: 18rem;">
           <center><h5 class="card-title"><%=txt4 %> </h5></center>   
        <img src="<%=img6 %>" class="card-img-top" > 
  <div class="card-body">
    <h5 class="card-title">Summer-Season</h5>
    <p class="card-text"><%=txt7 %></p>
    <a class="btn btn-primary">More</a>
  </div>
</div>

        
   
    <script src="font/font/js/all.js"></script>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</asp:Content>
