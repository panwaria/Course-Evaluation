<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Admin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>SuperAdmin's Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Panel ID="Panel5" runat="server" Height="609px" Style="background-image: url(web2.bmp)"
            Width="920px">
            <table style="width: 919px; height: 573px">
                <tr>
                    <td style="width: 141px; height: 104px">
                    </td>
                    <td style="height: 104px; font-weight: bold; font-size: 24pt; color: white;">
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; MNNIT - Online Feedback&nbsp;
                        Form<br />
                    </td>
                </tr>
                <tr>
                    <td style="width: 141px; height: 98px">
                    </td>
                    <td style="height: 98px; background-color: PapayaWhip;">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                                SelectCommand="SELECT DISTINCT [classid] FROM [class]"></asp:SqlDataSource>
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                        <asp:Label ID="Label15" runat="server" Font-Bold="True" Font-Italic="False" Font-Size="Large"
                            Font-Underline="True" ForeColor="Maroon" Text="Actions on 'Class' and 'Teacher'"></asp:Label><br />
                        <br />
                        <table>
                            <tr>
                                <td style="width: 306px; height: 31px">
                        <asp:Label ID="Label14" runat="server" Text="Select Class:" Font-Bold="False" Font-Size="Large" ForeColor="Navy"></asp:Label></td>
                                <td style="width: 224px; height: 31px">
                        <asp:DropDownList ID="DropDownList4" runat="server" DataSourceID="SqlDataSource1"
                            OnSelectedIndexChanged="DropDownList4_SelectedIndexChanged" AutoPostBack="True" DataTextField="classid" DataValueField="classid" Font-Bold="True" ForeColor="Maroon" Width="140px">
                        </asp:DropDownList></td>
                            </tr>
                            <tr>
                                <td style="width: 306px; height: 32px">
                                    <asp:Label ID="Label20" runat="server" Text="View Allotted Teachers:" Font-Bold="False" Font-Size="Large" ForeColor="Navy"></asp:Label></td>
                                <td style="width: 224px; height: 32px">
                                    <asp:Button ID="Button14" runat="server" OnClick="Button14_Click"
                                Text="Allotted Teachers" Width="140px" Font-Bold="True" ForeColor="#404040" /></td>
                            </tr>
                            <tr>
                                <td style="width: 306px; height: 32px;">
                                    <asp:Label ID="Label18" runat="server" Text="Add New Class:" Font-Bold="False" Font-Size="Large" ForeColor="Navy"></asp:Label></td>
                                <td style="width: 224px; height: 32px;">
                                    <asp:Button ID="Button4" runat="server" OnClick="Button4_Click"
                                Text="Add New Class" Width="140px" Font-Bold="True" ForeColor="#404040" /></td>
                            </tr>
                            <tr>
                                <td style="width: 306px; height: 32px">
                                    <asp:Label ID="Label5" runat="server" Text="Add New Teacher:" Font-Bold="False" Font-Size="Large" ForeColor="Navy"></asp:Label></td>
                                <td style="width: 224px; height: 32px">
                                    <asp:Button ID="Button2" runat="server" Text="Add Teacher" OnClick="Button2_Click" Width="140px" Font-Bold="True" ForeColor="#404040" /></td>
                            </tr>
                            <tr>
                                <td style="width: 306px; height: 29px">
                                    <asp:Label ID="Label19" runat="server" Text="Delete Class:" Font-Bold="False" Font-Size="Large" ForeColor="Navy"></asp:Label></td>
                                <td style="width: 224px; height: 29px">
                                    <asp:Button ID="Button12" runat="server" OnClick="Button12_Click" Text="Delete Class"
                                        Width="140px" Font-Bold="True" ForeColor="#404040" /></td>
                            </tr>
                            <tr>
                                <td style="width: 306px; height: 29px">
                                    <asp:Label ID="Label6" runat="server" Text="Are you sure you want to delete this class ?"
                            Visible="False" Font-Bold="True" ForeColor="Maroon"></asp:Label></td>
                                <td style="width: 224px; height: 29px">
                        <asp:Button ID="Button8" runat="server" OnClick="Button8_Click"
                                Text="Yes" Visible="False" Width="35px" Font-Bold="True" ForeColor="#404040" />
                        &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button13" runat="server" OnClick="Button13_Click" Text="No" Visible="False"
                            Width="36px" Font-Bold="True" ForeColor="#404040" /></td>
                            </tr>
                        </table>
                        &nbsp; &nbsp;
                        &nbsp;&nbsp;&nbsp;<br />
                            <asp:Panel ID="Panel2" runat="server" BackColor="LightGray" BorderColor="Black" BorderStyle="Solid"
                                BorderWidth="1px" Direction="LeftToRight" ForeColor="Black" Height="230px" Visible="False"
                                Width="800px">
                                <table style="width: 797px">
                                    <tr>
                                        <td style="width: 85px; height: 20px">
                                        </td>
                                        <td style="width: 661px; height: 20px">
                                        </td>
                                        <td style="height: 20px">
                                <asp:Button ID="Button11" runat="server" OnClick="Button11_Click" Text="X" BackColor="Navy" Font-Bold="True" Font-Size="Medium" ForeColor="White" Height="23px" ToolTip="Close the panel." Width="25px" /></td>
                                    </tr>
                                </table>
                                <br />
                                <br />
                                <table style="width: 788px">
                                    <tr>
                                        <td style="width: 141px; height: 39px">
                                        </td>
                                        <td style="width: 121px; height: 39px">
                                <asp:Label ID="Label8" runat="server" Text="Course" Font-Bold="False" Font-Size="Large" ForeColor="Navy"></asp:Label></td>
                                        <td style="width: 100px; height: 39px">
                                <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource4"
                                    DataTextField="course" DataValueField="course" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged" Width="140px" Font-Bold="True" ForeColor="Maroon">
                                    <asp:ListItem>other</asp:ListItem>
                                </asp:DropDownList></td>
                                        <td style="width: 320px; height: 39px">
                                <asp:Button ID="Button9" runat="server" OnClick="Button9_Click" Text="If other specify" Font-Bold="True" ForeColor="#404040" />
                                <asp:TextBox ID="TextBox7" runat="server" Font-Bold="True" ForeColor="Maroon" Width="140px"></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 141px; height: 38px">
                                        </td>
                                        <td style="width: 121px; height: 38px">
                                <asp:Label ID="Label9" runat="server" Text="Sem" Font-Bold="False" Font-Size="Large" ForeColor="Navy"></asp:Label></td>
                                        <td style="width: 100px; height: 38px">
                                <asp:TextBox ID="TextBox6" runat="server" Width="140px" Font-Bold="True" ForeColor="Maroon" CausesValidation="True"></asp:TextBox></td>
                                        <td style="width: 320px; height: 38px">
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox6"
                                                ErrorMessage="Enter valid value." ValidationExpression="(\d)*" ForeColor="Maroon"></asp:RegularExpressionValidator></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 141px; height: 42px">
                                        </td>
                                        <td style="width: 121px; height: 42px">
                                <asp:Label ID="Label10" runat="server" Text="Branch:" Font-Bold="False" Font-Size="Large" ForeColor="Navy"></asp:Label></td>
                                        <td style="width: 100px; height: 42px">
                                <asp:DropDownList ID="DropDownList5" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource5"
                                    DataTextField="branch" DataValueField="branch" OnSelectedIndexChanged="DropDownList5_SelectedIndexChanged" Width="140px" Font-Bold="True" ForeColor="Maroon">
                                </asp:DropDownList></td>
                                        <td style="width: 320px; height: 42px">
                                            <asp:Button ID="Button10" runat="server" OnClick="Button10_Click" Text="If other specify" Font-Bold="True" ForeColor="#404040" />
                                <asp:TextBox ID="TextBox8" runat="server" Font-Bold="True" ForeColor="Maroon" Width="140px"></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 141px; height: 42px">
                                        </td>
                                        <td style="width: 121px; height: 42px">
                                <asp:Label ID="Label11" runat="server" Text="Class ID" Font-Bold="False" Font-Size="Large" ForeColor="Navy"></asp:Label></td>
                                        <td style="width: 100px; height: 42px">
                                <asp:TextBox ID="TextBox5" runat="server" Width="140px" Font-Bold="True" ForeColor="Maroon"></asp:TextBox></td>
                                        <td style="width: 320px; height: 42px">
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="Don't leave it blank."
                                                ForeColor="Maroon" ValidationExpression="\w+" ControlToValidate="TextBox5"></asp:RegularExpressionValidator></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 141px; height: 26px;">
                                        </td>
                                        <td style="width: 121px; height: 26px;">
                                        </td>
                                        <td style="width: 100px; height: 26px;">
                                            <asp:Button ID="Button7" runat="server" OnClick="Button7_Click" Text="Add Class" Font-Bold="True" ForeColor="#404040" Width="140px" /></td>
                                        <td style="width: 320px; height: 26px;">
                                            <asp:Label ID="Label29" runat="server" ForeColor="Maroon" Visible="False" Width="312px"></asp:Label></td>
                                    </tr>
                                </table>
                                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                                    SelectCommand="SELECT DISTINCT [course] FROM [class]"></asp:SqlDataSource>
                                <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                                    SelectCommand="SELECT DISTINCT [branch] FROM [class]"></asp:SqlDataSource>
                                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                            </asp:Panel>
                                    <asp:Panel ID="Panel1" runat="server" BackColor="LightGray" BorderColor="Black" Height="200px"
                                        Visible="False" Width="800px"><table style="width: 797px">
                                            <tr>
                                                <td style="width: 85px; height: 20px">
                                                </td>
                                                <td style="width: 661px; height: 20px">
                                                </td>
                                                <td style="height: 20px">
                                                    <asp:Button ID="Button20" runat="server" OnClick="Button20_Click" Text="X" BackColor="Navy" Font-Bold="True" Font-Size="Medium" ForeColor="White" Height="23px" ToolTip="Close the panel." Width="25px" /></td>
                                            </tr>
                                        </table>
                                        <table style="width: 780px">
                                            <tr>
                                                <td style="width: 94px; height: 58px">
                                                </td>
                                                <td style="width: 133px; height: 58px">
                                        <asp:Label ID="Label7" runat="server" Text="Teacher Name : " Font-Bold="False" Font-Size="Large" ForeColor="Navy"></asp:Label></td>
                                                <td style="width: 374px; height: 58px">
                                                    <asp:TextBox ID="TextBox4" runat="server" Font-Bold="True" ForeColor="Maroon" Width="140px"></asp:TextBox></td>
                                            </tr>
                                            <tr>
                                                <td style="width: 94px; height: 38px;">
                                                </td>
                                                <td style="width: 133px; height: 38px;">
                                        <asp:Label ID="Label13" runat="server" Text="Email id :" Font-Bold="False" Font-Size="Large" ForeColor="Navy"></asp:Label></td>
                                                <td style="width: 374px; height: 38px;">
                                        <asp:TextBox ID="TextBox10" runat="server" Font-Bold="True" ForeColor="Maroon" Width="140px"></asp:TextBox></td>
                                            </tr>
                                            <tr>
                                                <td style="width: 94px; height: 37px;">
                                                </td>
                                                <td style="width: 133px; height: 37px;">
                                        <asp:Label ID="Label16" runat="server" Text="Department: " Font-Bold="False" Font-Size="Large" ForeColor="Navy"></asp:Label></td>
                                                <td style="width: 374px; height: 37px;">
                                        <asp:DropDownList ID="DropDownList6" runat="server" DataSourceID="SqlDataSource7"
                                            DataTextField="dept" DataValueField="dept" Width="140px" Font-Bold="True" ForeColor="Maroon">
                                        </asp:DropDownList></td>
                                            </tr>
                                            <tr>
                                                <td style="width: 94px">
                                                </td>
                                                <td style="width: 133px">
                                                </td>
                                                <td style="width: 374px">
                                        <asp:Button ID="Button3" runat="server" Text="Add Teacher" OnClick="Button3_Click" Font-Bold="True" ForeColor="#404040" />
                                                    &nbsp; &nbsp;&nbsp;
                                                    <asp:Label ID="Label30" runat="server" ForeColor="Maroon" Visible="False" Width="289px"></asp:Label></td>
                                            </tr>
                                        </table>
                                        <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                                            SelectCommand="SELECT [dept] FROM [department]"></asp:SqlDataSource>
                                    </asp:Panel>
                        <br />
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                                SelectCommand="SELECT DISTINCT [tid], [subname], [subid] FROM [subject_allotment_new] WHERE ([classid] = @classid)">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="DropDownList4" Name="classid" PropertyName="SelectedValue"
                                        Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        <asp:Label ID="Label17" runat="server" Text="The teachers allotted to the selected class are :"
                            Visible="False" Font-Bold="True" ForeColor="Maroon"></asp:Label><br />
                        <br />
                            <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource2"
                                HorizontalAlign="Center" Visible="False" Width="447px" BackColor="LightGray" BorderColor="Maroon" Font-Bold="True" Font-Size="Medium" ForeColor="Navy">
                            </asp:GridView>
                        &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                                SelectCommand="SELECT DISTINCT [subname] FROM [subject] WHERE ([classid] = @classid)">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="DropDownList4" Name="classid" PropertyName="SelectedValue"
                                        Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<asp:Label ID="Label25" runat="server"
                            Font-Bold="True" Font-Italic="False" Font-Size="Large" Font-Underline="True"
                            ForeColor="Maroon" Text="Actions on 'Subject'"></asp:Label><br />
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp;&nbsp;<table>
                            <tr>
                                <td style="width: 306px; height: 31px;">
                            <asp:Label ID="Label1" runat="server" Text="Subjects of the selected class (above) : " Font-Bold="False" Font-Size="Large" ForeColor="Navy"></asp:Label></td>
                                <td style="width: 256px; height: 31px;">
                                    <asp:DropDownList ID="DropDownList1" runat="server"
                                DataSourceID="SqlDataSource3" DataTextField="subname" DataValueField="subname" Width="140px" Font-Bold="True" ForeColor="Maroon">
                            </asp:DropDownList></td>
                            </tr>
                                <tr>
                                    <td style="width: 306px; height: 26px">
                                    <asp:Label ID="Label23" runat="server" Text="Assign Teacher to Selected Subject:" Font-Bold="False" Font-Size="Large" ForeColor="Navy"></asp:Label></td>
                                    <td style="width: 256px; height: 26px">
                                    <asp:Button ID="Button17" runat="server" OnClick="Button17_Click" Text="Assign Teacher "
                                        Width="140px" Font-Bold="True" ForeColor="#404040" /></td>
                                </tr>
                            <tr>
                                <td style="width: 306px; height: 32px;">
                                    <asp:Label ID="Label21" runat="server" Text="Add New Subject:" Font-Bold="False" Font-Size="Large" ForeColor="Navy"></asp:Label></td>
                                <td style="width: 256px; height: 32px;">
                                    <asp:Button ID="Button15" runat="server" OnClick="Button15_Click" Text="Add New Subject"
                                        Width="140px" Font-Bold="True" ForeColor="#404040" /></td>
                            </tr>
                            <tr>
                                <td style="width: 306px; height: 31px;">
                                    <asp:Label ID="Label22" runat="server" Text="Delete Selected Subject:" Font-Bold="False" Font-Size="Large" ForeColor="Navy"></asp:Label></td>
                                <td style="width: 256px; height: 31px;">
                                    <asp:Button ID="Button18" runat="server" Text="Delete Subject" Width="140px" OnClick="Button18_Click" Font-Bold="True" ForeColor="#404040" /></td>
                            </tr>
                            <tr>
                                <td style="width: 306px; height: 34px;">
                        <asp:Label ID="Label24" runat="server" Text="Are you sure you want to delete the subject ?"
                            Visible="False" Font-Bold="True" Font-Size="Medium" ForeColor="Maroon"></asp:Label></td>
                                <td style="width: 256px; height: 34px;">
                                    <asp:Button ID="Button16" runat="server" OnClick="Button16_Click" Text="Yes"
                                        Width="48px" Visible="False" Font-Bold="True" ForeColor="#404040" />
                        &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="Button19" runat="server" Text="No" OnClick="Button19_Click" Visible="False" Width="47px" Font-Bold="True" ForeColor="#404040" /></td>
                            </tr>
                        </table>
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp;
                            &nbsp; &nbsp; &nbsp;&nbsp;<asp:MultiView ID="MultiView1"
                                runat="server" EnableTheming="False" EnableViewState="False">
                                <asp:View ID="View1" runat="server">
                                    <table style="width: 531px">
                                        <tr>
                                            <td style="width: 118px; height: 31px">
                                    <asp:Label ID="Label2" runat="server" Text="Subject Name : " Font-Bold="False" Font-Size="Large" ForeColor="Navy"></asp:Label></td>
                                            <td style="width: 374px; height: 31px">
                                    <asp:TextBox ID="TextBox1" runat="server" Font-Bold="True" ForeColor="Maroon" Width="140px"></asp:TextBox>
                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="TextBox1"
                                                    ErrorMessage="Enter valid name." ForeColor="Maroon" ValidationExpression="([\w .]+)"></asp:RegularExpressionValidator></td>
                                        </tr>
                                        <tr>
                                            <td style="width: 118px; height: 33px">
                                    <asp:Label ID="Label12" runat="server" Text="Subject ID:" Font-Bold="False" Font-Size="Large" ForeColor="Navy"></asp:Label></td>
                                            <td style="width: 374px; height: 33px">
                                                <asp:TextBox ID="TextBox9" runat="server" Font-Bold="True" ForeColor="Maroon" Width="140px"></asp:TextBox></td>
                                        </tr>
                                        <tr>
                                            <td style="width: 118px; height: 26px">
                                            </td>
                                            <td style="width: 374px; height: 26px">
                                                <asp:Button
                                        ID="Button5" runat="server" Text="Add Subject" OnClick="Button5_Click" Font-Bold="True" ForeColor="#404040" Width="140px" />
                                                <asp:Label ID="Label27" runat="server" Font-Bold="False" Font-Size="Large" ForeColor="Maroon"
                                                    Text="Subject Already Exists" Visible="False"></asp:Label></td>
                                        </tr>
                                    </table>
                                    &nbsp; &nbsp;<br />
                                </asp:View>
                                
                                <asp:View ID="View2" runat="server">
                                    &nbsp; 
                                    <table style="width: 531px">
                                        <tr>
                                            <td style="width: 112px">
                                    <asp:Label ID="Label3" runat="server" Text="Subject Name : " Font-Bold="False" Font-Size="Large" ForeColor="Navy"></asp:Label></td>
                                            <td style="width: 374px">
                                    <asp:TextBox ID="TextBox2" runat="server" Font-Bold="True" ForeColor="Maroon" Width="140px"></asp:TextBox></td>
                                        </tr>
                                        <tr>
                                            <td style="width: 112px">
                                            </td>
                                            <td style="width: 374px">
                                                <asp:Button
                                        ID="Button6" runat="server" Text="Edit Subject" Font-Bold="True" ForeColor="#404040" Width="141px" /></td>
                                        </tr>
                                    </table>
                                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</asp:View>
                                &nbsp;
                                <asp:View ID="View3" runat="server">
                                    &nbsp;<table style="width: 531px">
                                        <tr>
                                            <td style="width: 110px; height: 31px">
                                                <asp:Label ID="Label26" runat="server" Font-Bold="False" Font-Size="Large" ForeColor="Navy"
                                                    Text="Department: "></asp:Label></td>
                                            <td style="width: 374px; height: 31px">
                                                <asp:DropDownList ID="DropDownList7"
                                        runat="server" DataSourceID="SqlDataSource7" DataTextField="dept" DataValueField="dept" Font-Bold="True" ForeColor="Maroon" Width="140px" AutoPostBack="True">
                                                </asp:DropDownList></td>
                                        </tr>
                                        <tr>
                                            <td style="width: 110px; height: 31px">
                                    <asp:Label ID="Label4" runat="server" Text="Teacher : " Font-Bold="False" Font-Size="Large" ForeColor="Navy"></asp:Label></td>
                                            <td style="width: 374px; height: 31px">
                                                <asp:DropDownList ID="DropDownList2"
                                        runat="server" DataSourceID="SqlDataSource6" DataTextField="tid" DataValueField="tid" Font-Bold="True" ForeColor="Maroon" Width="140px">
                                    </asp:DropDownList></td>
                                        </tr>
                                        <tr>
                                            <td style="width: 110px; height: 20px;">
                                            </td>
                                            <td style="width: 374px; height: 20px;">
                                                <asp:Button ID="Button1"
                                        runat="server" Text="Assign" OnClick="Button1_Click1" Font-Bold="True" ForeColor="#404040" Width="140px" />
                                                <asp:Label ID="Label28" runat="server" Font-Bold="False" Font-Size="Large" ForeColor="Maroon"
                                                    Text="Entry Already Exists" Visible="False"></asp:Label></td>
                                        </tr>
                                    </table>
                                    <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                                        SelectCommand="SELECT DISTINCT [tid] FROM [tid_dept] WHERE ([dept] = @dept)">
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="DropDownList7" Name="dept" PropertyName="SelectedValue"
                                                Type="String" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                </asp:View>
                                &nbsp;
                                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                &nbsp; &nbsp; &nbsp; &nbsp;
                             
                            </asp:MultiView>
                            &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp;
                        &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<br />
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp;
                        <asp:Label ID="Label31" runat="server" Font-Bold="True" Font-Italic="False" Font-Size="Large"
                            Font-Underline="True" ForeColor="Maroon" Text="Actions on 'Department'"></asp:Label><br />
                        <br />
                                                        <table>
                                    <tr>
                                        <td style="width: 284px; height: 31px">
                                            <asp:Label id="Label33" runat="server" Font-Bold="False" Font-Size="Large" ForeColor="Navy"
                                                Text="Show All HODs:"></asp:Label></td>
                                        <td style="width: 224px; height: 31px">
                                            <asp:Button id="Button21" runat="server" Text="Show All HODs" OnClick="Button21_Click" Width="141px" /></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 284px; height: 32px">
                                            <asp:Label id="Label34" runat="server" Font-Bold="False" Font-Size="Large" ForeColor="Navy"
                                                Text="Assign HOD:"></asp:Label></td>
                                        <td style="width: 224px; height: 32px">
                                            <asp:Button id="Button22" runat="server" OnClick="Button22_Click" Text="Assign HOD"
                                                Width="142px" /></td>
                                    </tr>
                                </table>
                                <br />
                                <asp:Panel id="Panel3" runat="server" Height="200px" Width="800px" Visible="False" BackColor="LightGray"><table style="width: 797px">
                                    <tr>
                                        <td style="width: 85px; height: 20px">
                                        </td>
                                        <td style="width: 661px; height: 20px">
                                        </td>
                                        <td style="height: 20px">
                                            <asp:Button ID="Button24" runat="server" OnClick="Button24_Click" Text="X" BackColor="Navy" Font-Bold="True" Font-Size="Medium" ForeColor="White" Height="23px" ToolTip="Close the panel." Width="25px" /></td>
                                    </tr>
                                </table>
                                    <table style="width: 731px">
                                        <tr>
                                            <td style="width: 150px; height: 31px">
                                                <asp:Label id="Label32" runat="server" Font-Bold="False" Font-Size="Large" ForeColor="Navy"
                                                    Text="Select Department:"></asp:Label></td>
                                            <td style="width: 224px; height: 31px">
                                                <asp:DropDownList ID="DropDownList8" runat="server" DataSourceID="SqlDataSource8"
                            OnSelectedIndexChanged="DropDownList4_SelectedIndexChanged" AutoPostBack="True" DataTextField="dept" DataValueField="dept" Font-Bold="True" ForeColor="Maroon" Width="151px">
                                                </asp:DropDownList>&nbsp;
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 150px; height: 32px">
                                                <asp:Label id="Label35" runat="server" Font-Bold="False" Font-Size="Large" ForeColor="Navy"
                                                    Text="HOD Name:"></asp:Label></td>
                                            <td style="width: 224px; height: 32px">
                                                <asp:TextBox id="TextBox3" runat="server" Width="141px"></asp:TextBox>
                                                <asp:RegularExpressionValidator id="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox3"
                                                    ErrorMessage="Enter valid name." ForeColor="Maroon" ValidationExpression="([\w .]+)"></asp:RegularExpressionValidator></td>
                                        </tr>
                                        <tr>
                                            <td style="width: 150px; height: 32px;">
                                                <asp:Label id="Label36" runat="server" Font-Bold="False" Font-Size="Large" ForeColor="Navy"
                                                    Text="E-mail ID:"></asp:Label></td>
                                            <td style="width: 224px; height: 32px;">
                                                <asp:TextBox id="TextBox11" runat="server" Width="141px"></asp:TextBox>
                                                <asp:RegularExpressionValidator id="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox11"
                                                    ErrorMessage="Enter valid E-mail ID." ForeColor="Maroon" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">
                                                </asp:RegularExpressionValidator></td>
                                        </tr>
                                        <tr>
                                            <td style="width: 150px; height: 27px">
                                            </td>
                                            <td style="width: 224px; height: 27px">
                                                <asp:Button id="Button23" runat="server" Text="Assign" Width="93px" OnClick="Button23_Click" /></td>
                                        </tr>
                                    </table>
                                </asp:Panel>
                        
                        <br />
                        <br /><asp:GridView ID="GridView2" runat="server" DataSourceID="SqlDataSource9"
                                HorizontalAlign="Center" Visible="False" Width="447px" BackColor="LightGray" BorderColor="Maroon" Font-Bold="True" Font-Size="Medium" ForeColor="Navy" AutoGenerateColumns="False">
                            <Columns>
                                <asp:BoundField DataField="dept" HeaderText="dept" SortExpression="dept" />
                                <asp:BoundField DataField="hod" HeaderText="hod" SortExpression="hod" />
                                <asp:BoundField DataField="hodmailid" HeaderText="hodmailid" SortExpression="hodmailid" />
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource9" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                            SelectCommand="SELECT * FROM [department]"></asp:SqlDataSource>
                        <asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                            SelectCommand="SELECT [dept] FROM [department]"></asp:SqlDataSource>
                        <br />
                    </td>
                </tr>
            </table>
        </asp:Panel>
    
    </div>
    </form>
</body>
</html>
