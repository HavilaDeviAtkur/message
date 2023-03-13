<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SearchPost.aspx.cs" Inherits="message.SearchPost" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MyConn %>" SelectCommand="SELECT * FROM [addposts]"></asp:SqlDataSource>
        <div class="col">
            <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="DatePosted" HeaderText="DatePosted" SortExpression="DatePosted"></asp:BoundField>



                    <asp:TemplateField>
                        <ItemTemplate>
                            <div class="container-fluid">
                                <div class="row">
                                    <div class="col-lg-10">
                                        <div class="row">
                                            <div class="col-lg-12">
                                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("Title") %>' Font-Bold="True"></asp:Label>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-lg-12">
                                                Name :
                                                             <asp:Label ID="Label2" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                                                &nbsp;|| Phone :
                                                             <asp:Label ID="Label3" runat="server" Text='<%# Eval("contactnumber") %>'></asp:Label>
                                                &nbsp;
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-lg-12">
                                                City :
                                                             <asp:Label ID="Label4" runat="server" Text='<%# Eval("City") %>'></asp:Label>
                                                &nbsp;|| BloodGroup :
                                                             <asp:Label ID="Label5" runat="server" Text='<%# Eval("Bloodgroup") %>'></asp:Label>
                                                &nbsp; 
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-lg-12">
                                                Description :
                                                         <asp:Label ID="Label9" runat="server" Text='<%# Eval("Description") %>'></asp:Label>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            </div>
                        </ItemTemplate>
                    </asp:TemplateField>



                </Columns>
            </asp:GridView>
</asp:Content>
