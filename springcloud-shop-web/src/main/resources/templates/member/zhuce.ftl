
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html;charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<title>会员注册项列表 - Powered By SHOP++</title>
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
		<a href="/shopxxb2b2c/admin/common/index">首页</a> &raquo; 会员注册项列表 <span>(共7条记录)</span>
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
					<a href="javascript:;" class="sort" name="type">类型</a>
				</th>
				<th>
					<a href="javascript:;" class="sort" name="isRequired">是否必填</a>
				</th>
				<th>
					<a href="javascript:;" class="sort" name="isEnabled">是否启用</a>
				</th>
				<th>
					<a href="javascript:;" class="sort" name="order">排序</a>
				</th>
				<th>
					<span>操作</span>
				</th>
			</tr>
				<tr>
					<td>
						<input type="checkbox" name="ids" title="系统内置会员注册项不允许删除" disabled="disabled" />
					</td>
					<td>
						姓名
					</td>
					<td>
						姓名
					</td>
					<td>
						否
					</td>
					<td>
						<span class="trueIcon">&nbsp;</span>
					</td>
					<td>
						1
					</td>
					<td>
						<a href="edit?id=1">[编辑]</a>
					</td>
				</tr>
				<tr>
					<td>
						<input type="checkbox" name="ids" title="系统内置会员注册项不允许删除" disabled="disabled" />
					</td>
					<td>
						性别
					</td>
					<td>
						性别
					</td>
					<td>
						否
					</td>
					<td>
						<span class="trueIcon">&nbsp;</span>
					</td>
					<td>
						2
					</td>
					<td>
						<a href="edit?id=2">[编辑]</a>
					</td>
				</tr>
				<tr>
					<td>
						<input type="checkbox" name="ids" title="系统内置会员注册项不允许删除" disabled="disabled" />
					</td>
					<td>
						出生日期
					</td>
					<td>
						出生日期
					</td>
					<td>
						否
					</td>
					<td>
						<span class="falseIcon">&nbsp;</span>
					</td>
					<td>
						3
					</td>
					<td>
						<a href="edit?id=3">[编辑]</a>
					</td>
				</tr>
				<tr>
					<td>
						<input type="checkbox" name="ids" title="系统内置会员注册项不允许删除" disabled="disabled" />
					</td>
					<td>
						地区
					</td>
					<td>
						地区
					</td>
					<td>
						否
					</td>
					<td>
						<span class="falseIcon">&nbsp;</span>
					</td>
					<td>
						4
					</td>
					<td>
						<a href="edit?id=4">[编辑]</a>
					</td>
				</tr>
				<tr>
					<td>
						<input type="checkbox" name="ids" title="系统内置会员注册项不允许删除" disabled="disabled" />
					</td>
					<td>
						地址
					</td>
					<td>
						地址
					</td>
					<td>
						否
					</td>
					<td>
						<span class="falseIcon">&nbsp;</span>
					</td>
					<td>
						5
					</td>
					<td>
						<a href="edit?id=5">[编辑]</a>
					</td>
				</tr>
				<tr>
					<td>
						<input type="checkbox" name="ids" title="系统内置会员注册项不允许删除" disabled="disabled" />
					</td>
					<td>
						邮编
					</td>
					<td>
						邮编
					</td>
					<td>
						否
					</td>
					<td>
						<span class="falseIcon">&nbsp;</span>
					</td>
					<td>
						6
					</td>
					<td>
						<a href="edit?id=6">[编辑]</a>
					</td>
				</tr>
				<tr>
					<td>
						<input type="checkbox" name="ids" title="系统内置会员注册项不允许删除" disabled="disabled" />
					</td>
					<td>
						电话
					</td>
					<td>
						电话
					</td>
					<td>
						否
					</td>
					<td>
						<span class="trueIcon">&nbsp;</span>
					</td>
					<td>
						7
					</td>
					<td>
						<a href="edit?id=7">[编辑]</a>
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