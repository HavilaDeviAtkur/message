<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ForgotPassword.aspx.cs" Inherits="message.ForgotPassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-md-6">
            
            <label>Email</label>
            <div class="form-group">
                <asp:TextBox CssClass="form-control" ID="txt_email" runat="server" placeholder="EmailID"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_email"
                    ErrorMessage="Email ID Required"></asp:RequiredFieldValidator>
            </div>
            <div>
                <asp:Label ID="lblMessage" runat="server" />
                <br />
            </div>
            <div class="form-group">
                
                <asp:Button class="btn btn-primary btn-block btn-lg" ID="btn_submit" runat="server" Text="Submit" OnClick="btn_SubmitClick" />
            </div>
        </div>
    </div>
</asp:Content>
