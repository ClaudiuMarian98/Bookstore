<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="usersignup.aspx.cs" Inherits="WebApplication1.usersignup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    
    <div class="container">
     <div class="row">
         <div class="col-md-8 mx-auto">
             <div class="card"> 
                 <div class="card-body">
                     <div class="row">
                         <div class="col">
                             <center>
                                 <img width="100px" src="images/generaluser.png" />
                             </center>
                         </div>
                     </div>

                     <div class="row">
                         <div class="col mb-5">
                             <center>
                                 <h4>User Sign up</h4>
                             </center>
                         </div>
                     </div>





                     <div class="row">

                         <div class="col-md-6">

                             
                             <div class="form-group mb-1">
                                 <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Full Name"></asp:TextBox>
                             </div>  

                         </div>


                             <div class="col-md-6">


                               <div class="form-group mb-3">
                                   <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Date of Birth" TextMode="Date"> </asp:TextBox>
                               </div>  
                             
                            
                             </div>
                         </div>


                      <div class="row">
                         <div class="col-md-6">


                           <div class="form-group mb-3">
                               <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Contact Number" TextMode="Number"></asp:TextBox>
                           </div>  
                             
                            
                         </div>

                         <div class="col-md-6">


                           <div class="form-group mb-3">
                               <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Email" TextMode="Email"></asp:TextBox>
                           </div>  
                             
                            
                         </div>
                        </div>


                       <div class="row">
                         <div class="col-md-4">


                           <div class="form-group mb-3">
                               <asp:DropDownList ID="DropDownList1" class="form-control" runat="server">
                                   <asp:ListItem Text="Select" Value="select" />
                                   <asp:ListItem Text="Romania" Value="Romania" />
                                   <asp:ListItem Text="UK" Value="UK" />
                                   <asp:ListItem Text="USA" Value="USA" />
                                   <asp:ListItem Text="Germany" Value="Germany" />
                                   <asp:ListItem Text="Russia" Value="Russia" />
                                   <asp:ListItem Text="Spain" Value="Spain" />
                                   <asp:ListItem Text="Austria" Value="Austia" />
                                   <asp:ListItem Text="Portugal" Value="Portugal" />
                                   <asp:ListItem Text="Sweden" Value="Sweden" />
                                   <asp:ListItem Text="Poland" Value="Poland" />
                                   <asp:ListItem Text="France" Value="France" />

                               </asp:DropDownList>
                           </div>  
                             
                            
                         </div>


                         <div class="col-md-4">


                           <div class="form-group mb-3">
                               <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="City" ></asp:TextBox>
                           </div>  
                             
                            
                         </div>

                         <div class="col-md-4">


                           <div class="form-group mb-3">
                               <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" placeholder="Zip Code" TextMode="Number"></asp:TextBox>
                           </div>  
                             
                            
                        </div>
                     
                           </div>
                   


                     <div class="row">
                         <div class="col">
                             <div class="form-group mb-5">
                                  <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Full Address" TextMode="MultiLine"></asp:TextBox>
                             </div> 
                         </div>
                    </div>

                     <div class="row">
                         <div class="col">

                        <h4>Login Credentials </h4>
                             

                         </div>
                     </div>


                       <div class="row">
                         <div class="col-md-6">

                             
                             <div class="form-group mb-3">
                                 <asp:TextBox CssClass="form-control" ID="TextBox8" runat="server" placeholder="User ID"></asp:TextBox>
                             </div>  

                         </div>


                             <div class="col-md-6">


                               <div class="form-group mb-3">
                                   <asp:TextBox CssClass="form-control" ID="TextBox9" runat="server" placeholder="Password" TextMode="Password"> </asp:TextBox>
                               </div>  
                             
                            
                             </div>
                         </div>




                     <div class="row">
                         <div class="col">





                             <div class="form-group mb-3">
                                <a href="usersignup.aspx">  <asp:Button class="btn btn-primary w-100 btn-lg" ID="Button2" runat="server" Text="Sign Up" />
                             </div> 


                         </div>
                     </div>

                 </div>

             </div>


             <a href="homepage.aspx"><-Home</a><br><br>
         </div>
     </div>
 </div>
</asp:Content>
