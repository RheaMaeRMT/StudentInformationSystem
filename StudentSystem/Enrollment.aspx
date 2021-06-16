<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="Enrollment.aspx.cs" Inherits="StudentSystem.Enrollment" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="head" runat="server">

    </asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="BodyContent" runat="server"> 
        
    <h4>ENROLLMENT</h4>
    <br />
    <section>
        <div class="card">
            <fieldset>
               <legend style="text-align:left">STUDENT INFORMATION</legend>
                   <div class="row"> 
                    <div class="col-md-4"> 
                        <div class="form-group">
                            <asp:Label ID="LblIDNo" runat="server" Text="ID Number:"></asp:Label>
                            <asp:TextBox ID="txtIDNo" runat="server" Width="267px" Height="33px"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row">                    
                        <asp:Button class="btn btn-primary btn-lg" ID="BttnSearch" runat="server" Text="SEARCH" Height="40px" Width="120px" OnClick="BttnSearch_Click" />
                    </div>
                   </div>
                <div class="row"> 
                    <div class="col-md-4"> 
                        <div class="form-group">
                            <asp:Label ID="LblFname" runat="server" Text="First Name:"></asp:Label>
                            <asp:TextBox ID="txtFname" runat="server" Width="267px" Height="33px"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-md-4"> 
                         <div class="form-group"> 
                             <asp:Label ID="LblLName" runat="server" Text="Last Name:"></asp:Label>
                             <asp:TextBox ID="txtLname" runat="server" Width="267px" Height="33px"></asp:TextBox>
                         </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <asp:Label ID="LblMname" runat="server" Text="Middle Name:"></asp:Label>
                            <asp:TextBox ID="txtMname" runat="server" Width="267px" Height="33px"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4">
                        <div class="form-group">
                            <asp:Label ID="LblNum" runat="server" Text="Phone Number:"></asp:Label>
                            <asp:TextBox ID="txtNum" runat="server" Width="267px" Height="33px"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <asp:Label ID="LblEmail" runat="server" Text="Email:"></asp:Label>
                            <asp:TextBox ID="txtEmail" runat="server" Width="267px" Height="33px"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <asp:Label ID="LblBDate" runat="server" Text="Birth Date:"></asp:Label>
                            <asp:TextBox ID="txtBDate" runat="server" Width="266px" Height="33px" TextMode="Date"></asp:TextBox>
                        </div>
                    </div>
                </div>
            </fieldset>
        </div> 
    </section>
    <br />
    <section>
         <div class="card"> 
             <fieldset>
                  <legend style="text-align:left">COURSE INFORMATION</legend>
                 <div class="row">
                     <div class="col-md-4">
                         <div class="form-group">
                            <asp:Label ID="LblProf" runat="server">&nbsp;&nbsp;Instructor:</asp:Label>
                            <asp:TextBox ID="txtProf" runat="server" Width="267px" Height="33px"></asp:TextBox>
                         </div>
                     </div>
                 </div>
                    <div class="row">
                        <div class="col-md-4">
                            <div class="form-group">
                                <asp:Label ID="LblDept" runat="server" >&nbsp;&nbsp;&nbsp;College/Dept:</asp:Label>
                                <asp:DropDownList ID="DDLDept" runat="server" Height="33px" Width="275px"> 
                                    <asp:ListItem> Select </asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                          <div class="col-md-4">
                            <div class="form-group">
                                <asp:Label ID="LblCName" runat="server" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Course:</asp:Label>
                                <asp:DropDownList ID="DDLCname" runat="server" CssClass="auto-style32" Height="39px" Width="600px">
                                <asp:ListItem>Select</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                          </div>
                            <div class="form-group">
                                <asp:Label ID="LblCCode" runat="server">&nbsp;Course Code:</asp:Label>
                                <asp:DropDownList ID="DDLCCode" runat="server" Height="39px" Width="522px">
                                <asp:ListItem>Select</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                      </div> 
                    <div class="row">
                        <div class="col-md-4">
                            <div class="form-group">
                                <asp:Label ID="LblYrLvl" runat="server" Width="100px">&nbsp;&nbsp;Year Level:</asp:Label>
                                <asp:DropDownList ID="DDLYrLvl" runat="server" Width="615px" Height="37px">
                                    <asp:ListItem> Select </asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <asp:Label ID="LblSsem" runat="server" Width="100px">&nbsp;&nbsp;Semester:</asp:Label>
                                <asp:DropDownList ID="DDLSem" runat="server" Width="649px" Height="39px">
                                    <asp:ListItem>Select</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <asp:Label ID="LblSched" runat="server" Width="100px">&nbsp;&nbsp;Schedule:</asp:Label>
                                <asp:DropDownList ID="DDLSched" runat="server" Width="630px" Height="39px">
                                    <asp:ListItem> Select </asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                      <div class="col-md-4">
                        <div class="form-group">
                            <asp:Label ID="LblAcadYr" runat="server">&nbsp;&nbsp;Academic Year:</asp:Label>
                            <asp:DropDownList ID="DDLAcadYr" runat="server" Height="33px" Width="251px">
                                 <asp:ListItem> Select </asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                  </div>
             </fieldset>
         </div>
        <br />
        <div class="card-footer text-center">
            <div class="form-group">
                <asp:Button class="btn btn-primary btn-lg" ID="BttnSubmit" runat="server" Text="SAVE" />
                <asp:Button class="btn btn-primary btn-lg" ID="BttnClear" runat="server" Text="CLEAR" />
            </div>
        </div>
    </section>
</asp:Content>