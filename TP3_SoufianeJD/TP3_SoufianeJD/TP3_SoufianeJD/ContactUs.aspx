<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="TP3_SoufianeJD.ContactUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
         
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
    <h4><%=contactus_aspx.txt1%></h4>
</div>
                </div>
            <div class="row ">

<div class="col-12">

    <i class="fas fa-home"></i><span>   <%=contactus_aspx.txt2 %></span>

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
                <div class="col"><h4> <%=contactus_aspx.txt6 %></h4></div>
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


               
                     <asp:Button ID="btnadd" runat="server" Text="Send" OnClick="ButtonAdd_Click" Width="170px" /> 
                    <asp:Button ID="btnclear" runat="server" Text="Clear" OnClick="ButtonClear_Click" Width="170px" /> 





                    </div>
                    </div>
            </div>
                
        </div>            
            
                  
            
            </span>            
            
                  
            
            </asp:Content>