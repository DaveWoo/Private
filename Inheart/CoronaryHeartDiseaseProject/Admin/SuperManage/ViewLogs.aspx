﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ViewLogs.aspx.cs" Inherits="CoronaryHeartDiseaseProject.Admin.SuperManage.ViewLogs" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" href="../../Styles/admin.css" />
    <link rel="stylesheet" href="../../Styles/main.css" />
    <link rel="stylesheet" href="/Content/bootstrap.min.css" />
    <script type="text/javascript" src="/Scripts/bootstrap.min.js"></script>
    <script type="text/javascript" src="/Scripts/jquery-1.9.1.min.js"></script>
    <script type="text/javascript" src="/Scripts/check.js"></script>
    <title>修改资料</title>
</head>
<body>
    <form id="myform" name="listform" runat="server" onsubmit="return confirm('确认要执行此操作？');">
        <asp:Label ID="Label1" runat="server"></asp:Label>&nbsp;
        <asp:DataList ID="DataListUserLog" runat="server" Width="100%">
            <HeaderTemplate>
                <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" class="tableborder">
                    <tr class="header">
                        <td width="10%" class="tableTDCell">医院</td>
                        <td width="10%" class="tableTDCell">用户ID</td>
                        <td width="10%" class="tableTDCell">登录时间</td>
                    </tr>
                </table>
            </HeaderTemplate>
            <ItemTemplate>
                <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" class="tableborder">
                    <tr bgcolor="#ffffff" id="news<%#Eval("LogID") %>">
                        <td class="tableTDCell" width="10%">
                            <%#ShowHospitalName(Eval("HospitalID").ToString())%>
                        </td>
                        <td class="tableTDCell" width="10%">
                            <%#ShowUserName(Eval("UserID").ToString())%>
                        </td>
                        <td class="tableTDCell" width="10%">
                            <%#Eval("LoginDate")%>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
        <table width="100%" border="0" align="center" cellpadding="3" cellspacing="1" class="tableborder">
            <tr bgcolor="#ffffff">
                <td colspan="4">
                    <div align="left">
                        <input id="btnClear" name="Submit822" type="button" value="清空所有登陆记录" runat="server"
                            align="left" class="btn btn-info" onserverclick="Clear_Click" />
                    </div>
                </td>
            </tr>
        </table>
    </form>
    <%#Eval("OrderID")%>
</body>
</html>
