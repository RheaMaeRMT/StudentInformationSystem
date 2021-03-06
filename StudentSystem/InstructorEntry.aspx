<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="InstructorEntry.aspx.cs" Inherits="StudentSystem.InstructorEntry" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="head" runat="server">

    <style type="text/css">
        .auto-style1 {
            color: #FF0000;
        }
        </style>

</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="BodyContent" runat="server"> 
        
    <h4>INSTRUCTOR ENTRY</h4>
    <br />
    <section style="background-color:transparent">
        <div class="card" style="background-color:transparent">
            <fieldset >
               <legend style="text-align:left">&nbsp;INSTRUCTOR INFORMATION</legend>
                   <div class="row"> 
                    <div class="col-md-4"> 
                        <div class="form-group">
                            <asp:Label ID="LblIDNo" runat="server" Text="ID:"></asp:Label>
                            <asp:TextBox ID="txtIDNo" runat="server" Width="267px" Height="28px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RFVIDno" runat="server" ErrorMessage="*" ControlToValidate="txtIDNo" CssClass="auto-style1" ></asp:RequiredFieldValidator>                        
                        </div>
                    </div>
                   </div>
                <div class="row"> 
                    <div class="col-md-4"> 
                        <div class="form-group">
                            <asp:Label ID="LblFname" runat="server" Text="Name:"></asp:Label>
                            <asp:TextBox ID="txtFname" runat="server" Width="267px" PlaceHolder="Firstname Lastname"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RFVFname" runat="server" ErrorMessage="*" ControlToValidate="txtFname" CssClass="auto-style1"></asp:RequiredFieldValidator>                            

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
                            <asp:DropDownList ID="DDLGender" runat="server" Width="284px" Height="31px">
                                <asp:ListItem>Select </asp:ListItem> 
                                <asp:ListItem> Male </asp:ListItem>
                                <asp:ListItem> Female </asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RFVGender" runat="server" ErrorMessage="*" CssClass="auto-style1" ControlToValidate="DDLGender"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <asp:Label ID="LblNum" runat="server" Text="Phone Number:"></asp:Label>
                            <asp:TextBox ID="txtNum" runat="server" Width="260px"></asp:TextBox>
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
                                <asp:ListItem> Select </asp:ListItem> 
                                <asp:ListItem> Single </asp:ListItem>
                                <asp:ListItem> Married </asp:ListItem>
                            </asp:DropDownList>                           
                            <asp:RequiredFieldValidator ID="RFVStat" runat="server" ErrorMessage="*" InitialValue="Select" CssClass="auto-style1" ControlToValidate="DDLStat"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                </div>
            </fieldset>
        </div>
        <br />
    </section>

    <section style="background-color:transparent">
        <div class="card">
              <fieldset>
                  <legend style="text-align:left">&nbsp; ADDRESS</legend>
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
        </div> <br />
          <div class="card-footer text-center" style="background-color:transparent">
            <div class="form-group">
                <asp:Button class="btn btn-primary btn-lg" ID="BttnSubmit" runat="server" Text="SAVE" OnClick="BttnSubmit_Click" />
            </div>
              <div>
                   <a style="color:black;font-size:20px" href="InstructorReport.aspx">View List of Instructors</a> <br />
                 <a style="color:black;font-size:22px"  href="Homepage.aspx">Home</a>                 

              </div>
                
          </div>

   </section>
</asp:Content>