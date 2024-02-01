<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="usermanagement.aspx.cs" Inherits="WebApplication1.usermanagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    
  <div class="container-fluid">
     <div class="row">
         <div class="col-md-6">

             <div class="card">
                 <div class="card-body">

                     <div class="row">
                         <div class="col mb-4">
                             <center>
                                     <h4>User Details</h4>
                                 </center>
                         </div>
                     </div>

                     <div class="row">
                         <div class="col mb-4">
                             <center>
                                     <img width="100px" src="images/generaluser.png" />
                                    
                                 </center>
                         </div>
                     </div>


                     
                  <div class="row">

                      <div class="col-md-3">

                          
                          <div class="form-group mb-1">
                            <div class="input-group">
                              <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Member ID"></asp:TextBox>
                                <asp:Button ID="Button3" class="btn btn-primary" runat="server" Text="Go" />
                          </div>  
                           </div>

                      </div>


                          <div class="col-md-4">


                            <div class="form-group mb-3">
                                <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Full Name" > </asp:TextBox>
                            </div>  
                          
                         
                          </div>

                        <div class="col-md-5">

                           <div class="form-group mb-3">
                            <div class="input-group">
                                <asp:TextBox CssClass="form-control mr-1" ID="TextBox7" runat="server" placeholder="Account Status" ReadOnly="true" > </asp:TextBox>
                                <asp:LinkButton class="btn btn-success" ID="LinkButton1" runat="server"><i class="fa-regular fa-circle-check"></i></i></asp:LinkButton>
                                <asp:LinkButton class="btn btn-warning " ID="LinkButton2" runat="server"><i class="fa-regular fa-circle-pause"></i></asp:LinkButton>
                                <asp:LinkButton class="btn btn-danger" ID="LinkButton3" runat="server"><i class="fa-regular fa-circle-xmark"></i></asp:LinkButton>
                            </div>  
                          </div>
                         
                          </div>
                      </div>
           

                <div class="row">

                    <div class="col-md-3">

        
                        <div class="form-group mb-1">
                            <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server"  TextMode="Date"></asp:TextBox>
                        </div>  

                    </div>


                        <div class="col-md-4">


                          <div class="form-group mb-3">
                              <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Contact No" TextMode="Number"> </asp:TextBox>
                          </div>  
        
       
                        </div>

                        <div class="col-md-5">


                          <div class="form-group mb-3">
                              <asp:TextBox CssClass="form-control" ID="TextBox8" runat="server" placeholder="Email ID" TextMode="Email"> </asp:TextBox>
                          </div>  
        
       
                        </div>
                    </div>

                <div class="row">

                    <div class="col-md-4">

        
                        <div class="form-group mb-1">
                            <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server"  TextMode="SingleLine" placeholder="State" ReadOnly="True"></asp:TextBox>
                        </div>  

                    </div>


                        <div class="col-md-4">


                          <div class="form-group mb-3">
                              <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server"  TextMode="SingleLine" placeholder="City" ReadOnly="True"> </asp:TextBox>
                          </div>  
        
       
                        </div>
                        <div class="col-md-4">


                          <div class="form-group mb-3">
                              <asp:TextBox CssClass="form-control" ID="TextBox9" runat="server" placeholder="Pincode" TextMode="Number" ReadOnly="True"> </asp:TextBox>
                          </div>  
        
       
                        </div>
                    </div>


               <div class="row">
                   <div class="col">

                       
                          <div class="form-group mb-3">
                              <asp:TextBox CssClass="form-control" ID="TextBox10" runat="server" placeholder="Full Postal Address" TextMode="MultiLine"> </asp:TextBox>
                          </div>  

                       </div>
                   </div>
                
               <div class="row">


                   <div class="col-8 mx-auto">


                             <div class="form-group mb-3">
                                 <asp:Button class="btn btn-danger w-100 btn-lg" ID="Button1" runat="server" Text="Delete User" />
                             </div> 


                         </div>
                     </div>
                  
                 </div>
             </div>

             <a href="homepage.aspx"><< Back to Home</a><br>
             <br>
         </div>

         <div class="col-md-6">

             <div class="card">
                 <div class="card-body">



                     <div class="row">
                         <div class="col">
                             <center>
                                     <h4>Members List</h4>
                                 </center>
                         </div>
                     </div>

                    

                     <div class="row">
                         <div class="col">
                             <hr>
                         </div>
                     </div>

                     <div class="row">
                         <div class="col">
                             <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server"></asp:GridView>
                         </div>
                     </div>


                 </div>
             </div>


         </div>

     </div>
 </div>

</asp:Content>
