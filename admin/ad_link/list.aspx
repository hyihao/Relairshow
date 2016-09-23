<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="list.aspx.cs" Inherits="DTcms.Web.admin.ad_link.list" %>
<%@ Import namespace="DTcms.Common" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>广告管理</title>

<link type="text/css" rel="stylesheet" href="../images/style.css" />
<link type="text/css" rel="stylesheet" href="../../css/pagination.css" />
<script src="../../scripts/jquery/jquery-1.11.0.min.js" type="text/javascript"></script>
<script src="../js/jquery-ui.min.js" type="text/javascript"></script>
<link href="../js/jquery-ui.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="../../scripts/ui/js/ligerBuild.min.js"></script>
<script type="text/javascript" src="../js/function.js"></script>
</head>
<body class="mainbody">
<form id="form2" runat="server">
    <div class="navigation">首页 &gt; 广告管理 &gt; 广告列表</div>
    <div class="tools_box">
	    <div class="tools_bar">
            <div class="search_box">
           		    </div>
            <a href="edit.aspx?action=<%=DTEnums.ActionEnum.Add %>&channel_id=<%=this.channel_id %>" class="tools_btn"><span><b class="add">添加广告</b></span></a>
            <asp:LinkButton ID="btnSave" runat="server" CssClass="tools_btn" onclick="btnSave_Click"><span><b class="send">保存排序</b></span></asp:LinkButton>
		    <a href="javascript:void(0);" onclick="checkAll(this);" class="tools_btn"><span><b class="all">全选</b></span></a>
            <asp:LinkButton ID="btnDelete" runat="server" CssClass="tools_btn"  
                OnClientClick="return ExePostBack('btnDelete');" onclick="btnDelete_Click"><span><b class="delete">批量删除</b></span></asp:LinkButton>
        </div>
        <div class="select_box">
        
	    </div>
    </div>

    <!--列表展示.开始-->
    <asp:Repeater ID="rptList1" runat="server" onitemcommand="rptList_ItemCommand">
    <HeaderTemplate>
    <table width="100%" border="0" cellspacing="0" cellpadding="0" class="msgtable">
      <tr>
        <th width="6%">选择</th>
        <th width="12%" align="left">广告标题</th>
        <th width="12%" align="left">广告图</th>
        <th width="20%" align="left">广告链接</th>
         <th width="10%" align="left">发布时间</th> 
        <th width="10%" align="left">位置</th> 
        <th width="8%" align="left">排序</th>
        <th width="60"align="center" >属性</th>
        <th width="8%" align="center">操作</th>
      </tr>
    </HeaderTemplate>
    <ItemTemplate>
      <tr>
        <td align="center"><asp:CheckBox ID="chkId" CssClass="checkall" runat="server" /><asp:HiddenField ID="hidId" Value='<%#Eval("adid")%>' runat="server" /></td>
        <td><a href="edit.aspx?channel_id=<%#this.channel_id %>&action=<%#DTEnums.ActionEnum.Edit %>&id=<%#Eval("adid")%>"><%#Eval("adName")%></a></td>
        <td><%#"<img src=\"" + Eval("img_url") + "\" width=\"50\" height=\"20\" />"%></td>
        <td><%#Eval("site_url")%></td>
        <td><%#string.Format("{0:d}", Eval("add_time"))%></td>
        <td><%#  DTcms.Common.AdLink.GetType(Convert.ToInt32(Eval("adtype")))%></td>
        <td >
        <asp:TextBox ID="txtSortId" runat="server" Text='<%#Eval("sort_id")%>' CssClass="txtInput2 small2" onkeypress="return (/[\d]/.test(String.fromCharCode(event.keyCode)));" />
        </td>
        <td align="center">
           <asp:ImageButton ID="ibtnHot" CommandName="ibtnHot" runat="server" ImageUrl='<%# Convert.ToInt32(Eval("is_look").ToString()) ==  1 ? "../images/ico-3.png" : "../images/ico-3_.png"%>' ToolTip='<%#Convert.ToInt32( Eval("is_look").ToString()) ==  1 ? "已审核" : "未审核"%>' />

        </td>
        <td align="center"><a href="edit.aspx?channel_id=<%#this.channel_id %>&action=<%#DTEnums.ActionEnum.Edit %>&id=<%#Eval("adid")%>">修改</a></td>
      </tr>
    </ItemTemplate>
    <FooterTemplate>
      <%#rptList1.Items.Count == 0 ? "<tr><td align=\"center\" colspan=\"8\">暂无记录</td></tr>" : ""%>
      </table>
    </FooterTemplate>
    </asp:Repeater>
    <!--列表展示.结束-->    
    <div class="line15"></div>
    <div class="page_box">
      <div id="PageContent" runat="server" class="flickr right"></div>
      <div class="left">
         显示<asp:TextBox ID="txtPageNum" runat="server" CssClass="txtInput2 small2" onkeypress="return (/[\d]/.test(String.fromCharCode(event.keyCode)));" 
             ontextchanged="txtPageNum_TextChanged" AutoPostBack="True"></asp:TextBox>条/页
      </div>
    </div>
    <div class="line10"></div>
</form>
</body>
</html>
