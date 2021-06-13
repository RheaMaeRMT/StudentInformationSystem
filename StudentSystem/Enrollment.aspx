<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="Enrollment.aspx.cs" Inherits="StudentSystem.Enrollment" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="head" runat="server">

    <style type="text/css">
        .auto-style1 {
            color: #FF0000;
        }
        </style>

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
                            <asp:TextBox ID="txtIDNo" runat="server" Width="267px" Height="28px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RFVIDno" runat="server" ErrorMessage="*" ControlToValidate="txtIDNo" CssClass="auto-style1" ></asp:RequiredFieldValidator>                        
                        </div>
                    </div>
                    <div class="row">                    
                        <asp:Button class="btn btn-primary btn-lg" ID="BttnSearch" runat="server" Text="SEARCH" Height="40px" Width="120px" />
                    </div>
                   </div>
                <div class="row"> 
                    <div class="col-md-4"> 
                        <div class="form-group">
                            <asp:Label ID="LblFname" runat="server" Text="First Name:"></asp:Label>
                            <asp:TextBox ID="txtFname" runat="server" Width="267px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RFVFname" runat="server" ErrorMessage="*" ControlToValidate="txtFname" CssClass="auto-style1"></asp:RequiredFieldValidator>                            

                        </div>
                    </div>
                    <div class="col-md-4"> 
                         <div class="form-group"> 
                             <asp:Label ID="LblLName" runat="server" Text="Last Name:"></asp:Label>
                             <asp:TextBox ID="txtLname" runat="server" Width="267px"></asp:TextBox>
                             <asp:RequiredFieldValidator ID="RFVLname" runat="server" ErrorMessage="*" ControlToValidate="txtLname" CssClass="auto-style1"></asp:RequiredFieldValidator>
                         </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <asp:Label ID="LblMname" runat="server" Text="Middle Name:"></asp:Label>
                            <asp:TextBox ID="txtMname" runat="server" Width="267px"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4">
                        <div class="form-group">
                            <asp:Label ID="LblGender" runat="server" Text="Gender:"></asp:Label>
                            <asp:DropDownList ID="DDLGender" runat="server" Width="267px" Height="27px">
                                <asp:ListItem> </asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RFVGender" runat="server" ErrorMessage="*" CssClass="auto-style1" ControlToValidate="DDLGender"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <asp:Label ID="LblNum" runat="server" Text="Phone Number:"></asp:Label>
                            <asp:TextBox ID="txtNum" runat="server" Width="267px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RFVNum" runat="server" ErrorMessage="*"  CssClass="auto-style1" ControlToValidate="txtNum"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <asp:Label ID="LblEmail" runat="server" Text="Email:"></asp:Label>
                            <asp:TextBox ID="txtEmail" runat="server" Width="267px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RFVEmail" runat="server" ErrorMessage="*" CssClass="auto-style1" ControlToValidate="txtEmail"></asp:RequiredFieldValidator>
                        </div>
                    </div>

                </div>
                <div class="row">
                    <div class="col-md-4">
                        <div class="form-group">
                            <asp:Label ID="LblBDate" runat="server" Text="Birth Date:"></asp:Label>
                            <asp:TextBox ID="txtBDate" runat="server" Width="266px" TextMode="Date"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RFVBDate" runat="server" ErrorMessage="*" CssClass="auto-style1" ControlToValidate="txtBDate"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <asp:Label ID="LblAddress" runat="server" Text="Address:"></asp:Label>
                            <asp:TextBox ID="txtAddress" runat="server" Width="267px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RFVAddress" runat="server" ErrorMessage="*" CssClass="auto-style1" ControlToValidate="txtAddress"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <asp:Label ID="LblStat" runat="server" Text="Civil Status:"></asp:Label>
                            <asp:DropDownList ID="DDLStat" runat="server" Width="267px" Height="27px">
                                <asp:ListItem> </asp:ListItem>
                            </asp:DropDownList>                           
                            <asp:RequiredFieldValidator ID="RFVStat" runat="server" ErrorMessage="*" CssClass="auto-style1" ControlToValidate="DDLStat"></asp:RequiredFieldValidator>
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
                                <asp:Label ID="LblDept" runat="server" Text="College/Dept:"></asp:Label>
                                <asp:DropDownList ID="DDLDept" runat="server" Height="33px" Width="275px"> 
                                    <asp:ListItem>  </asp:ListItem>
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RFVDept" runat="server" ErrorMessage="*" CssClass="auto-style1" ControlToValidate="DDLDept"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                            <div class="form-group">
                                <asp:Label ID="Label1" runat="server">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</asp:Label>
                                <asp:Label ID="LblCCode" runat="server" Text="Course Code:"></asp:Label>
                                <asp:TextBox ID="txtCCode" runat="server" Width="210px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RFVCCode" runat="server" ErrorMessage="*" CssClass="auto-style1" ControlToValidate="txtCCode"></asp:RequiredFieldValidator>
                            </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <asp:Label ID="LblCName" runat="server" Text="Course :"></asp:Label>
                                <asp:TextBox ID="txtCName" runat="server" Width="369px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RFVName" runat="server" ErrorMessage="*" CssClass="auto-style1" ControlToValidate="txtCName"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                      </div> 
                           <div class="row"> 
                                <asp:Label ID="Label2" runat="server">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</asp:Label>                               
                                <asp:Label ID="LblDesc" runat="server" Text="Description:"></asp:Label>
                                <asp:TextBox ID="txtDesc" runat="server" Width="568px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RFVDesc" runat="server" ErrorMessage="*" CssClass="auto-style1" ControlToValidate="txtDesc"></asp:RequiredFieldValidator>
                            </div>
                 <br />
                    <div class="row">
                        <div class="col-md-4">
                            <div class="form-group">
                                <asp:Label ID="LblYrLvl" runat="server" Text="Year Level:"></asp:Label>
                                <asp:DropDownList ID="DDLYrLvl" runat="server" Width="267px" Height="27px">
                                    <asp:ListItem>  </asp:ListItem>
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RFVYrLvl" runat="server" ErrorMessage="*" CssClass="auto-style1" ControlToValidate="DDLYrLvl"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <asp:Label ID="LblSsem" runat="server" Text="Semester:"></asp:Label>
                                <asp:TextBox ID="txtSem" runat="server" Width="268px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RFVSem" runat="server" ErrorMessage="*" CssClass="auto-style1" ControlToValidate="txtSem"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <asp:Label ID="LblSched" runat="server" Text="Schedule:"></asp:Label>
                                <asp:DropDownList ID="DDLSched" runat="server" Width="267px" Height="25px">
                                    <asp:ListItem></asp:ListItem>
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RFVSched" runat="server" ErrorMessage="*" CssClass="auto-style1" ControlToValidate="DDLSched"></asp:RequiredFieldValidator>
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