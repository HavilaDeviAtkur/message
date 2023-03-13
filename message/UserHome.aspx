<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UserHome.aspx.cs" Inherits="message.UserHome" %>

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
                                    <h4>Add Post</h4>
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
                                <label>Title</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="txt_Title" runat="server" placeholder="Title"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_Title"
                                        ErrorMessage="Title Required"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label>Name</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="txt_name" runat="server" placeholder="Name"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_name"
                                        ErrorMessage=" Name Required"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                        </div>
                        <div class="row">

                            <div class="col-md-6">
                                <label>City</label>
                                <asp:DropDownList class="form-control" ID="ddl_city" runat="server">
                                    <asp:ListItem Text="Select" Value="select" />
                                    <asp:ListItem Text="Vancouver" Value="Vancouver" />
                                    <asp:ListItem Text="Surrey" Value="Surrey" />
                                    <asp:ListItem Text="Mapple Ridge" Value="Maple Ridge" />
                                    <asp:ListItem Text="Victoria" Value="Victoria" />
                                    <asp:ListItem Text="Langley" Value="Langley" />
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="ddl_city"
                                    ErrorMessage="Select City"></asp:RequiredFieldValidator>
                            </div>
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
                            <div>
                                <asp:TextBox ID="txt_date" Visible="false" runat="server" placeholder="From"></asp:TextBox>
                            </div>

                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <label>Description</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="txt_description" TextMode="MultiLine" runat="server" placeholder="Message"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txt_description"
                                        ErrorMessage="Description Required"></asp:RequiredFieldValidator>
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
                            <div class="col">
                                <div class="form-group">
                                    <asp:Button class="btn btn-primary btn-block btn-lg" ID="Button1" runat="server" Text="Add Post" OnClick="brn_Addpost" />
                                </div>
                                <div>
                                    <a href="SearchPost.aspx">
                                        <input class="btn btn-info btn-block btn-lg" id="Button2" type="Button" value="SearchPosts" /></a>
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
