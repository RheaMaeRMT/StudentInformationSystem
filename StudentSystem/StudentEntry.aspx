﻿<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="StudentEntry.aspx.cs" Inherits="StudentSystem.StudentEntry" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="head" runat="server">

    <style type="text/css">
        .auto-style1 {
            color: #FF0000;
        }
        </style>

</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="BodyContent" runat="server"> 
        
    <h4>STUDENT ENTRY</h4>
    <br />
    <section>
        <div class="card">
            <fieldset>
               <legend style="text-align:left">&nbsp;PERSONAL INFORMATION</legend>
                   <div class="row"> 
                    <div class="col-md-4"> 
                        <div class="form-group">
                            <asp:Label ID="LblIDNo" runat="server" Text="ID Number:"></asp:Label>
                            <asp:TextBox ID="txtIDNo" runat="server" Width="267px" Height="28px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RFVIDno" runat="server" ErrorMessage="*" ControlToValidate="txtIDNo" CssClass="auto-style1" ></asp:RequiredFieldValidator>                        
                        </div>
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
                                <asp:ListItem> Male </asp:ListItem>
                                <asp:ListItem> Female </asp:ListItem>
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
                            <asp:Label ID="LblStat" runat="server" Text="Civil Status:"></asp:Label>
                            <asp:DropDownList ID="DDLStat" runat="server" Width="267px" Height="27px">
                                <asp:ListItem> </asp:ListItem> 
                                <asp:ListItem> Single </asp:ListItem>
                                <asp:ListItem> Married </asp:ListItem>
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
                  <legend style="text-align:left">&nbsp; ADDRESS</legend>
                  <h4 style="text-align:left;">&nbsp;Permanent Address</h4>
                     <div class="row">
                        <div class="col-md-4">
                            <div class="form-group">
                                <asp:Label ID="LblBrngy" runat="server" Text="Barangay:"></asp:Label>
                                <asp:TextBox ID="txtBrngy" runat="server" Width="268px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RFVBrngy" runat="server" ErrorMessage="*" CssClass="auto-style1" ControlToValidate="txtBrngy"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <asp:Label ID="LblMun" runat="server" Text="Municipality/City:"></asp:Label>
                                <asp:TextBox ID="txtMun" runat="server" Width="268px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RFVMun" runat="server" ErrorMessage="*" CssClass="auto-style1" ControlToValidate="txtMun"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                       </div>
                       <div class="row">
                        <div class="col-md-4">
                            <div class="form-group">
                                <asp:Label ID="LblProvince" runat="server" Text="Province:"></asp:Label>
                                <asp:TextBox ID="txtProvince" runat="server" Width="268px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RFVProvince" runat="server" ErrorMessage="*" CssClass="auto-style1" ControlToValidate="txtProvince"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <asp:Label ID="Lblcode" runat="server" Text="Zip Code:"></asp:Label>
                                <asp:TextBox ID="txtCode" runat="server" Width="199px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RFVCode" runat="server" ErrorMessage="*" CssClass="auto-style1" ControlToValidate="txtCode"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                    </div>
                      <h4 style="text-align:left;">&nbsp; Present Address</h4>
                  <div class="row">
                        <div class="col-md-4">
                            <div class="form-group">
                                <asp:Label ID="LblPBrngy" runat="server" Text="Barangay:"></asp:Label>
                                <asp:TextBox ID="txtPBrngy" runat="server" Width="268px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RFVPBrngy" runat="server" ErrorMessage="*" CssClass="auto-style1" ControlToValidate="txtPBrngy"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <asp:Label ID="LblPMun" runat="server" Text="Municipality/City:"></asp:Label>
                                <asp:TextBox ID="txtPMun" runat="server" Width="268px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RFVPMun" runat="server" ErrorMessage="*" CssClass="auto-style1" ControlToValidate="txtPMun"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                      </div>
                       <div class="row">
                        <div class="col-md-4">
                            <div class="form-group">
                                <asp:Label ID="LblPProvince" runat="server" Text="Province:"></asp:Label>
                                <asp:TextBox ID="txtPProvince" runat="server" Width="268px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RFVPProvince" runat="server" ErrorMessage="*" CssClass="auto-style1" ControlToValidate="txtPProvince"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <asp:Label ID="LblPCode" runat="server" Text="Zip Code:"></asp:Label>
                                <asp:TextBox ID="txtPCode" runat="server" Width="199px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" CssClass="auto-style1" ControlToValidate="txtPCode"></asp:RequiredFieldValidator>
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
                <legend style="text-align:left">&nbsp; EDUCATIONAL BACKGROUND</legend>
                    <h4 style="text-align:left;">&nbsp;Elementary Education</h4>
                <div class="row">
                    <div class="col-md-4">
                        <div class="form-group">
                            <asp:Label ID="LblELem" runat="server" Text="School Name:"></asp:Label>
                            <asp:TextBox ID="txtElem" runat="server" Width="285px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RFVElem" runat="server" ErrorMessage="*" CssClass="auto-style1" ControlToValidate="txtElem"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <asp:Label ID="LblElemAdd" runat="server" Text="Address:"></asp:Label>
                            <asp:TextBox ID="txtElemAd" runat="server" placeholder="Barangay,Municipality,Province" Width="285px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RFVElemAdd" runat="server" ErrorMessage="*" CssClass="auto-style1" ControlToValidate="txtElemAd"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <asp:Label ID="LblYear" runat="server" Text="Year Graduated:"></asp:Label>
                            <asp:TextBox ID="txtYear" runat="server" Width="285px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RFVYear" runat="server" ErrorMessage="*" CssClass="auto-style1" ControlToValidate="txtYear"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                </div>
                    <h4 style="text-align:left;">&nbsp;Secondary Education-Junior High School</h4>
                <div class="row">
                    <div class="col-md-4">
                        <div class="form-group">
                            <asp:Label ID="LblSec" runat="server" Text="School Name:"></asp:Label>
                            <asp:TextBox ID="TxtSec" runat="server" Width="285px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RFVSec" runat="server" ErrorMessage="*" CssClass="auto-style1" ControlToValidate="TxtSec"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <asp:Label ID="LblSecAdd" runat="server" Text="Address:"></asp:Label>
                            <asp:TextBox ID="txtSecAdd" runat="server" placeholder="Barangay,Municipality,Province" Width="285px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RFVSecAdd" runat="server" ErrorMessage="*" CssClass="auto-style1" ControlToValidate="txtSecAdd"> </asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <asp:Label ID="LblSecYear" runat="server" Text="Year Graduated:"></asp:Label>
                            <asp:TextBox ID="txtSecYear" runat="server" Width="285px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RFVSecYear" runat="server" ErrorMessage="*" CssClass="auto-style1" ControlToValidate="txtSecYear"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                </div>
                    <h4 style="text-align:left;">&nbsp;Secondary Education-Senior High School</h4>
                <div class="row">
                    <div class="col-md-4">
                        <div class="form-group">
                            <asp:Label ID="LblSenior" runat="server" Text="School Name:"></asp:Label>
                            <asp:TextBox ID="txtSenior" runat="server" Width="285px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RFVSenior" runat="server" ErrorMessage="*" CssClass="auto-style1" ControlToValidate="txtSenior"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <asp:Label ID="LblSeniorAdd" runat="server" Text="Address:"></asp:Label>
                            <asp:TextBox ID="txtSeniorAdd" runat="server" placeholder="Barangay,Municipality,Province" Width="285px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RFVSeniorAdd" runat="server" ErrorMessage="*" CssClass="auto-style1" ControlToValidate="txtSeniorAdd"> </asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <asp:Label ID="LblSeniorYear" runat="server" Text="Year Graduated:"></asp:Label>
                            <asp:TextBox ID="txtSeniorYear" runat="server" Width="285px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RFVSeniorYear" runat="server" ErrorMessage="*" CssClass="auto-style1" ControlToValidate="txtSeniorYear"></asp:RequiredFieldValidator>
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