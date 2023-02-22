<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UserLogin.aspx.cs" Inherits="message.UserLogin" %>
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
                                <center> <img width="150px" src="Images/generaluser.png" /></center>
                            </div>
                        </div>
                         <div class="row">
                            <div class="col">
                                <center><h3>Member Login</h3></center>
                            </div>
                        </div>
                         <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>
                         <div class="row">
                            <div class="col">
                                <label>Member ID</label>
                                <div class="form-group">

                                    <asp:TextBox CssClass="form-control" ID="txt_memberID" runat="server" placeholder="Memeber ID"></asp:TextBox>
                                </div>
                                  <label>Password</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="txt_password" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                                </div>
                                 <div class="form-group">
                                     <asp:Button class="btn btn-primary btn-block btn-lg" ID="btn_login" runat="server" Text="Login" OnClick="Btn_loginClick" />
                                     </div>
                               
                                <div class="form-group">
                                     <a href="Signup.aspx">
                                     <input class="btn btn-info btn-block btn-lg" ID="Button2" type="Button"  value="Sign Up"/></a>
                                     </div>
                            </div>
                        </div>
                    </div>

                </div>

                
            </div>
        </div>


    </div>
</asp:Content>
