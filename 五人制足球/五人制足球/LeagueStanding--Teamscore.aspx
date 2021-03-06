﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LeagueStanding--Teamscore.aspx.cs" Inherits="五人制足球.LeagueStanding__Teamscore" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>五人制足球---每轮积分</title>
    <link href="css/all.css" rel="stylesheet" />
    <link href="css/MainPage.css" rel="stylesheet" />
    <script src="js/jquery.min.js"></script>
    <script src="js/main.js"></script>
    <link href="css/zzsc.css" rel="stylesheet" />
    <link href="css/ScheduleArrange.css" rel="stylesheet" />
    <script src="js/jquery-2.0.0.min.js"></script>
	<script>
	    $(document).ready(function () {
	        $('ul.form li a').click(
                function (e) {
                    //e.preventDefault(); // prevent the default action
                    //e.stopPropagation; // stop the click from bubbling
                    $(this).closest('ul').find('.selected').removeClass('selected');
                    $(this).parent().addClass('selected');
                });});
	</script>
    <link href="css/zxcd.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <%-- 导航栏的picture --%>
        <div class="title" style="margin-top:5px;">
            <div style="border: 1px solid #aaa; border-radius: 5px; text-align: center; line-height: 80px; font-size: 24px;font-family:楷体">五人制足球管理系统</div>
        </div>
        <%-- 导航栏，title部分 --%>
   <div class="titlename">
	<ul class="nav">
		<li class="first">
			<a href="MainPage.aspx">首页</a>
		</li>
		<li class="bg"></li>
		<li>
			<a href="ScheduleArrange.aspx">赛事安排</a>
		</li>
		<li class="bg"></li>
		<li>
			<a href="LeagueStanding.aspx">球队得分</a>
		</li>
		<li class="bg"></li>
		<li>
			<a href="TopScorer.aspx">射手榜</a>
		</li>
		<li class="bg"></li>
		<li>
			<a href="redyellowshow.aspx">红黄牌处罚</a>
		</li>
		<li class="bg"></li>
		<li>
			<a href="Login.aspx">管理员入口</a>
		</li>
		<li class="bg"></li>
	</ul>
</div>
        <div class="content">
            <%-- 左边部分 --%>
            <div class="leftcontent">
                <div class="zxcd">
                <ul class="form" >
                    <li><a class="profile" href="LeagueStanding--Teamscore.aspx">排名积分</a></li>
                    <li class="selected"><a class="messages" href="LeagueStanding---Team.aspx">球队得分</a></li>
                </ul>
                    </div>
            </div>
            <div class="rightcontent">
                <div class="compitioncontent">
                    <div class="pagetitle" style="width:580px;margin-left:20px;height:40px;border-bottom:1px solid #036;font-family:楷体;line-height:40px;">
                        <i>
                        球队排名积分</i>
                    </div>
                <table class="tb1">
                    <tr><td>请选择轮次：</td>
                        <td>
                            <asp:DropDownList ID="DropDownList1" CssClass="DDL1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="true" Font-Size="Medium"></asp:DropDownList>
                            </td>
                        </tr>
                    </table>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">            
                        <Columns>               
                            <asp:BoundField DataField="Turn" HeaderText="轮次" />
                            <asp:BoundField DataField="Teamname" HeaderText="球队名" />
                            <asp:BoundField DataField="FieldOrder" HeaderText="总场序" />
                            <asp:BoundField DataField="TeamScore" HeaderText="球队得分" />
                            <asp:BoundField DataField="Teamlose" HeaderText="球队失分" />
                            <asp:BoundField DataField="goaldifference" HeaderText="球队净胜数" />
                            <asp:BoundField DataField="score" HeaderText="球队积分" />
                        </Columns>
                    </asp:GridView>
                    </div>
            </div>
            </div>
        <div style="height:15px; overflow:hidden; clear:both;"></div>
        <div class="footer">三峡大学信息管理与信息系统专业</div>
    </form>
</body>
</html>
