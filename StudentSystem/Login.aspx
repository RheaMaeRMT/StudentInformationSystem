<%@ Page Language="C#"  MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="StudentSystem.Login" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="head" runat="server">

 </asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="BodyContent" runat="server">       
  <center>
      <section class="page-section about-headingr">
        <div class="card" style="width:605px"> 
            <fieldset style="width:600px; text-align:center">
                 <legend style="text-align:center">&nbsp;LOGIN</legend>
                  <div class="row justify-content-center">
                        <div class="col-lg-12"> 
                            <div class="form-group"> 
                                <asp:Label ID="LblUser" runat="server" >&nbsp;&nbsp;Username:</asp:Label>
                                <asp:TextBox ID="txtUser" runat="server" PlaceHolder="username123"></asp:TextBox>
                           <asp:RequiredFieldValidator ID="RFVUser" runat="server" ErrorMessage="*"  ControlToValidate="txtUser" CssClass="auto-style1"></asp:RequiredFieldValidator>
                            </div>
                        </div> 
                    </div>

                <div class="row">
                       <div class="col-lg-12">
                        <div class="form-group">
                            <asp:Label ID="LblPass" runat="server">Password:</asp:Label>
                            <asp:TextBox ID="txtPass" runat="server" placeholder="•••••••••••••"> </asp:TextBox>
                            <asp:RequiredFieldValidator ID="RFVPass" runat="server" ErrorMessage="*"  ControlToValidate="txtPass" CssClass="auto-style1"></asp:RequiredFieldValidator>
                        </div>
                  </div>
                </div> 
            </fieldset>
        </div>  <br />
        <div class="card-footer text-center">
            <div class="form-group">
                <asp:Button class="btn btn-primary btn-lg" ID="BttnSubmit" runat="server" Text="LOGIN" OnClick="BttnSubmit_Click" />
                <div class="small"><a href="signup.aspx">Need an account? Sign up!</a></div>
            </div>
        </div>
      </center>
   </section>
</asp:Content>