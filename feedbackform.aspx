<%@ Page Language="C#" AutoEventWireup="true" CodeFile="feedbackform.aspx.cs" Inherits="feedbackform" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Feedback Form</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Panel ID="Panel1" runat="server" Height="609px" Style="background-image: url(web2.bmp)"
            Width="920px">
            <table style="width: 919px; height: 573px">
                <tr>
                    <td style="width: 141px; height: 101px">
                    </td>
                    <td style="height: 101px; font-weight: bold; font-size: 24pt; color: #ffffff;">
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<br />
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; MNNIT - Online Feedback&nbsp;
                        Form<br />
                    </td>
                </tr>
                <tr>
                    <td style="width: 141px; height: 71px">
                        &nbsp; &nbsp; &nbsp;
                        <table>
                            <tr>
                                <td style="width: 96px; height: 20px">
                                    &nbsp; &nbsp;&nbsp;
                        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" Font-Size="Large" ForeColor="Navy">Logout</asp:LinkButton></td>
                            </tr>
                            <tr>
                                <td style="width: 96px">
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 96px">
                                </td>
                            </tr>
                        </table>
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                    </td>
                    <td style="height: 71px">
                        <br />
                        <table>
                            <tr>
                                <td style="width: 270px">
                                    <asp:Label ID="Label1" runat="server" Text="Fill up the Feedback From for Class ID :" Font-Bold="True" Font-Names="Absinth Flourishes I" ForeColor="Navy"></asp:Label></td>
                                <td style="width: 132px">
                        <asp:Label ID="Label4" runat="server" Text="Label" Font-Bold="True" ForeColor="SaddleBrown"></asp:Label></td>
                            </tr>
                            <tr>
                                <td style="width: 270px; height: 16px">
                        <asp:Label ID="Label32" runat="server" Text="Label" Width="67px" Visible="False"></asp:Label>
                                </td>
                                <td style="width: 132px; height: 16px">
                                </td>
                            </tr>
                        </table>
                        &nbsp;&nbsp;<br />
                        &nbsp;&nbsp;
                        <asp:Label ID="Label34" runat="server" ForeColor="#400000" Text="1. Select the appropriate subject and  teacher."
                            Width="398px"></asp:Label><br />
                        <br />
                        &nbsp;&nbsp;
                        <asp:Label ID="Label35" runat="server" ForeColor="#400000" Text="2. Then fill the feedback form for the selected teacher then click on submit button."
                            Width="403px"></asp:Label>
                        &nbsp;&nbsp;<br />
                        <br />
                        &nbsp;&nbsp;
                        <asp:Label ID="Label36" runat="server" ForeColor="#400000" Text="3. Reapeat the same process for all teachers ."
                            Width="397px"></asp:Label><br />
                        <br />
                        &nbsp;&nbsp;
                        <asp:Label ID="Label37" runat="server" Text="4. Logout after filling the forms of all teachers."
                            Width="404px"></asp:Label><br />
                        &nbsp;&nbsp;
                        <br />
                        <br />
                        <table style="width: 635px">
                            <tr>
                                <td style="width: 95px; height: 24px">
                                </td>
                                <td style="width: 103px; height: 24px;">
                                    <asp:Label ID="Label2" runat="server" Text="Subject:" Font-Bold="True" Font-Names=" Absinth Flourishes I" ForeColor="Navy"></asp:Label></td>
                                <td style="width: 170px; height: 24px;">
                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1"
                            DataTextField="subname" DataValueField="subname" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Font-Bold="True" ForeColor="SaddleBrown" Width="180px">
                        </asp:DropDownList></td>
                            </tr>
                            <tr>
                                <td style="width: 95px">
                                </td>
                                <td style="width: 103px">
                                </td>
                                <td style="width: 170px">
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 95px">
                                </td>
                                <td style="width: 103px">
                        <asp:Label ID="Label3" runat="server" Text="Teacher:" Font-Bold="True" Font-Names=" Absinth Flourishes I" ForeColor="Navy"></asp:Label></td>
                                <td style="width: 170px">
                        <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="tid" DataValueField="tid" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" Font-Bold="True" ForeColor="SaddleBrown" Width="180px">
                        </asp:DropDownList></td>
                            </tr>
                            <tr>
                                <td style="width: 95px">
                                </td>
                                <td style="width: 103px">
                                </td>
                                <td style="width: 170px">
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 95px">
                                </td>
                                <td style="width: 103px">
                                </td>
                                <td style="width: 170px">
                        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Fill Feedback Form" Font-Bold="True" Font-Names=" Absinth Flourishes I" ForeColor="Navy" Width="154px" /></td>
                            </tr>
                            <tr>
                                <td style="width: 95px">
                                </td>
                                <td style="width: 103px">
                                </td>
                                <td style="width: 170px">
                                    <asp:Label ID="Label33" runat="server" ForeColor="Maroon"></asp:Label></td>
                            </tr>
                        </table>
                        &nbsp;<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                            SelectCommand="SELECT DISTINCT [subname] FROM [subject] WHERE ([classid] = @classid)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="Label4" Name="classid" PropertyName="Text" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [tid] FROM [subject_allotment_new] WHERE (([classid] = @classid) AND ([subname] = @subname))">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="Label4" Name="classid" PropertyName="Text" Type="String" />
                                <asp:ControlParameter ControlID="DropDownList1" Name="subname" PropertyName="SelectedValue"
                                    Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        &nbsp;&nbsp;&nbsp;
                        <asp:Panel ID="Panel3" runat="server" Height="500px" Width="125px">
                        </asp:Panel>
                        <br />
                        <asp:Panel ID="Panel2" runat="server" Height="650px" Visible="False" Width="600px" BorderColor="Navy" BorderStyle="Solid" ScrollBars="Vertical">
                        <asp:Label ID="Label5" runat="server" Text="Q1.)syllabus was properly defined" Font-Bold="True" Font-Names="Absinth Flourishes I" ForeColor="Navy" Width="248px"></asp:Label><br />
                            <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal"
                            Width="417px" Font-Bold="True" ForeColor="SaddleBrown" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged">
                            <asp:ListItem Value="0">Not at all</asp:ListItem>
                            <asp:ListItem Value="1">A bit</asp:ListItem>
                            <asp:ListItem Value="2">Fair</asp:ListItem>
                            <asp:ListItem Value="3">Good</asp:ListItem>
                            <asp:ListItem Value="4">V.Good</asp:ListItem>
                        </asp:RadioButtonList><br />
                            <asp:Label ID="Label6" runat="server" Text="Q2.) Amount of material covered in course was just right" Font-Bold="True" Font-Names="Absinth Flourishes I" ForeColor="Navy" Width="464px"></asp:Label><asp:RadioButtonList ID="RadioButtonList2" runat="server" RepeatDirection="Horizontal"
                            Width="417px" Font-Bold="True" ForeColor="SaddleBrown">
                            <asp:ListItem Value="0">Not at all</asp:ListItem>
                            <asp:ListItem Value="1">A bit</asp:ListItem>
                            <asp:ListItem Value="2">Fair</asp:ListItem>
                            <asp:ListItem Value="3">Good</asp:ListItem>
                            <asp:ListItem Value="4">V.Good</asp:ListItem>
                        </asp:RadioButtonList><br />
                            <asp:Label ID="Label7" runat="server" Text="Q3.) Topics were covered in logical sequece" Font-Bold="True" Font-Names="Absinth Flourishes I" ForeColor="Navy" Width="428px"></asp:Label><asp:RadioButtonList ID="RadioButtonList3" runat="server" RepeatDirection="Horizontal"
                            Width="417px" Font-Bold="True" ForeColor="SaddleBrown">
                            <asp:ListItem Value="0">Not at all</asp:ListItem>
                            <asp:ListItem Value="1">A bit</asp:ListItem>
                            <asp:ListItem Value="2">Fair</asp:ListItem>
                            <asp:ListItem Value="3">Good</asp:ListItem>
                            <asp:ListItem Value="4">V.Good</asp:ListItem>
                        </asp:RadioButtonList><br />
                            <asp:Label ID="Label8" runat="server" Text="Q4.) Tutorials were useful" Font-Bold="True" Font-Names="Absinth Flourishes I" ForeColor="Navy" Width="355px"></asp:Label><br />
                            <asp:RadioButtonList ID="RadioButtonList4" runat="server" RepeatDirection="Horizontal"
                            Width="417px" Font-Bold="True" ForeColor="SaddleBrown">
                            <asp:ListItem Value="0">Not at all</asp:ListItem>
                            <asp:ListItem Value="1">A bit</asp:ListItem>
                            <asp:ListItem Value="2">Fair</asp:ListItem>
                            <asp:ListItem Value="3">Good</asp:ListItem>
                            <asp:ListItem Value="4">V.Good</asp:ListItem>
                        </asp:RadioButtonList><br />
                            <asp:Label ID="Label9" runat="server" Text="Q5.) Assignments helped better understand the course material" Font-Bold="True" Font-Names="Absinth Flourishes I" ForeColor="Navy" Width="482px"></asp:Label><asp:RadioButtonList ID="RadioButtonList5" runat="server" RepeatDirection="Horizontal"
                            Width="417px" Font-Bold="True" ForeColor="SaddleBrown">
                            <asp:ListItem Value="0">Not at all</asp:ListItem>
                            <asp:ListItem Value="1">A bit</asp:ListItem>
                            <asp:ListItem Value="2">Fair</asp:ListItem>
                            <asp:ListItem Value="3">Good</asp:ListItem>
                            <asp:ListItem Value="4">V.Good</asp:ListItem>
                        </asp:RadioButtonList><br />
                            <asp:Label ID="Label10" runat="server" Text="Q6.) Topics were covered in a logical sequence" Font-Bold="True" Font-Names="Absinth Flourishes I" ForeColor="Navy" Width="380px"></asp:Label><asp:RadioButtonList ID="RadioButtonList6" runat="server" RepeatDirection="Horizontal"
                            Width="417px" Font-Bold="True" ForeColor="SaddleBrown">
                            <asp:ListItem Value="0">Not at all</asp:ListItem>
                            <asp:ListItem Value="1">A bit</asp:ListItem>
                            <asp:ListItem Value="2">Fair</asp:ListItem>
                            <asp:ListItem Value="3">Good</asp:ListItem>
                            <asp:ListItem Value="4">V.Good</asp:ListItem>
                        </asp:RadioButtonList><br />
                            <asp:Label ID="Label11" runat="server" Text="Q7.) Pace of instruction was even" Font-Bold="True" Font-Names="Absinth Flourishes I" ForeColor="Navy" Width="396px"></asp:Label><asp:RadioButtonList ID="RadioButtonList7" runat="server" RepeatDirection="Horizontal"
                            Width="417px" Font-Bold="True" ForeColor="SaddleBrown">
                            <asp:ListItem Value="0">Not at all</asp:ListItem>
                            <asp:ListItem Value="1">A bit</asp:ListItem>
                            <asp:ListItem Value="2">Fair</asp:ListItem>
                            <asp:ListItem Value="3">Good</asp:ListItem>
                            <asp:ListItem Value="4">V.Good</asp:ListItem>
                        </asp:RadioButtonList><br />
                            <asp:Label ID="Label12" runat="server" Text="Q8.) Equipments available in the laboratory were functioning" Font-Bold="True" Font-Names="Absinth Flourishes I" ForeColor="Navy" Width="432px"></asp:Label><asp:RadioButtonList ID="RadioButtonList8" runat="server" RepeatDirection="Horizontal"
                            Width="417px" Font-Bold="True" ForeColor="SaddleBrown">
                            <asp:ListItem Value="0">Not at all</asp:ListItem>
                            <asp:ListItem Value="1">A bit</asp:ListItem>
                            <asp:ListItem Value="2">Fair</asp:ListItem>
                            <asp:ListItem Value="3">Good</asp:ListItem>
                            <asp:ListItem Value="4">V.Good</asp:ListItem>
                        </asp:RadioButtonList><br />
                            <asp:Label ID="Label13" runat="server" Text="Q9.) Manuals were available in the laboratory" Font-Bold="True" Font-Names="Absinth Flourishes I" ForeColor="Navy" Width="401px"></asp:Label><asp:RadioButtonList ID="RadioButtonList9" runat="server" RepeatDirection="Horizontal"
                            Width="417px" Font-Bold="True" ForeColor="SaddleBrown">
                            <asp:ListItem Value="0">Not at all</asp:ListItem>
                            <asp:ListItem Value="1">A bit</asp:ListItem>
                            <asp:ListItem Value="2">Fair</asp:ListItem>
                            <asp:ListItem Value="3">Good</asp:ListItem>
                            <asp:ListItem Value="4">V.Good</asp:ListItem>
                        </asp:RadioButtonList><br />
                            <asp:Label ID="Label14" runat="server" Text="Q10.)Exam truely reflected the grasp of the subject" Font-Bold="True" Font-Names="Absinth Flourishes I" ForeColor="Navy" Width="378px"></asp:Label><asp:RadioButtonList ID="RadioButtonList10" runat="server" RepeatDirection="Horizontal"
                            Width="417px" Font-Bold="True" ForeColor="SaddleBrown">
                            <asp:ListItem Value="0">Not at all</asp:ListItem>
                            <asp:ListItem Value="1">A bit</asp:ListItem>
                            <asp:ListItem Value="2">Fair</asp:ListItem>
                            <asp:ListItem Value="3">Good</asp:ListItem>
                            <asp:ListItem Value="4">V.Good</asp:ListItem>
                        </asp:RadioButtonList><br />
                            <asp:Label ID="Label15" runat="server" Text="Q11.) Text/reference material was easily available" Font-Bold="True" Font-Names="Absinth Flourishes I" ForeColor="Navy" Width="368px"></asp:Label><asp:RadioButtonList ID="RadioButtonList11" runat="server" RepeatDirection="Horizontal"
                            Width="417px" Font-Bold="True" ForeColor="SaddleBrown">
                            <asp:ListItem Value="0">Not at all</asp:ListItem>
                            <asp:ListItem Value="1">A bit</asp:ListItem>
                            <asp:ListItem Value="2">Fair</asp:ListItem>
                            <asp:ListItem Value="3">Good</asp:ListItem>
                            <asp:ListItem Value="4">V.Good</asp:ListItem>
                        </asp:RadioButtonList><br />
                            <asp:Label ID="Label16" runat="server" Text="Q12.) Instructor is punctual" Font-Bold="True" Font-Names="Absinth Flourishes I" ForeColor="Navy" Width="348px"></asp:Label><asp:RadioButtonList ID="RadioButtonList12" runat="server" RepeatDirection="Horizontal"
                            Width="417px" Font-Bold="True" ForeColor="SaddleBrown">
                            <asp:ListItem Value="0">Not at all</asp:ListItem>
                            <asp:ListItem Value="1">A bit</asp:ListItem>
                            <asp:ListItem Value="2">Fair</asp:ListItem>
                            <asp:ListItem Value="3">Good</asp:ListItem>
                            <asp:ListItem Value="4">V.Good</asp:ListItem>
                        </asp:RadioButtonList><br />
                            <asp:Label ID="Label17" runat="server" Text="Q13.) Instructor's voice and writing is clear and comprehendible" Font-Bold="True" Font-Names="Absinth Flourishes I" ForeColor="Navy" Width="435px"></asp:Label><asp:RadioButtonList ID="RadioButtonList13" runat="server" RepeatDirection="Horizontal"
                            Width="417px" Font-Bold="True" ForeColor="SaddleBrown">
                            <asp:ListItem Value="0">Not at all</asp:ListItem>
                            <asp:ListItem Value="1">A bit</asp:ListItem>
                            <asp:ListItem Value="2">Fair</asp:ListItem>
                            <asp:ListItem Value="3">Good</asp:ListItem>
                            <asp:ListItem Value="4">V.Good</asp:ListItem>
                        </asp:RadioButtonList><br />
                            <asp:Label ID="Label18" runat="server" Text="Q14.)  Instructor's posture and gestures were appropriate in the class" Font-Bold="True" Font-Names="Absinth Flourishes I" ForeColor="Navy" Width="469px"></asp:Label><asp:RadioButtonList ID="RadioButtonList14" runat="server" RepeatDirection="Horizontal"
                            Width="417px" Font-Bold="True" ForeColor="SaddleBrown">
                            <asp:ListItem Value="0">Not at all</asp:ListItem>
                            <asp:ListItem Value="1">A bit</asp:ListItem>
                            <asp:ListItem Value="2">Fair</asp:ListItem>
                            <asp:ListItem Value="3">Good</asp:ListItem>
                            <asp:ListItem Value="4">V.Good</asp:ListItem>
                        </asp:RadioButtonList><br />
                            <asp:Label ID="Label19" runat="server" Text="Q15.) Course objectives were fulfilled" Font-Bold="True" Font-Names="Absinth Flourishes I" ForeColor="Navy" Width="456px"></asp:Label><asp:RadioButtonList ID="RadioButtonList15" runat="server" RepeatDirection="Horizontal"
                            Width="417px" Font-Bold="True" ForeColor="SaddleBrown">
                            <asp:ListItem Value="0">Not at all</asp:ListItem>
                            <asp:ListItem Value="1">A bit</asp:ListItem>
                            <asp:ListItem Value="2">Fair</asp:ListItem>
                            <asp:ListItem Value="3">Good</asp:ListItem>
                            <asp:ListItem Value="4">V.Good</asp:ListItem>
                        </asp:RadioButtonList><br />
                            <asp:Label ID="Label20" runat="server" Text="Q16.) Fundamental principles were well emphasized" Font-Bold="True" Font-Names="Absinth Flourishes I" ForeColor="Navy" Width="441px"></asp:Label><asp:RadioButtonList ID="RadioButtonList16" runat="server" RepeatDirection="Horizontal"
                            Width="417px" Font-Bold="True" ForeColor="SaddleBrown">
                            <asp:ListItem Value="0">Not at all</asp:ListItem>
                            <asp:ListItem Value="1">A bit</asp:ListItem>
                            <asp:ListItem Value="2">Fair</asp:ListItem>
                            <asp:ListItem Value="3">Good</asp:ListItem>
                            <asp:ListItem Value="4">V.Good</asp:ListItem>
                        </asp:RadioButtonList><br />
                            <br />
                            <asp:Label ID="Label21" runat="server" Text="Q17.)  Instructor was approachable for clarifying difficulties" Font-Bold="True" Font-Names="Absinth Flourishes I" ForeColor="Navy" Width="418px"></asp:Label><asp:RadioButtonList ID="RadioButtonList17" runat="server" RepeatDirection="Horizontal"
                            Width="417px" Font-Bold="True" ForeColor="SaddleBrown">
                            <asp:ListItem Value="0">Not at all</asp:ListItem>
                            <asp:ListItem Value="1">A bit</asp:ListItem>
                            <asp:ListItem Value="2">Fair</asp:ListItem>
                            <asp:ListItem Value="3">Good</asp:ListItem>
                            <asp:ListItem Value="4">V.Good</asp:ListItem>
                        </asp:RadioButtonList><br />
                            <asp:Label ID="Label22" runat="server" Text="Q18.) Boardworks and visual aids were of good quality " Font-Bold="True" Font-Names="Absinth Flourishes I" ForeColor="Navy" Width="436px"></asp:Label><asp:RadioButtonList ID="RadioButtonList18" runat="server" RepeatDirection="Horizontal"
                            Width="417px" Font-Bold="True" ForeColor="SaddleBrown">
                            <asp:ListItem Value="0">Not at all</asp:ListItem>
                            <asp:ListItem Value="1">A bit</asp:ListItem>
                            <asp:ListItem Value="2">Fair</asp:ListItem>
                            <asp:ListItem Value="3">Good</asp:ListItem>
                            <asp:ListItem Value="4">V.Good</asp:ListItem>
                        </asp:RadioButtonList><br />
                            <asp:Label ID="Label23" runat="server" Text="Q19.)  Instructor was very motivating" Font-Bold="True" Font-Names="Absinth Flourishes I" ForeColor="Navy" Width="355px"></asp:Label><asp:RadioButtonList ID="RadioButtonList19" runat="server" RepeatDirection="Horizontal"
                            Width="417px" Font-Bold="True" ForeColor="SaddleBrown">
                            <asp:ListItem Value="0">Not at all</asp:ListItem>
                            <asp:ListItem Value="1">A bit</asp:ListItem>
                            <asp:ListItem Value="2">Fair</asp:ListItem>
                            <asp:ListItem Value="3">Good</asp:ListItem>
                            <asp:ListItem Value="4">V.Good</asp:ListItem>
                        </asp:RadioButtonList><br />
                            <asp:Label ID="Label24" runat="server" Text="Q20.)  Instructor was well prepared for the lectures" Font-Bold="True" Font-Names="Absinth Flourishes I" ForeColor="Navy" Width="431px"></asp:Label><asp:RadioButtonList ID="RadioButtonList20" runat="server" RepeatDirection="Horizontal"
                            Width="417px" Font-Bold="True" ForeColor="SaddleBrown">
                            <asp:ListItem Value="0">Not at all</asp:ListItem>
                            <asp:ListItem Value="1">A bit</asp:ListItem>
                            <asp:ListItem Value="2">Fair</asp:ListItem>
                            <asp:ListItem Value="3">Good</asp:ListItem>
                            <asp:ListItem Value="4">V.Good</asp:ListItem>
                        </asp:RadioButtonList><br />
                            <asp:Label ID="Label25" runat="server" Text="Q21.)  Instructor was organised in his/her presentation" Font-Bold="True" Font-Names="Absinth Flourishes I" ForeColor="Navy" Width="456px"></asp:Label><asp:RadioButtonList
                            ID="RadioButtonList21" runat="server" RepeatDirection="Horizontal" Width="417px" Font-Bold="True" ForeColor="SaddleBrown"><asp:ListItem Value="0">Not at all</asp:ListItem>
<asp:ListItem Value="1">A bit</asp:ListItem>
<asp:ListItem Value="2">Fair</asp:ListItem>
<asp:ListItem Value="3">Good</asp:ListItem>
<asp:ListItem Value="4">V.Good</asp:ListItem>
</asp:RadioButtonList><br />
                            <asp:Label ID="Label26" runat="server" Text="Q22.)  Instructor was able to answer the questions raised in the class" Font-Bold="True" Font-Names="Absinth Flourishes I" ForeColor="Navy" Width="486px"></asp:Label><asp:RadioButtonList
                            ID="RadioButtonList22" runat="server" RepeatDirection="Horizontal" Width="417px" Font-Bold="True" ForeColor="SaddleBrown"><asp:ListItem Value="0">Not at all</asp:ListItem>
<asp:ListItem Value="1">A bit</asp:ListItem>
<asp:ListItem Value="2">Fair</asp:ListItem>
<asp:ListItem Value="3">Good</asp:ListItem>
<asp:ListItem Value="4">V.Good</asp:ListItem>
</asp:RadioButtonList><br />
                            <asp:Label ID="Label27" runat="server" Text="Q23.) All the alloted lectures were held" Font-Bold="True" Font-Names="Absinth Flourishes I" ForeColor="Navy" Width="465px"></asp:Label><asp:RadioButtonList
                            ID="RadioButtonList23" runat="server" RepeatDirection="Horizontal" Width="417px" Font-Bold="True" ForeColor="SaddleBrown"><asp:ListItem Value="0">Not at all</asp:ListItem>
<asp:ListItem Value="1">A bit</asp:ListItem>
<asp:ListItem Value="2">Fair</asp:ListItem>
<asp:ListItem Value="3">Good</asp:ListItem>
<asp:ListItem Value="4">V.Good</asp:ListItem>
</asp:RadioButtonList><br />
                            <asp:Label ID="Label28" runat="server" Text="Q24.) Communication was comprehendible" Font-Bold="True" Font-Names="Absinth Flourishes I" ForeColor="Navy" Width="415px"></asp:Label><br />
                            <asp:RadioButtonList
                            ID="RadioButtonList24" runat="server" RepeatDirection="Horizontal" Width="417px" Font-Bold="True" ForeColor="SaddleBrown"><asp:ListItem Value="0">Not at all</asp:ListItem>
<asp:ListItem Value="1">A bit</asp:ListItem>
<asp:ListItem Value="2">Fair</asp:ListItem>
<asp:ListItem Value="3">Good</asp:ListItem>
<asp:ListItem Value="4">V.Good</asp:ListItem>
</asp:RadioButtonList><br />
                            <asp:Label ID="Label29" runat="server" Text="Q25.)  Instructor encouraged questions to be asked" Font-Bold="True" Font-Names="Absinth Flourishes I" ForeColor="Navy" Width="438px"></asp:Label><asp:RadioButtonList
                            ID="RadioButtonList25" runat="server" RepeatDirection="Horizontal" Width="417px" Font-Bold="True" ForeColor="SaddleBrown"><asp:ListItem Value="0">Not at all</asp:ListItem>
<asp:ListItem Value="1">A bit</asp:ListItem>
<asp:ListItem Value="2">Fair</asp:ListItem>
<asp:ListItem Value="3">Good</asp:ListItem>
<asp:ListItem Value="4">V.Good</asp:ListItem>
</asp:RadioButtonList><br />
                            <asp:Label ID="Label30" runat="server" Text="Q26.) Examples discussed in the class were sufficient" Font-Bold="True" Font-Names="Absinth Flourishes I" ForeColor="Navy" Width="450px"></asp:Label><asp:RadioButtonList
                            ID="RadioButtonList26" runat="server" RepeatDirection="Horizontal" Width="417px" Font-Bold="True" ForeColor="SaddleBrown"><asp:ListItem Value="0">Not at all</asp:ListItem>
<asp:ListItem Value="1">A bit</asp:ListItem>
<asp:ListItem Value="2">Fair</asp:ListItem>
<asp:ListItem Value="3">Good</asp:ListItem>
<asp:ListItem Value="4">V.Good</asp:ListItem>
</asp:RadioButtonList><br />
                            <asp:Label ID="Label31" runat="server" Text="Please leave your comments for the improvement of course:" Font-Bold="True" Font-Names="Absinth Flourishes I" ForeColor="Navy"></asp:Label><asp:TextBox
                                ID="TextBox1" runat="server" Height="86px" Width="548px" Font-Bold="True" ForeColor="SaddleBrown"></asp:TextBox><br />
                            <br />
                            &nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" Font-Bold="True" Font-Names=" Absinth Flourishes I" ForeColor="Navy" /><br />
                            <br />
                        </asp:Panel>
                        &nbsp;</td>
                </tr>
            </table>
            <br />
        </asp:Panel>
    
    </div>
    </form>
</body>
</html>
