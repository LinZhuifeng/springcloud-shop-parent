
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<title>咨询列表 - Powered By SHOP++</title>
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
		<a href="/shopxxb2b2c/admin/common/index">首页</a> &raquo; 咨询列表 <span>(共0条记录)</span>
	</div>
	<form id="listForm" action="list" method="get">
		<input type="hidden" id="type" name="type" value="" />
		<div class="bar">
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
					<li val="content">内容</li>
				</ul>
			</div>
		</div>
		<table id="listTable" class="list">
			<tr>
				<th class="check">
					<input type="checkbox" id="selectAll" />
				</th>
				<th>
					<a href="javascript:;" class="sort" name="product">商品</a>
				</th>
				<th>
					<a href="javascript:;" class="sort" name="content">内容</a>
				</th>
				<th>
					<a href="javascript:;" class="sort" name="member">会员</a>
				</th>
				<th>
					<a href="javascript:;" class="sort" name="isShow">是否显示</a>
				</th>
				<th>
					<span>已回复</span>
				</th>
				<th>
					<a href="javascript:;" class="sort" name="createdDate">创建日期</a>
				</th>
				<th>
					<span>操作</span>
				</th>
			</tr>
		</table>
<input type="hidden" id="pageSize" name="pageSize" value="20" />
<input type="hidden" id="searchProperty" name="searchProperty" value="" />
<input type="hidden" id="orderProperty" name="orderProperty" value="" />
<input type="hidden" id="orderDirection" name="orderDirection" value="" />
	</form>
</body>
</html>