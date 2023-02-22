<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="message.Signup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid">
        <div class="row">
            <div class="col-md-8 mx-auto">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="100px" src="Images/generaluser.png" /></center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Member Sign Up</h4>
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <label>First Name</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="txt_fname" runat="server" placeholder="FirstName"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_fname"
                                        ErrorMessage="First Name Required"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label>Last Name</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="txt_lname" runat="server" placeholder="LastName"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_lname"
                                        ErrorMessage="Last Name Required"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-4">
                                <label>Email</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="txt_email" runat="server" placeholder="Email" TextMode="Email"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txt_email"
                                        ErrorMessage="Email ID Required"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>Password</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="txt_password" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                                    <asp:RegularExpressionValidator ID="rev1" runat="server" ControlToValidate="txt_password"
                                        ErrorMessage="Minimum 8 characters atleast 1 Alphabet, 1 Number and 1 Special Character"
                                        ValidationExpression="^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&amp;])[A-Za-z\d$@$!%*#?&amp;]{8,}$">

                                    </asp:RegularExpressionValidator>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>Confirm Password</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="txt_confirmpassword" runat="server" placeholder="ConfirmPassword" TextMode="Password"></asp:TextBox>
                                    <asp:CompareValidator runat="server" ControlToCompare="txt_password" ControlToValidate="txt_confirmpassword"
                                        ErrorMessage="Passwords do not match." ForeColor="Red" Display="Dynamic">
                                    </asp:CompareValidator>
                                </div>
                            </div>
                        </div>

                        <div class="row">

                            <div class="col-md-6">
                                <label>State</label>
                                <asp:DropDownList class="form-control" ID="ddl_state" runat="server">
                                    <asp:ListItem Text="Select" Value="select" />
                                    <asp:ListItem Text="British Columbia" Value="British Columbia" />
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="ddl_state"
                                    ErrorMessage="Select State"></asp:RequiredFieldValidator>
                            </div>
                            <div class="col-md-6">
                                <label>City</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="txt_city" runat="server" placeholder="City"></asp:TextBox>

                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <label>Pincode</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="txt_pincode" runat="server" placeholder="Pincode"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txt_pincode"
                                        ErrorMessage="Pin Code Required"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label>Contact Number</label>
                                <div class="form-group">
                                  <asp:TextBox CssClass="form-control" ID="txt_MobileNumnuber" runat="server"
                                        placeholder="ContactNo" TextMode="Number"></asp:TextBox>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                                        ControlToValidate="txt_MobileNumnuber" ErrorMessage="RegularExpressionValidator"
                                        ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>                            

                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <label>Select Blood Group</label>
                                <asp:DropDownList class="form-control" ID="ddl_bloodGroup" runat="server">
                                    <asp:ListItem Text="Select" Value="select" />
                                    <asp:ListItem Text="A+" Value="A+" />
                                    <asp:ListItem Text="A-" Value="A-" />
                                    <asp:ListItem Text="B+" Value="B+" />
                                    <asp:ListItem Text="B-" Value="B-" />
                                    <asp:ListItem Text="O+" Value="O+" />
                                    <asp:ListItem Text="AB+" Value="AB+" />
                                    <asp:ListItem Text="AB-" Value="AB-" />
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="ddl_bloodGroup"
                                    ErrorMessage="Please Select Blood Group"></asp:RequiredFieldValidator>
                            </div>
                            <div class="col-md-6">
                                <label>User ID</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="txt_UserID" runat="server" placeholder="UserId"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txt_UserID"
                                        ErrorMessage="UserId Required"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                        </div>



                        <div class="row">
                            <div class="col">
                                <div class="form-group">
                                    <asp:Button class="btn btn-primary btn-block btn-lg" ID="Button1" runat="server" Text="Sign Up" OnClick="Button1_Click" />
                                </div>
                                <div>
                                    <a href="UserLogin.aspx">
                                     <input class="btn btn-info btn-block btn-lg" ID="Button2" type="Button"  value="Login"/></a>
                                     </div>
                                
                            </div>
                        </div>
                    </div>

                </div>

                
           
                <br />
                <br />
            </div>
        </div>


    </div>

</asp:Content>
