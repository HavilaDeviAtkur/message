<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="message.WebForm5" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 1584px;
            height: 371px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section>
        <img src="Images/save.jpg" class="auto-style1" />
    </section>


    <section>

        <div class="container">
            <div class="row">
                <div class="col-12">
                    <center>
                        <h2>Looking for a Blood Donor</h2>
                        <p><b>Simply SignIn by Registering and Post requirement someone will get in touch with you</b></p>
                    </center>
                </div>
            </div>
            <div class="row">
                <div class="col-md-3">
                    <center>
                        <img width="150px" src="Images/sign-up.png" />
                        <a href="Signup.aspx">
                            <h4>Sign Up</h4>
                        </a>
                        <p></p>
                    </center>
                </div>
                <div class="col-md-3">
                    <center>
                        <img width="150px" src="Images/login.png" />
                        <a href="UserLogin.aspx">
                            <h4>Login</h4>
                        </a>
                        <p></p>
                    </center>
                </div>
                <div class="col-md-3">
                    <center>
                        <img width="150px" src="Images/ads1.jpg" />
                        <a href="UserLogin.aspx">
                            <h4>Post Requirements </h4><h4>Simply Login or Create account</h4>
                        </a>

                        <p class="text-justify"></p>
                    </center>
                </div>
                <div class="col-md-3">
                    <center>
                        <img width="150px" src="Images/search.png" />
                        <a href="SearchPost.aspx">
                            <h4>Find donor</h4>
                        </a>
                        <p class="text-justify"></p>
                    </center>
                </div>
            </div>
        </div>
    </section>


</asp:Content>
