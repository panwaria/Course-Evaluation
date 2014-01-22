<%@ Page Language="C#" AutoEventWireup="true" CodeFile="userlogin1.aspx.cs" Inherits="userlogin1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Student Login</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Panel ID="Panel1" runat="server" Height="609px" Style="background-image: url(web2.bmp)"
            Width="920px">
            <table style="width: 919px; height: 573px">
                <tr>
                    <td style="width: 117px; height: 98px">
                    </td>
                    <td style="height: 98px">
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp;
                        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="XX-Large"
                            ForeColor="White" Text="MNNIT - Online Feedback Forms"></asp:Label></td>
                </tr>
                <tr>
                    <td style="width: 117px; height: 98px">
                        &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp; &nbsp;
                        <br />
                        <table style="width: 143px">
                            <tr>
                                <td style="width: 96px; height: 33px">
                                    &nbsp; &nbsp;&nbsp;
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/userlogin1.aspx" Font-Size="Large" ForeColor="Navy">Home</asp:HyperLink></td>
                            </tr>
                            <tr>
                                <td style="width: 96px">
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 96px">
                                    <asp:HyperLink ID="HyperLink2" runat="server" Font-Bold="True" Font-Size="Medium"
                                        Font-Underline="True" ForeColor="Navy" NavigateUrl="http://www.mnnit.ac.in" Width="141px">MNNIT's webpage</asp:HyperLink></td>
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
                    </td>
                    <td style="height: 98px">
                        &nbsp;<br />
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;<br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp;
                        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" Font-Underline="True"
                            ForeColor="#804000" Text="Student Login - Feedback Form"></asp:Label><br />
                        <br />
                        <table style="width: 481px">
                            <tr>
                                <td style="width: 128px; height: 24px">
                                </td>
                                <td style="width: 128px; height: 24px">
                                    <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Names=" Absinth Flourishes I"
                                        ForeColor="Navy" Text="Course:"></asp:Label></td>
                                <td style="width: 213px; height: 24px">
                                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1"
                                        DataTextField="course" DataValueField="course" ForeColor="#804000">
                                    </asp:DropDownList></td>
                            </tr>
                            <tr>
                                <td style="width: 128px">
                                </td>
                                <td style="width: 128px">
                                    <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Names=" Absinth Flourishes I"
                                        ForeColor="Navy" Text="Semester:"></asp:Label></td>
                                <td style="width: 213px">
                                    <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2"
                                        DataTextField="sem" DataValueField="sem" ForeColor="#804000">
                                        <asp:ListItem>1</asp:ListItem>
                                        <asp:ListItem>2</asp:ListItem>
                                        <asp:ListItem>3</asp:ListItem>
                                        <asp:ListItem>4</asp:ListItem>
                                        <asp:ListItem>5</asp:ListItem>
                                        <asp:ListItem>6</asp:ListItem>
                                        <asp:ListItem>7</asp:ListItem>
                                        <asp:ListItem>8</asp:ListItem>
                                    </asp:DropDownList></td>
                            </tr>
                            <tr>
                                <td style="width: 128px; height: 10px">
                                </td>
                                <td style="width: 128px; height: 10px">
                                    <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Names=" Absinth Flourishes I"
                                        ForeColor="Navy" Text="Branch:"></asp:Label></td>
                                <td style="width: 213px; height: 10px">
                                    <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource3"
                                        DataTextField="branch" DataValueField="branch" ForeColor="#804000">
                                    </asp:DropDownList></td>
                            </tr>
                            <tr>
                                <td style="width: 128px; height: 54px">
                                </td>
                                <td style="width: 128px; height: 54px">
                                </td>
                                <td style="width: 213px; height: 54px">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" /></td>
                            </tr>
                        </table>
                        <br />
                        &nbsp;&nbsp;
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                            SelectCommand="SELECT DISTINCT [sem] FROM [class] WHERE ([course] = @course)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="DropDownList1" Name="course" PropertyName="SelectedValue"
                                    Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                            SelectCommand="SELECT DISTINCT [branch] FROM [class] WHERE (([course] = @course) AND ([sem] = @sem))">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="DropDownList1" Name="course" PropertyName="SelectedValue"
                                    Type="String" />
                                <asp:ControlParameter ControlID="DropDownList2" Name="sem" PropertyName="SelectedValue"
                                    Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                            SelectCommand="SELECT DISTINCT [course] FROM [class]"></asp:SqlDataSource>
                        &nbsp;&nbsp;&nbsp;<br />
                        &nbsp; 
                        <asp:Label ID="Label3" runat="server" Font-Bold="True" ForeColor="#804000" Text="INSTRUCTIONS:"
                            Width="264px"></asp:Label>&nbsp; &nbsp; &nbsp;&nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<br />
                        <br />
                        &nbsp;
                        <asp:Label ID="Label7" runat="server" ForeColor="Black" Text="1. Login by Entering your course, semester and branch."
                            Width="406px"></asp:Label><br />
                        <br />
                        &nbsp;
                        <asp:Label ID="Label8" runat="server" ForeColor="Black" Text="2. Then follow the instructions given on next page."
                            Width="401px"></asp:Label>&nbsp;<br />
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />
                        <br />
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                    </td>
                </tr>
            </table>
        </asp:Panel>
    
    </div>
    </form>
</body>
</html>
