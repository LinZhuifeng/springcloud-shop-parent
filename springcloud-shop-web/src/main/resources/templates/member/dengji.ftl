
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html;charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<title>会员等级列表 - Powered By SHOP++</title>
<meta name="author" content="SHOP++ Team" />
<meta name="copyright" content="SHOP++" />
<link href="/css/common.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="/js/jquery.js"></script>
<script type="text/javascript" src="/js/common.js"></script>
<script type="text/javascript" src="/js/list.js"></script>
<script type="text/javascript">
$().ready(function() {


});
</script>
</head>
<body>
	<div class="breadcrumb">
		会员等级列表 <span>(共4条记录)</span>
	</div>
	<form id="listForm" action="list" method="get">
		<div class="bar">
			<a href="addMemberRank" class="iconButton">
				<span class="addIcon">&nbsp;</span>添加
			</a>
			<div class="buttonGroup">
				<a href="javascript:deleteMemberRank()" id="deleteButton" class="iconButton">
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
					<li val="name">名称</li>
				</ul>
			</div>
		</div>
		<table id="listTable" class="list">
			<tr>
				<th class="check">
					<input type="checkbox" id="selectAll" />
				</th>
				<th>
					<a href="javascript:;" class="sort" name="name">名称</a>
				</th>
				<th>
					<a href="javascript:;" class="sort" name="scale">优惠比例</a>
				</th>
				<th>
					<a href="javascript:;" class="sort" name="amount">消费金额</a>
				</th>
				<th>
					<a href="javascript:;" class="sort" name="isDefault">是否默认</a>
				</th>
				<th>
					<span>操作</span>
				</th>
			</tr>
			<#list memberRankList as rank>
				<tr>
					<td>
						<input type="checkbox" name="quanxuan" value="${rank.id}" />
					</td>
					<td>
						${rank.name}
					</td>
					<td>
						${rank.scale}
					</td>
					<td>
						${rank.amount}
					</td>
					<td>
						<#if rank.isdefault>
							是
							<#else>
							否
						</#if>
					</td>
					<td>
						<a href="editIdByRank?id=${rank.id}">[编辑]</a>
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

	function deleteMemberRank(){
		var temp = "";
		$("[name='quanxuan']:checked").each(function () {
			temp += "," + $(this).val();
		})
		var ids = temp.substr(1);
		$.ajax({
			url: 'member/deleteMemberRank',
			type: 'post',
			data: {'ids': ids},
			dataType: 'json',
			success: function (result) {
				if (result.success) {
					alert(result.message);
					location.href = 'dengji';
				} else {
					alert(result.message);
				}
			}
		})
	}

</script>
</html>