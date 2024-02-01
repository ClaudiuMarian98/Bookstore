<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="userlogin.aspx.cs" Inherits="WebApplication1.userlogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-6 mx-auto">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="150px" src="images/generaluser.png" />
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col mb-5">
                                <center>
                                    <h3>Member Login</h3>
                                </center>
                            </div>
                        </div>

                      

                        <div class="row">
                            <div class="col">
                                <div class="form-group mb-1">
                                    <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Email"></asp:TextBox>
                                </div>   

                                <div class="form-group mb-3">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                                </div>   

                                <div class="form-group mb-3">
                                    <asp:Button class="btn btn-success w-100 btn-lg" ID="Button1" runat="server" Text="Login" />
                                </div> 

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
