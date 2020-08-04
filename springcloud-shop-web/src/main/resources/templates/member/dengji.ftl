
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html;charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<title>会员等级列表 - Powered By SHOP++</title>
<meta name="author" content="SHOP++ Team" />
<meta name="copyright" content="SHOP++" />
<link href="/shopxxb2b2c/resources/admin/css/common.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="/shopxxb2b2c/resources/admin/js/jquery.js"></script>
<script type="text/javascript" src="/shopxxb2b2c/resources/admin/js/common.js"></script>
<script type="text/javascript" src="/shopxxb2b2c/resources/admin/js/list.js"></script>
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
			<a href="add" class="iconButton">
				<span class="addIcon">&nbsp;</span>添加
			</a>
			<div class="buttonGroup">
				<a href="javascript:;" id="deleteButton" class="iconButton disabled">
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
				<tr>
					<td>
						<input type="checkbox" name="ids" value="4" />
					</td>
					<td>
						金牌会员
					</td>
					<td>
						1
					</td>
					<td>
						100000
					</td>
					<td>
						否
					</td>
					<td>
						<a href="edit?id=4">[编辑]</a>
					</td>
				</tr>
				<tr>
					<td>
						<input type="checkbox" name="ids" value="3" />
					</td>
					<td>
						银牌会员
					</td>
					<td>
						1
					</td>
					<td>
						10000
					</td>
					<td>
						否
					</td>
					<td>
						<a href="edit?id=3">[编辑]</a>
					</td>
				</tr>
				<tr>
					<td>
						<input type="checkbox" name="ids" value="2" />
					</td>
					<td>
						铜牌会员
					</td>
					<td>
						1
					</td>
					<td>
						1000
					</td>
					<td>
						否
					</td>
					<td>
						<a href="edit?id=2">[编辑]</a>
					</td>
				</tr>
				<tr>
					<td>
						<input type="checkbox" name="ids" title="默认会员等级不允许删除" disabled="disabled" />
					</td>
					<td>
						普通会员
					</td>
					<td>
						1
					</td>
					<td>
						0
					</td>
					<td>
						是
					</td>
					<td>
						<a href="edit?id=1">[编辑]</a>
					</td>
				</tr>
		</table>
<input type="hidden" id="pageSize" name="pageSize" value="20" />
<input type="hidden" id="searchProperty" name="searchProperty" value="" />
<input type="hidden" id="orderProperty" name="orderProperty" value="" />
<input type="hidden" id="orderDirection" name="orderDirection" value="" />
	</form>
</body>
</html>