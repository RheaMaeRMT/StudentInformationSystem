<%@ Page Language="C#"  MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="InstructorReport.aspx.cs" Inherits="StudentSystem.InstructorReport" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="head" runat="server">
    </asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="BodyContent" runat="server">       
    <h4>LIST OF INSTRUCTORS</h4> <br />
  <section class="page-section about-heading" style="background-color:transparent">
      <div class="text-center">
          <asp:GridView ID="GVInstructor" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="ID" DataSourceID="Instructor" Width="1238px">
              <Columns>
                  <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" />
                  <asp:BoundField DataField="FNAME" HeaderText="FNAME" SortExpression="FNAME" />
                  <asp:BoundField DataField="PHONE" HeaderText="PHONE" SortExpression="PHONE" />
                  <asp:BoundField DataField="GENDER" HeaderText="GENDER" SortExpression="GENDER" />
                  <asp:BoundField DataField="EMAIL" HeaderText="EMAIL" SortExpression="EMAIL" />
              </Columns>
              <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
              <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
              <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
              <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
              <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
              <SortedAscendingCellStyle BackColor="#FFF1D4" />
              <SortedAscendingHeaderStyle BackColor="#B95C30" />
              <SortedDescendingCellStyle BackColor="#F1E5CE" />
              <SortedDescendingHeaderStyle BackColor="#93451F" />
          </asp:GridView>
          <asp:SqlDataSource ID="Instructor" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [ID], [FNAME], [PHONE], [GENDER], [EMAIL] FROM [INSTRUCTOR_TABLE]"></asp:SqlDataSource>
       </div>
        <div class="card-footer text-center" style="background-color:transparent">
                <div class="btn-lg"><a style="color:black" href="InstructorEntry.aspx">Add New Instructor</a></div> <br />
                            <a style="color:black;font-size:22px"  href="Homepage.aspx">Home</a>
        </div>
   </section>
</asp:Content>