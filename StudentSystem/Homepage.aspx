<%@ Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Homepage.aspx.cs" Inherits="StudentSystem.About" %>

<asp:Content ID="Content" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="BodyContent" ContentPlaceHolderID="BodyContent" runat="server"> 
      <section class="page-section about-heading" style="background-color:transparent;margin-left:40px">
        <div class="card" style="width:1005px; margin-left:40px;"> 
            <fieldset style="width:1000px; text-align:center">
                 <h2 style="font-family:'Agency FB';text-align:center;margin-left:30px;width:1000px;font-size:50px"> STUDENT INFORMATION SYSTEM </h2>              
            </fieldset>
        </div>  <br />
        <asp:Button class="btn btn-primary btn-lg" ID="BttnLogout" runat="server" Text="LOG OUT" OnClick="BttnLogout_Click"/>
   </section>
</asp:Content>
