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
  <section class="page-section about-heading" style="background-color:transparent">
        <div class="card" style="width:1005px;margin-left:150px;"> 
            <fieldset style="width:1000px; text-align:center">
                 <legend style="text-align:left">&nbsp;COURSE</legend>
                   <div class="row" style="background-color:transparent">   
                           <div class="col-lg-12">
                            <div class="form-group">
                                <asp:Label ID="LblCName" runat="server" Width="100px" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Course:</asp:Label>
                                <asp:DropDownList ID="DDLCname" runat="server" CssClass="auto-style32" Height="39px" Width="900px">
                                <asp:ListItem>Select</asp:ListItem>
                                <asp:ListItem>**COLLEGE OF COMPUTER INFORMATION and COMMUNICATION TECHNOLOGY  </asp:ListItem>                 
                                <asp:ListItem>BIT Major in Computer Technology</asp:ListItem>
                                <asp:ListItem>Bachelor of Science in Information Technology</asp:ListItem>
                                <asp:ListItem>Bachelor of Science in Information Systems </asp:ListItem>
                                <asp:ListItem>**COLLEGE OF ENGINEERING** </asp:ListItem>
                                <asp:ListItem>Bachelor of Science in Civil Engineering </asp:ListItem>
                                <asp:ListItem>Bachelor of Science in Computer Engineering</asp:ListItem>
                                <asp:ListItem>Bachelor of Science in Electronics Engineering</asp:ListItem>
                                <asp:ListItem>Bachelor of Science in Electrical Engineering</asp:ListItem>
                                <asp:ListItem>Bachelor of Science in Industrial Engineering</asp:ListItem>
                                <asp:ListItem>Bachelor of Science in Mechanical Engineering</asp:ListItem>
                                <asp:ListItem>**COLLEGE OF EDUCATION** </asp:ListItem>
                                <asp:ListItem>Bachelor of Early Childhood Education</asp:ListItem>
                                <asp:ListItem>Bachelor of Elementary Education</asp:ListItem>
                                <asp:ListItem>Bachelor of Secondary Education</asp:ListItem>
                                <asp:ListItem>Bachelor of Special Needs Education</asp:ListItem>
                                <asp:ListItem>Bachelor of Technical-Vocational Teacher Education-Major in Automotive Technology</asp:ListItem>
                                <asp:ListItem>Bachelor of Technical-Vocational Teacher Education-Major in Civil and Construction Technology</asp:ListItem>
                                <asp:ListItem>Bachelor of Technical-Vocational Teacher Education-Major in Garments,Fashion,and Design</asp:ListItem>
                                <asp:ListItem>Bachelor of Technical-Vocational Teacher Education-Major in Drafting Technology</asp:ListItem>
                                <asp:ListItem>Bachelor of Technical-Vocational Teacher Education-Major in Electronics Technology</asp:ListItem>
                                <asp:ListItem>Bachelor of Technical-Vocational Teacher Education-Major in Welding and Fabrication Technology</asp:ListItem>
                                <asp:ListItem>Bachelor of Technical-Vocational Teacher Education-Major in Electrical Technology</asp:ListItem>
                                <asp:ListItem>Bachelor of Technical-Vocational Teacher Education-Major in Food and Service Management</asp:ListItem>
                                <asp:ListItem>Bachelor of Technical and Livelihood Education-Major in Home Economics</asp:ListItem>
                                <asp:ListItem>Bachelor of Technical and Livelihood Education-Major in Industrial Arts</asp:ListItem>
                                <asp:ListItem>Bachelor of Technical and Livelihood Education-Major in Information and Communication Technology</asp:ListItem>
                                <asp:ListItem>**COLLEGE OF TECHNOLOGY** </asp:ListItem>
                                <asp:ListItem>Bachelor of Science in Technology Management </asp:ListItem>
                                <asp:ListItem>Bachelor of Science in Graphics and Design </asp:ListItem>
                                <asp:ListItem>Bachelor of Science in Mechatronics </asp:ListItem>
                                <asp:ListItem>Bachelor of Industrial Technology-Major in Civil Technology</asp:ListItem>
                                <asp:ListItem>Bachelor of Industrial Technology-Major in Drafting Technology</asp:ListItem>
                                <asp:ListItem>Bachelor of Industrial Technology-Major in Furniture and Cabinet Making Technology</asp:ListItem>
                                <asp:ListItem>Bachelor of Industrial Technology-Major in Interior Design Technology</asp:ListItem>
                                <asp:ListItem>Bachelor of Industrial Technology-Major in Refrigeration and Air Conditioning Technology</asp:ListItem>
                                <asp:ListItem>Bachelor of Industrial Technology-Major in Power Plant Technology</asp:ListItem>
                                <asp:ListItem>Bachelor of Industrial Technology-Major in Welding and Fabrication Technology</asp:ListItem>
                                <asp:ListItem>Bachelor of Industrial Technology-Major in Automotive Technology</asp:ListItem>
                                <asp:ListItem>Bachelor of Industrial Technology-Major in Cosmetology</asp:ListItem>
                                <asp:ListItem>Bachelor of Industrial Technology-Major in Electrical Technology</asp:ListItem>
                                <asp:ListItem>Bachelor of Industrial Technology-Major in Electronics Technology</asp:ListItem>
                                <asp:ListItem>Bachelor of Industrial Technology-Major in Food Preparation and Services Technology</asp:ListItem>
                                <asp:ListItem>Bachelor of Industrial Technology-Major in Garments Technology</asp:ListItem>
                                <asp:ListItem>Bachelor of Industrial Technology-Major in Machine Shop Technology</asp:ListItem>
                                <asp:ListItem>Bachelor of Industrial Technology-Major in Electronics Technology</asp:ListItem>
                                <asp:ListItem>**COLLEGE OF ARTS AND SCIENCES** </asp:ListItem>
                                <asp:ListItem>Bachelor of Arts in English Language (BAEL) </asp:ListItem>
                                <asp:ListItem>Batsilyer ng Sining Sa Filipino  </asp:ListItem>
                                <asp:ListItem>Bachelor of Arts in Literature  </asp:ListItem>
                                <asp:ListItem>Bachelor of Science in Development Communication  </asp:ListItem>
                                <asp:ListItem>Bachelor of Science in Mathematics </asp:ListItem>
                                <asp:ListItem>Bachelor of Science in Psychology  </asp:ListItem>
                                <asp:ListItem>Bachelor of Science in Statistics  </asp:ListItem>
                                <asp:ListItem>Bachelor of Science in Tourism Management  </asp:ListItem>
                                <asp:ListItem>Bachelor of Science in Hospitality Management  </asp:ListItem>
                                <asp:ListItem>**COLLEGE OF MANAGEMENT AND ENTREPRENEURSHIP** </asp:ListItem>
                                <asp:ListItem>Bachelor of Public Administration  </asp:ListItem>
                                <asp:ListItem>Bachelor of Science in Business Administration-Major in Marketing Management </asp:ListItem>
                                <asp:ListItem>Bachelor of Science in Tourism Management  </asp:ListItem>
                                <asp:ListItem>Bachelor of Science in Hospitality Management </asp:ListItem>
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
        <div class="card-footer text-center" style="background-color:transparent">
            <div class="form-group">
                <asp:Button class="btn btn-primary btn-lg" ID="BttnSubmit" runat="server" OnClick="BttnSubmit_Click" Text="SAVE" /> <br />     
            </div>
             <div class="btn-lg">
                <a style="color:black" href="CourseReport.aspx">View List of Courses</a>
                                 <a style="color:black;font-size:22px"  href="Homepage.aspx">Home</a>
            </div> 
        </div>
   </section>
</asp:Content>