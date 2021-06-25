<%@ Page Language="C#"  MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CourseReport.aspx.cs" Inherits="StudentSystem.CourseReport" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="head" runat="server">
    </asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="BodyContent" runat="server">       
    <h4>LIST OF COURSE</h4> <br />
  <section class="page-section about-heading" style="background-color:transparent">
                    <div class="text-center">
                    <asp:GridView style="margin-left:135px" ID="GVCourses" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="CRSE_CODE" DataSourceID="CourseDB" Width="1002px" AllowSorting="True">
                        <Columns>
                            <asp:BoundField DataField="CRSE_CODE" HeaderText="COURSE CODE" ReadOnly="True" SortExpression="CRSE_CODE" />
                            <asp:BoundField DataField="CRSE_NAME" HeaderText="NAME" SortExpression="CRSE_NAME" />
                        </Columns>
                        <FooterStyle BackColor="White" ForeColor="#000066" />
                        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                        <RowStyle ForeColor="#000066" />
                        <SelectedRowStyle BackColor="Red" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#007DBB" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#00547E" />

                      
                    </asp:GridView>

                    </div>

                    <asp:SqlDataSource ID="CourseDB" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [COURSE_TABLE]"></asp:SqlDataSource>
                <br />
        <div class="card-footer text-center" style="background-color:transparent">
                <div class="btn-lg"><a style="color:black" href="CourseEntry.aspx">Add New Course</a></div> <br />
                            <a style="color:black;font-size:22px"  href="Homepage.aspx">Home</a>
        </div>
   </section>
</asp:Content>
