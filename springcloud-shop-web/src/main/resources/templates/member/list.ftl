
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html;charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<title>会员列表 - Powered By SHOP++</title>
<meta name="author" content="SHOP++ Team" />
<meta name="copyright" content="SHOP++" />
<link href="/css/common.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="/js/jquery.js"></script>
<script type="text/javascript" src="/js/common.js"></script>
<script type="text/javascript" src="/js/lists.js"></script>
<script type="text/javascript">
$().ready(function() {


});
</script>
</head>
<body>
	<div class="breadcrumb">
		<a href="main">首页</a> &raquo; 会员列表 <span>(共3条记录)</span>
	</div>
	<form id="listForm" action="list" method="get">
		<div class="bar">
			<a href="addMember" class="iconButton">
				<span class="addIcon">&nbsp;</span>添加
			</a>
			<a href="javascript:exportMember()" class="iconButton">
				<span class="addIcon">&nbsp;</span>导出
			</a>
			<div class="buttonGroup">
				<a href="javascript:deleteMember()" class="iconButton">
					<span class="deleteIcon">&nbsp;</span>删除
				</a>
				<a href="javascript:;" id="refreshButton" class="iconButton">
					<span class="refreshIcon">&nbsp;</span>刷新
				</a>
				<div id="pageSizeMenu" class="dropdownMenu">
					<a href="javascript:;" class="button">
						每页显示<span class="arrow">&nbsp;</span>
					</a>
					<ul>
						<li val="10">10</li>
						<li class="current" val="20">20</li>
						<li val="50">50</li>
						<li val="100">100</li>
					</ul>
				</div>
			</div>
			<div id="searchPropertyMenu" class="dropdownMenu">
				<div class="search">
					<span class="arrow">&nbsp;</span>
					<input type="text" id="searchValue" name="searchValue" value="" maxlength="200" />
					<button type="submit">&nbsp;</button>
				</div>
				<ul>
					<li val="username">用户名</li>
					<li val="email">E-mail</li>
				</ul>
			</div>
		</div>
		<table id="listTable" class="list">
			<tr>
				<th class="check">
					<input type="checkbox" id="selectAll" />
				</th>
				<th>
					<a href="javascript:;" class="sort" name="username">用户名</a>
				</th>
				<th>
					<a href="javascript:;" class="sort" name="memberRank">会员等级</a>
				</th>
				<th>
					<a href="javascript:;" class="sort" name="email">E-mail</a>
				</th>
				<th>
					<a href="javascript:;" class="sort" name="createdDate">创建日期</a>
				</th>
				<th>
					<span>状态</span>
				</th>
				<th>
					<span>操作</span>
				</th>
			</tr>
			<#list memberList as member>
				<tr>
					<td>
						<input type="checkbox" name="quanxuan" value="${member.id}" />
					</td>
					<td>
						${member.username}
					</td>
					<td>
						${member.memberrankId}
					</td>
					<td>
						${member.email}
					</td>
					<td>
						${member.birth?string('yyyy-MM-dd HH:mm:ss')}
					</td>
					<td>
							<span class="green">
								<#if member.gender==1>
									正常
									<#else>
									不正常
								</#if>
							</span>
					</td>
					<td>
						<a href="view?id=53">[查看]</a>
						<a href="javascript:editMember(${member.id})">[编辑]</a>
					</td>
				</tr>
			</#list>
		</table>
<input type="hidden" id="pageSize" name="pageSize" value="20" />
<input type="hidden" id="searchProperty" name="searchProperty" value="" />
<input type="hidden" id="orderProperty" name="orderProperty" value="" />
<input type="hidden" id="orderDirection" name="orderDirection" value="" />
</form>
</body>
<script type="text/javascript">
	function deleteMember(){
		var temp = "";
		$("[name='quanxuan']:checked").each(function () {
			temp += "," + $(this).val();
		})
		var ids = temp.substr(1);
		$.ajax({
			url: 'member/deleteMember',
			type: 'post',
			data: {'ids': ids},
			dataType: 'json',
			success: function (result) {
				if (result.success) {
					alert(result.message);
					location.href = 'list';
				} else {
					alert(result.message);
				}
			}
		})
	}

	//修改
	function editMember(id){
		location.href = "findById?id="+id;
	}

	function exportMember(){
		location.href = "member/exportMemberRank";
	}

</script>
</html>