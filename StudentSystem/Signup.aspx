<%@ Page Language="C#"  MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="StudentSystem.Signup" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="head" runat="server">

 </asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="BodyContent" runat="server">       
    <center>
      <section class="page-section about-heading" style="background-color:transparent">
        <div class="card" style="width:605px"> 
            <fieldset style="width:600px; text-align:center">
                 <legend style="text-align:center">&nbsp;SIGN UP</legend>
                  <div class="row">
                        <div class="col-lg-12"> 
                            <div class="form-group"> 
                                <asp:Label ID="LblFname" runat="server" >&nbsp;&nbsp;First Name:</asp:Label>
                                <asp:TextBox ID="txtFname" runat="server" ></asp:TextBox>
                           <asp:RequiredFieldValidator ID="RFVFname" runat="server" ErrorMessage="*"  ControlToValidate="txtFname" CssClass="auto-style1" style="color: #FF0000"></asp:RequiredFieldValidator>
                            </div>
                        </div> 
                 </div>
                <div class="row">
                       <div class="col-lg-12">
                        <div class="form-group">
                            <asp:Label ID="LblLName" runat="server">Last Name:</asp:Label>
                            <asp:TextBox ID="txtLName" runat="server"> </asp:TextBox>
                            <asp:RequiredFieldValidator ID="RFVLName" runat="server" ErrorMessage="*"  ControlToValidate="txtLName" CssClass="auto-style1" style="color: #FF0000"></asp:RequiredFieldValidator>
                        </div>
                      </div>
                </div> 
                <div class="row">
                       <div class="col-lg-12">
                        <div class="form-group">
                            <asp:Label ID="LblEmail" runat="server">Email:</asp:Label>
                            <asp:TextBox ID="txtEmail" runat="server"> </asp:TextBox>
                            <asp:RequiredFieldValidator ID="RFVEmail" runat="server" ErrorMessage="*"  ControlToValidate="txtEmail" CssClass="auto-style1" style="color: #FF0000"></asp:RequiredFieldValidator>
                        </div>
                      </div>
                </div> 
                  <div class="row">
                        <div class="col-lg-12"> 
                            <div class="form-group"> 
                                <asp:Label ID="LblUser" runat="server" >&nbsp;&nbsp;Username:</asp:Label>
                                <asp:TextBox ID="txtUser" runat="server" PlaceHolder="username123"></asp:TextBox>
                           <asp:RequiredFieldValidator ID="RFVUser" runat="server" ErrorMessage="*"  ControlToValidate="txtUser" CssClass="auto-style1" style="color: #FF0000"></asp:RequiredFieldValidator>
                            </div>
                        </div> 
                    </div>

                <div class="row">
                       <div class="col-lg-12">
                        <div class="form-group">
                            <asp:Label ID="LblPass" runat="server">Password:</asp:Label>
                            <asp:TextBox ID="txtPass" runat="server" placeholder="•••••••••••••"> </asp:TextBox>
                            <asp:RequiredFieldValidator ID="RFVPass" runat="server" ErrorMessage="*"  ControlToValidate="txtPass" CssClass="auto-style1" style="color: #FF0000"></asp:RequiredFieldValidator>
                        </div>
                  </div>
                </div> 
            </fieldset>
        </div>  <br />
        <div class="card-footer text-center" style="background-color:transparent">
            <div class="form-group">
                <asp:Button class="btn btn-primary btn-lg" ID="BttnSignup" runat="server" Text="SIGNUP" OnClick="BttnSignup_Click" />
                <div class="btn-lg">
                    <a href="Login.aspx" style="color:black;font-size:20px"> Log-in</a>
                </div>
            </div>
        </div>
      </center>
   </section>
</asp:Content>