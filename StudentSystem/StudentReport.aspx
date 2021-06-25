<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="StudentReport.aspx.cs" Inherits="StudentSystem.StudentReport" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="head" runat="server">
    </asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="BodyContent" runat="server">       
    <h4>LIST OF STUDENTS</h4> <br />
  <section class="page-section about-heading" style="background-color:transparent">
      <div class="text-center">
          <asp:GridView style="margin-left:135px;margin-left:50px" ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="STU_ID" DataSourceID="StudentsDB" CellSpacing="2" Width="1226px">
              <Columns>
                  <asp:BoundField DataField="STU_ID" HeaderText="ID NUMBER" ReadOnly="True" SortExpression="STU_ID" />
                  <asp:BoundField DataField="STU_FNAME" HeaderText="FIRST NAME" SortExpression="STU_FNAME" />
                  <asp:BoundField DataField="STU_MNAME" HeaderText="MIDDLE NAME" SortExpression="STU_MNAME" />
                  <asp:BoundField DataField="STU_LNAME" HeaderText="LAST NAME" SortExpression="STU_LNAME" />
                  <asp:BoundField DataField="STU_PHONE" HeaderText="PHONE" SortExpression="STU_PHONE" />
                  <asp:BoundField DataField="STU_EMAIL" HeaderText="EMAIL" SortExpression="STU_EMAIL" />
                  <asp:BoundField DataField="STU_GENDER" HeaderText="GENDER" SortExpression="STU_GENDER" />
                  <asp:BoundField DataField="STU_BDATE" HeaderText="BIRTH DATE" SortExpression="STU_BDATE" />
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
          <asp:SqlDataSource ID="StudentsDB" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [STU_ID], [STU_FNAME], [STU_MNAME], [STU_LNAME], [STU_PHONE], [STU_EMAIL], [STU_GENDER], [STU_BDATE] FROM [STUD_TABLE]"></asp:SqlDataSource>
       </div> <br />
        <div class="card-footer text-center" style="background-color:transparent">
                <div class="btn-lg"><a style="color:black;font-size:20px" href="StudentEntry.aspx">Add New Student</a></div> <br />
                        <a style="color:black;font-size:22px"  href="Homepage.aspx">Home</a>
        </div>
   </section>
</asp:Content>