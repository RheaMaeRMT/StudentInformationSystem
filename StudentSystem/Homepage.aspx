<%@ Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Homepage.aspx.cs" Inherits="StudentSystem.About" %>

<asp:Content ID="Content" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="BodyContent" ContentPlaceHolderID="BodyContent" runat="server"> 
    <section style="background-color:transparent">
        <div class="card">
            <div class="row">
             <div class="form-group">
                 <h3 style="text-align:center"> A management information system for education establishments that is used to manage student data . 
                         <br />This system provide capabilities for registering students in courses;
                         <br /> Updating Students Information and Data;
                         <br /> and managing other student-related data needs.
                </h3>
              </div>
            </div>
        </div>
    <asp:Button class="btn btn-primary btn-lg" ID="BttnLogout" runat="server" Text="LOGOUT" OnClick="BttnLogout_Click" />
    </section>
</asp:Content>
