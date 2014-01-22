<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin2.aspx.cs" Inherits="admin2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Panel ID="Panel1" runat="server" Height="609px" Style="background-image: url(web2.bmp)"
            Width="920px">
            <table style="width: 919px; height: 573px">
                <tr>
                    <td style="width: 141px; height: 69px">
                    </td>
                    <td style="height: 69px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 141px; height: 98px">
                    </td>
                    <td style="height: 98px">
                        &nbsp;<br />
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                            SelectCommand="SELECT DISTINCT [classid] FROM [form]"></asp:SqlDataSource>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                            SelectCommand="SELECT DISTINCT [subname] FROM [subject] WHERE ([classid] = @classid)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="DropDownList1" Name="classid" PropertyName="SelectedValue"
                                    Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                            SelectCommand="SELECT DISTINCT [tid] FROM [subject_allotment_new] WHERE (([classid] = @classid) AND ([subname] = @subname))">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="DropDownList1" Name="classid" PropertyName="SelectedValue"
                                    Type="String" />
                                <asp:ControlParameter ControlID="DropDownList2" Name="subname" PropertyName="SelectedValue"
                                    Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <table>
                            <tr>
                                <td style="width: 123px">
                                    <asp:Label ID="Label1" runat="server" Text="Class ID :" Visible="False"></asp:Label></td>
                                <td style="width: 131px">
                                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1"
                                        DataTextField="classid" DataValueField="classid" AutoPostBack="True" Visible="False">
                                    </asp:DropDownList></td>
                                <td style="width: 151px">
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 123px">
                                    <asp:Label ID="Label2" runat="server" Text="Subject: " Visible="False"></asp:Label></td>
                                <td style="width: 131px">
                                    <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2"
                                        DataTextField="subname" DataValueField="subname" AutoPostBack="True" Visible="False">
                                    </asp:DropDownList></td>
                                <td style="width: 151px">
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 123px">
                                    <asp:Label ID="Label3" runat="server" Text="Teacher: " Visible="False"></asp:Label></td>
                                <td style="width: 131px">
                                    <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource3"
                                        DataTextField="tid" DataValueField="tid" AutoPostBack="True" Visible="False">
                                    </asp:DropDownList></td>
                                <td style="width: 151px">
                                </td>
                            </tr>
                        </table>
                        <br />
                        <br />
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Send Feedback to all teachers" /><br />
                        <br />
                        <br />
                        <table>
                            <tr>
                                <td style="width: 123px">
                                    <asp:Label ID="Label4" runat="server" Text="Department :" Visible="False"></asp:Label></td>
                                <td style="width: 131px">
                                    <asp:DropDownList ID="DropDownList4" runat="server" DataSourceID="SqlDataSource4"
                                        DataTextField="dept" DataValueField="dept" AutoPostBack="True" Visible="False">
                                    </asp:DropDownList></td>
                                <td style="width: 151px">
                                </td>
                            </tr>
                        </table>
                        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                            SelectCommand="SELECT [dept] FROM [department]"></asp:SqlDataSource>
                        <br /><asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Send Feedback to all HODs" Width="261px" /><br />
                        <br />
                    </td>
                </tr>
            </table>
        </asp:Panel>
    
    </div>
    </form>
</body>
</html>
