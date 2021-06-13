﻿<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CourseEntry.aspx.cs" Inherits="StudentSystem.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="BodyContent" runat="server">       
   <h4>COURSE ENTRY</h4>
    <section>
        <div class="card"> 
            <fieldset>
                 <legend style="text-align:left">COURSE</legend>
                    <div class="row">
                        <div class="col-md-4">
                            <div class="form-group">
                                <asp:Label ID="LblDept" runat="server" >&nbsp;&nbsp;College/Dept:</asp:Label>
                                <asp:DropDownList ID="DDLDept" runat="server" Height="39px" Width="522px">
                                    <asp:ListItem>Select </asp:ListItem>
                                    <asp:ListItem>COLLEGE OF COMPUTER INFORMATION AND COMMUNICATION TECHNOLOGY</asp:ListItem>
                                    <asp:ListItem>COLLEGE OF ENGINEERING </asp:ListItem>
                                    <asp:ListItem>COLLEGE OF EDUCATION </asp:ListItem>
                                    <asp:ListItem>COLLEGE OF TECHNOLOGY </asp:ListItem>
                                    <asp:ListItem>COLLEGE OF ARTS AND SCIENCES </asp:ListItem>
                                    <asp:ListItem>COLLEGE OF MANAGEMENT AND ENTREPRENEURSHIP </asp:ListItem>
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RFVDept" runat="server" ErrorMessage="*" CssClass="auto-style1" ControlToValidate="DDLDept"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                           <div class="col-md-4">
                            <div class="form-group">
                                <asp:Label ID="LblCName" runat="server">Course:</asp:Label>
                                <asp:DropDownList ID="DDLCname" runat="server" CssClass="auto-style32" Height="39px" Width="522px">
                                <asp:ListItem>Select</asp:ListItem>
                                <asp:ListItem>**COLLEGE OF COMPUTER INFORMATION AND COMMUNICATION TECHNOLOGY**</asp:ListItem>                   
                                <asp:ListItem>BIT Major in Computer Technology</asp:ListItem>
                                <asp:ListItem>BS in Information Systems (BSIS) </asp:ListItem>
                                <asp:ListItem>BS in Information Technology (BSIT) </asp:ListItem>
                                <asp:ListItem>BS in Information Systems </asp:ListItem>
                                <asp:ListItem>**COLLEGE OF ENGINEERING** </asp:ListItem>
                                <asp:ListItem>BS in Civil Engineering (BSCE)</asp:ListItem>
                                <asp:ListItem>BS in Computer Engineering (BSCpE)</asp:ListItem>
                                <asp:ListItem>BS in Electronics Engineering (BSECE)</asp:ListItem>
                                <asp:ListItem>BS in Electrical Engineering (BSEE)</asp:ListItem>
                                <asp:ListItem>BS in Industrial Engineering (BSIE)</asp:ListItem>
                                <asp:ListItem>BS in Mechanical Engineering (BSME)</asp:ListItem>
                                <asp:ListItem>**COLLEGE OF EDUCATION** </asp:ListItem>
                                <asp:ListItem>Bachelor of Early Childhood Education (BECEd)</asp:ListItem>
                                <asp:ListItem>Bachelor of Elementary Education (BEEd)</asp:ListItem>
                                <asp:ListItem>Bachelor of Secondary Education (BSEd)</asp:ListItem>
                                <asp:ListItem>Bachelor of Special Needs Education (BSNEd)</asp:ListItem>
                                <asp:ListItem>BTVTEd-Major in Automotive Technology</asp:ListItem>
                                <asp:ListItem>BTVTEd-Major in Civil and Construction Technology</asp:ListItem>
                                <asp:ListItem>BTVTEd-Major in Garments,Fashion,and Design</asp:ListItem>
                                <asp:ListItem>BTVTEd-Major in Drafting Technology</asp:ListItem>
                                <asp:ListItem>BTVTEd-Major in Electronics Technology</asp:ListItem>
                                <asp:ListItem>BTVTEd-Major in Welding and Fabrication Technology</asp:ListItem>
                                <asp:ListItem>BTVTEd-Major inElectrical Technology</asp:ListItem>
                                <asp:ListItem>BTVTEd-Major in Food and Service Management</asp:ListItem>
                                <asp:ListItem>BTLEd-Major in Home Economics</asp:ListItem>
                                <asp:ListItem>BTLEd-Major in Industrial Arts</asp:ListItem>
                                <asp:ListItem>BTLEd-Major in Information and Communication Technology</asp:ListItem>
                                <asp:ListItem>**COLLEGE OF TECHNOLOGY** </asp:ListItem>
                                <asp:ListItem>BS in Technology Management (BSTechM)</asp:ListItem>
                                <asp:ListItem>BS in Graphics and Design (BSGD)</asp:ListItem>
                                <asp:ListItem>BS in Mechatronics (BSMx)</asp:ListItem>
                                <asp:ListItem>BIT-Major in Civil Technology</asp:ListItem>
                                <asp:ListItem>BIT-Major in Drafting Technology</asp:ListItem>
                                <asp:ListItem>BIT-Major in Furniture and Cabinet Making Technology</asp:ListItem>
                                <asp:ListItem>BIT-Major in Interior Design Technology</asp:ListItem>
                                <asp:ListItem>BIT-Major in Refrigeration and Air Conditioning Technology</asp:ListItem>
                                <asp:ListItem>BIT-Major in Power Plant Technology</asp:ListItem>
                                <asp:ListItem>BIT-Major in Welding and Fabrication Technology</asp:ListItem>
                                <asp:ListItem>BIT-Major in Automotive Technology</asp:ListItem>
                                <asp:ListItem>BIT-Major in Cosmetology</asp:ListItem>
                                <asp:ListItem>BIT-Major in Electrical Technology</asp:ListItem>
                                <asp:ListItem>BIT-Major in Electronics Technology</asp:ListItem>
                                <asp:ListItem>BIT-Major in Food Preparation and Services Technology</asp:ListItem>
                                <asp:ListItem>BIT-Major in Garments Technology</asp:ListItem>
                                <asp:ListItem>BIT-Major in Machine Shop Technology</asp:ListItem>
                                <asp:ListItem>BIT-Major in Electronics Technology</asp:ListItem>
                                <asp:ListItem>**COLLEGE OF ARTS AND SCIENCES** </asp:ListItem>
                                <asp:ListItem>Bachelor of Arts in English Language (BAEL) </asp:ListItem>
                                <asp:ListItem>Batsilyer ng Sining Sa Filipino (BAF) </asp:ListItem>
                                <asp:ListItem>Bachelor of Arts in Literature (BAL) </asp:ListItem>
                                <asp:ListItem>BS in Development Communication (BS Dev Com) </asp:ListItem>
                                <asp:ListItem>BS in Mathematics (BS Math) </asp:ListItem>
                                <asp:ListItem>BS in Psychology (BS Psych) </asp:ListItem>
                                <asp:ListItem>BS in Tourism Management (BSTM) </asp:ListItem>
                                <asp:ListItem>BS in Hospitality Management (BSHM) </asp:ListItem>
                                <asp:ListItem>**COLLEGE OF MANAGEMENT AND ENTREPRENEURSHIP** </asp:ListItem>
                                <asp:ListItem>Bachelor of Public Administration (BPA) </asp:ListItem>
                                <asp:ListItem>BS in Business Administration (BSBA)-Major in Marketing Management </asp:ListItem>
                                <asp:ListItem>BS in Statistics (BS Stat) </asp:ListItem>
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RFVName" runat="server" ErrorMessage="*" CssClass="auto-style1" ControlToValidate="DDLCname"></asp:RequiredFieldValidator>
                            </div>
                           </div>
                           </div>
                    <div class="row">
                        <div class="col-md-4">
                            <div class="form-group">
                                <asp:Label ID="LblYrLvl" runat="server" Text="Year Level:"></asp:Label>
                                <asp:DropDownList ID="DDLYrLvl" runat="server" Width="267px" Height="39px">
                                    <asp:ListItem> Select </asp:ListItem>
                                    <asp:ListItem> 1st Year</asp:ListItem>
                                    <asp:ListItem> 2nd Year</asp:ListItem>
                                    <asp:ListItem> 3rd Year</asp:ListItem>
                                    <asp:ListItem> 4th Year</asp:ListItem>
                                    <asp:ListItem> 5th Year</asp:ListItem>
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RFVYrLvl" runat="server" ErrorMessage="*" CssClass="auto-style1" ControlToValidate="DDLYrLvl"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <asp:Label ID="LblSsem" runat="server" Text="Semester:"></asp:Label>
                                <asp:DropDownList ID="DDLSem" runat="server" Width="180px" Height="39px">
                                    <asp:ListItem>Select</asp:ListItem>
                                    <asp:ListItem> First Semester</asp:ListItem>
                                    <asp:ListItem> Second Semester</asp:ListItem>
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RFVSem" runat="server" ErrorMessage="*" CssClass="auto-style1" ControlToValidate="DDLSem"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <asp:Label ID="LblSched" runat="server" Text="Schedule:"></asp:Label>
                                <asp:DropDownList ID="DDLSched" runat="server" Width="267px" Height="39px">
                                    <asp:ListItem> Select </asp:ListItem>
                                    <asp:ListItem> Day</asp:ListItem>
                                    <asp:ListItem> Evening</asp:ListItem>
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RFVSched" runat="server" ErrorMessage="*" CssClass="auto-style1" ControlToValidate="DDLSched"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <asp:Label ID="LblAcadYr" runat="server">Academic Year:</asp:Label>
                            <asp:DropDownList ID="DDLAcadYr" runat="server" Height="39px" Width="221px">
                                 <asp:ListItem> Select </asp:ListItem>
                                 <asp:ListItem> A.Y 2018-2019</asp:ListItem>
                                 <asp:ListItem> A.Y 2019-2020</asp:ListItem>
                                 <asp:ListItem> A.Y 2020-2021</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RFVAcadYr" runat="server" ErrorMessage="*" CssClass="auto-style1" ControlToValidate="DDLAcadYr"></asp:RequiredFieldValidator>
                        </div>
                  </div>
            </fieldset>
        </div> <br />
        <div class="card-footer text-center">
            <div class="form-group">
                <asp:Button class="btn btn-primary btn-lg" ID="BttnSubmit" runat="server" Text="SAVE" />
                <asp:Button class="btn btn-primary btn-lg" ID="BttnClear" runat="server" Text="CLEAR" />
            </div>
        </div>
    </section>
</asp:Content>