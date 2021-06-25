<%@ Page Language="C#" MasterPageFile="~/Site.Master"  AutoEventWireup="true" CodeBehind="Reports.aspx.cs" Inherits="StudentSystem.Reports" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            margin-left: 0;
        }
    </style>
    </asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="BodyContent" runat="server">       
    <h4></h4> <br />
  <section class="page-section about-heading" style="background-color:transparent">
    <div class="card" style="width:1005px;background-color:transparent;margin-left:200px;border-color:none"> 
            <fieldset style="width:600px; text-align:center;background-color:transparent;margin-left:50px;">
                <br />
             <asp:DropDownList ID="DDLStatChoice" runat="server" CssClass="auto-style1" Width="201px">
                <asp:ListItem> All</asp:ListItem>
                <asp:ListItem> Enrolled</asp:ListItem>
                <asp:ListItem> Withdrawn</asp:ListItem>
            </asp:DropDownList>
            <asp:Button ID="BttnSearch" runat="server" Text="Search" Width="96px" OnClick="BttnSearch_Click" />


                    <div class="text-center">
                        <asp:GridView ID="GVOverallReport" runat="server" Width="814px" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" AutoGenerateColumns="false">
                            <Columns>
                              <asp:BoundField DataField="STUD_ID" HeaderText="ID Number" ReadOnly="True" SortExpression="STUD_ID" />
                              <asp:BoundField DataField="CRSE_NAME" HeaderText="COURSE" SortExpression="CRSE_NAME" />
                              <asp:BoundField DataField="SEM" HeaderText="SEMESTER" SortExpression="SEM" />
                             <asp:BoundField DataField="STATUS" HeaderText="STATUS" SortExpression="STATUS" />
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

                    </div>

                    <asp:SqlDataSource ID="DBReport" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"></asp:SqlDataSource>
                <br /> <br /><br />
        <div class="card-footer text-center" style="background-color:transparent">
                <div class="btn-lg"><a style="color:black" href="Enrollment.aspx">Open Enrollment</a></div> <br />
                 <a style="color:black;font-size:22px"  href="Homepage.aspx">Home</a>
        </div>
      </fieldset>
    </div>
   </section>
</asp:Content>