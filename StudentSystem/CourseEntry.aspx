<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CourseEntry.aspx.cs" Inherits="StudentSystem.Contact" Culture="Auto" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            color: #FF0000;
            font-size: large;
        }

    </style>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="BodyContent" runat="server">       
   <h4>COURSE ENTRY</h4> <br />
  <center>  <section class="page-section about-headingr">
        <div class="card" style="width:1005px"> 
            <fieldset style="width:1000px; text-align:center">
                 <legend style="text-align:left">&nbsp;COURSE</legend>
                   <div class="row">   
                           <div class="col-lg-12">
                            <div class="form-group">
                                <asp:Label ID="LblCName" runat="server" Width="100px" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Course:</asp:Label>
                                <asp:DropDownList ID="DDLCname" runat="server" CssClass="auto-style32" Height="39px" Width="900px">
                                <asp:ListItem>Select</asp:ListItem>
                                <asp:ListItem>**COLLEGE OF COMPUTER INFORMATION and COMMUNICATION TECHNOLOGY  </asp:ListItem>                 
                                <asp:ListItem>BIT Major in Computer Technology</asp:ListItem>
                                <asp:ListItem>BS in Information Technology</asp:ListItem>
                                <asp:ListItem>BS in Information Systems </asp:ListItem>
                                <asp:ListItem>**COLLEGE OF ENGINEERING** </asp:ListItem>
                                <asp:ListItem>BS in Civil Engineering </asp:ListItem>
                                <asp:ListItem>BS in Computer Engineering</asp:ListItem>
                                <asp:ListItem>BS in Electronics Engineering</asp:ListItem>
                                <asp:ListItem>BS in Electrical Engineering</asp:ListItem>
                                <asp:ListItem>BS in Industrial Engineering</asp:ListItem>
                                <asp:ListItem>BS in Mechanical Engineering</asp:ListItem>
                                <asp:ListItem>**COLLEGE OF EDUCATION** </asp:ListItem>
                                <asp:ListItem>Bachelor of Early Childhood Education</asp:ListItem>
                                <asp:ListItem>Bachelor of Elementary Education</asp:ListItem>
                                <asp:ListItem>Bachelor of Secondary Education</asp:ListItem>
                                <asp:ListItem>Bachelor of Special Needs Education</asp:ListItem>
                                <asp:ListItem>BTVTEd-Major in Automotive Technology</asp:ListItem>
                                <asp:ListItem>BTVTEd-Major in Civil and Construction Technology</asp:ListItem>
                                <asp:ListItem>BTVTEd-Major in Garments,Fashion,and Design</asp:ListItem>
                                <asp:ListItem>BTVTEd-Major in Drafting Technology</asp:ListItem>
                                <asp:ListItem>BTVTEd-Major in Electronics Technology</asp:ListItem>
                                <asp:ListItem>BTVTEd-Major in Welding and Fabrication Technology</asp:ListItem>
                                <asp:ListItem>BTVTEd-Major in Electrical Technology</asp:ListItem>
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
                                <asp:ListItem>BS in Statistics (BS Stat) </asp:ListItem>
                                <asp:ListItem>BS in Tourism Management (BSTM) </asp:ListItem>
                                <asp:ListItem>BS in Hospitality Management (BSHM) </asp:ListItem>
                                <asp:ListItem>**COLLEGE OF MANAGEMENT AND ENTREPRENEURSHIP** </asp:ListItem>
                                <asp:ListItem>Bachelor of Public Administration (BPA) </asp:ListItem>
                                <asp:ListItem>BS in Business Administration (BSBA)-Major in Marketing Management </asp:ListItem>
                                <asp:ListItem>BS in Tourism Management (BSTM) </asp:ListItem>
                                <asp:ListItem>BS in Hospitality Management (BSHM) </asp:ListItem>
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RFVCName" runat="server" ErrorMessage="*" InitialValue="Select" ControlToValidate="DDLCname" CssClass="auto-style1"></asp:RequiredFieldValidator>
                            </div>
                           </div>
                       </div>
                   <div class="row">
                           <div class="col-lg-12">
                            <div class="form-group">
                                <asp:Label ID="LblCode" runat="server" >&nbsp;Course Code:</asp:Label>
                                <asp:DropDownList ID="DDLCode" runat="server" Height="39px" Width="522px">
                                   <asp:ListItem>Select</asp:ListItem>
                                <asp:ListItem>**COLLEGE OF COMPUTER INFORMATION AND COMMUNICATION TECHNOLOGY**</asp:ListItem>                   
                                <asp:ListItem>BIT-CT</asp:ListItem>
                                <asp:ListItem>BSIT</asp:ListItem>
                                <asp:ListItem>BSIS</asp:ListItem>
                                <asp:ListItem>**COLLEGE OF ENGINEERING** </asp:ListItem>
                                <asp:ListItem>BSCE</asp:ListItem>
                                <asp:ListItem>BSCpE</asp:ListItem>
                                <asp:ListItem>BSECE</asp:ListItem>
                                <asp:ListItem>BSEE</asp:ListItem>
                                <asp:ListItem>BSIE</asp:ListItem>
                                <asp:ListItem>BSME</asp:ListItem>
                                <asp:ListItem>**COLLEGE OF EDUCATION** </asp:ListItem>
                                <asp:ListItem>BECEd</asp:ListItem>
                                <asp:ListItem>BEEd</asp:ListItem>
                                <asp:ListItem>BSEd</asp:ListItem>
                                <asp:ListItem>BSNEd</asp:ListItem>
                                <asp:ListItem>BTVTEd-Automotive Technology</asp:ListItem>
                                <asp:ListItem>BTVTEd-Civil and Construction Technology</asp:ListItem>
                                <asp:ListItem>BTVTEd-Garments,Fashion,and Design</asp:ListItem>
                                <asp:ListItem>BTVTEd-Drafting Technology</asp:ListItem>
                                <asp:ListItem>BTVTEd-Electronics Technology</asp:ListItem>
                                <asp:ListItem>BTVTEd-Welding and Fabrication Technology</asp:ListItem>
                                <asp:ListItem>BTVTEd-Electrical Technology</asp:ListItem>
                                <asp:ListItem>BTVTEd-Food and Service Management</asp:ListItem>
                                <asp:ListItem>BTLEd-Home Economics</asp:ListItem>
                                <asp:ListItem>BTLEd-Industrial Arts</asp:ListItem>
                                <asp:ListItem>BTLEd-Information and Communication Technology</asp:ListItem>
                                <asp:ListItem>**COLLEGE OF TECHNOLOGY** </asp:ListItem>
                                <asp:ListItem>BSTechM</asp:ListItem>
                                <asp:ListItem>BSGD</asp:ListItem>
                                <asp:ListItem>BSMx</asp:ListItem>
                                <asp:ListItem>BIT-Civil Technology</asp:ListItem>
                                <asp:ListItem>BIT-Drafting Technology</asp:ListItem>
                                <asp:ListItem>BIT-Furniture and Cabinet Making Technology</asp:ListItem>
                                <asp:ListItem>BIT-Interior Design Technology</asp:ListItem>
                                <asp:ListItem>BIT-Refrigeration and Air Conditioning Technology</asp:ListItem>
                                <asp:ListItem>BIT-Power Plant Technology</asp:ListItem>
                                <asp:ListItem>BIT-Welding and Fabrication Technology</asp:ListItem>
                                <asp:ListItem>BIT-Automotive Technology</asp:ListItem>
                                <asp:ListItem>BIT-Cosmetology</asp:ListItem>
                                <asp:ListItem>BIT-Electrical Technology</asp:ListItem>
                                <asp:ListItem>BIT-Electronics Technology</asp:ListItem>
                                <asp:ListItem>BIT-Food Preparation and Services Technology</asp:ListItem>
                                <asp:ListItem>BIT-Garments Technology</asp:ListItem>
                                <asp:ListItem>BIT-Machine Shop Technology</asp:ListItem>
                                <asp:ListItem>BIT-Electronics Technology</asp:ListItem>
                                <asp:ListItem>**COLLEGE OF ARTS AND SCIENCES** </asp:ListItem>
                                <asp:ListItem>BAEL</asp:ListItem>
                                <asp:ListItem>BAF</asp:ListItem>
                                <asp:ListItem>BAL</asp:ListItem>
                                <asp:ListItem>BSDevCom</asp:ListItem>
                                <asp:ListItem>BBSMath</asp:ListItem>
                                <asp:ListItem>BS Psych</asp:ListItem>
                                <asp:ListItem>BSStat </asp:ListItem>
                                <asp:ListItem>BSTM </asp:ListItem>
                                <asp:ListItem>BSHM</asp:ListItem>
                                <asp:ListItem>**COLLEGE OF MANAGEMENT AND ENTREPRENEURSHIP** </asp:ListItem>
                                <asp:ListItem>BPA</asp:ListItem>
                                <asp:ListItem>BSBA</asp:ListItem>
                                <asp:ListItem>BSTM </asp:ListItem>
                                <asp:ListItem>BSHM</asp:ListItem>
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RFVCode" runat="server" ErrorMessage="*" InitialValue="Select" ControlToValidate="DDLCode" CssClass="auto-style1"></asp:RequiredFieldValidator>
                            </div>
                        </div>     
                   </div>
            </fieldset>
        </div>  <br />
        <div class="card-footer text-center">
            <div class="form-group">
                <asp:Button class="btn btn-primary btn-lg" ID="BttnSubmit" runat="server" OnClick="BttnSubmit_Click" Text="SAVE" />
            </div>
        </div>
      </center>
   </section>
</asp:Content>