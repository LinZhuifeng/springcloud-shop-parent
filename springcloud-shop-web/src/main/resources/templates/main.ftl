
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="content-type" content="text/html;charset=utf-8" />
    <title>管理中心 - Powered By SHOP++</title>
    <meta name="author" content="SHOP++ Team" />
    <meta name="copyright" content="SHOP++" />
    <link href="/css/common.css" rel="stylesheet" type="text/css" />
    <link href="/css/index.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="/js/jquery.js"></script>
    <script type="text/javascript">
        $().ready(function() {

            var $nav = $("#nav a:not(:last)");
            var $menu = $("#menu dl");
            var $menuItem = $("#menu a");
            var $iframe = $("#iframe");

            $nav.click(function() {
                var $this = $(this);
                $nav.removeClass("current");
                $this.addClass("current");
                var $currentMenu = $($this.attr("href"));
                $menu.hide();
                $currentMenu.show();
                return false;
            });

            $menuItem.click(function() {
                var $this = $(this);
                $menuItem.removeClass("current");
                $this.addClass("current");
            });

            $iframe.load(function() {
                if ($iframe.is(":hidden") && $iframe.contents().find("body").html() != "") {
                    $iframe.show().siblings().hide();
                }
            });

        });
    </script>
</head>
<body>
<script type="text/javascript">
    if (self != top) {
        top.location = self.location;
    }
</script>
<table class="index">
    <tr>
        <th class="logo">
            <a href="index">
                <img src="/images/header_logo.gif" alt="SHOP++" />
            </a>
        </th>
        <th>
            <div id="nav" class="nav">
                <ul>
                    <li>
                        <a href="#store">店铺</a>
                    </li>
                    <li>
                        <a href="#product">商品</a>
                    </li>
                    <li>
                        <a href="#order">订单</a>
                    </li>
                    <li>
                        <a href="#member">会员</a>
                    </li>
                    <li>
                        <a href="#content">内容</a>
                    </li>
                    <li>
                        <a href="#marketing">营销</a>
                    </li>
                    <li>
                        <a href="#system">系统</a>
                    </li>
                    <li>
                        <a href="/" target="_blank">首页</a>
                    </li>
                </ul>
            </div>
            <div class="link">
                <a href="http://www.shopxx.net" target="_blank">官方网站</a>|
                <a href="http://bbs.shopxx.net" target="_blank">交流论坛</a>|
                <a href="http://www.shopxx.net/about.html" target="_blank">关于我们</a>
            </div>
            <div class="link">
                <strong>admin</strong>
                您好!
                <a href="profile/edit" target="iframe">[账号设置]</a>
                <a href="logout" target="_top">[注销]</a>
            </div>
        </th>
    </tr>
    <tr>
        <td id="menu" class="menu">
            <dl id="store" class="default">
                <dt>店铺管理</dt>
                <dd>
                    <a href="business/list" target="iframe">商家管理</a>
                </dd>
                <dd>
                    <a href="store/list" target="iframe">店铺管理</a>
                </dd>
                <dd>
                    <a href="store_category/list" target="iframe">店铺分类</a>
                </dd>
                <dd>
                    <a href="store_rank/list" target="iframe">店铺等级</a>
                </dd>
                <dd>
                    <a href="business_attribute/list" target="iframe">商家注册项</a>
                </dd>
                <dd>
                    <a href="cash/list" target="iframe">提现管理</a>
                </dd>
                <dd>
                    <a href="category_application/list" target="iframe">经营分类申请</a>
                </dd>
                <dd>
                    <a href="business_deposit/log" target="iframe">商家预存款</a>
                </dd>
            </dl>
            <dl id="product">
                <dt>商品管理</dt>
                <dd>
                    <a href="product/list" target="iframe">商品管理</a>
                </dd>
                <dd>
                    <a href="stock/log" target="iframe">库存管理</a>
                </dd>
                <dd>
                    <a href="product_category/list" target="iframe">商品分类</a>
                </dd>
                <dd>
                    <a href="product_tag/list" target="iframe">商品标签</a>
                </dd>
                <dd>
                    <a href="parameter/list" target="iframe">商品参数</a>
                </dd>
                <dd>
                    <a href="attribute/list" target="iframe">商品属性</a>
                </dd>
                <dd>
                    <a href="specification/list" target="iframe">规格管理</a>
                </dd>
                <dd>
                    <a href="brand/list" target="iframe">品牌管理</a>
                </dd>
            </dl>
            <dl id="order">
                <dt>订单管理</dt>
                <dd>
                    <a href="order/list" target="iframe">订单管理</a>
                </dd>
                <dd>
                    <a href="order_payment/list" target="iframe">订单支付</a>
                </dd>
                <dd>
                    <a href="refunds/list" target="iframe">订单退款</a>
                </dd>
                <dd>
                    <a href="shipping/list" target="iframe">订单发货</a>
                </dd>
                <dd>
                    <a href="returns/list" target="iframe">订单退货</a>
                </dd>
                <dd>
                    <a href="delivery_center/list" target="iframe">发货点管理</a>
                </dd>
                <dd>
                    <a href="delivery_template/list" target="iframe">快递单模板</a>
                </dd>
            </dl>
            <dl id="member">
                <dt>会员管理</dt>
                <dd>
                    <a href="list" target="iframe">会员管理</a>
                </dd>
                <dd>
                    <a href="dengji" target="iframe">会员等级</a>
                </dd>
                <dd>
                    <a href="member_attribute/list" target="iframe">会员注册项</a>
                </dd>
                <dd>
                    <a href="point/log" target="iframe">积分管理</a>
                </dd>
                <dd>
                    <a href="member_deposit/log" target="iframe">会员预存款</a>
                </dd>
                <dd>
                    <a href="review/list" target="iframe">评论管理</a>
                </dd>
                <dd>
                    <a href="consultation/list" target="iframe">咨询管理</a>
                </dd>
                <dd>
                    <a href="message_config/list" target="iframe">消息配置</a>
                </dd>
            </dl>
            <dl id="content">
                <dt>内容管理</dt>
                <dd>
                    <a href="navigation/list" target="iframe">导航管理</a>
                </dd>
                <dd>
                    <a href="article/list" target="iframe">文章管理</a>
                </dd>
                <dd>
                    <a href="article_category/list" target="iframe">文章分类</a>
                </dd>
                <dd>
                    <a href="article_tag/list" target="iframe">文章标签</a>
                </dd>
                <dd>
                    <a href="friend_link/list" target="iframe">友情链接</a>
                </dd>
                <dd>
                    <a href="ad_position/list" target="iframe">广告位</a>
                </dd>
                <dd>
                    <a href="ad/list" target="iframe">广告管理</a>
                </dd>
                <dd>
                    <a href="template/list" target="iframe">模板管理</a>
                </dd>
                <dd>
                    <a href="cache/clear" target="iframe">缓存管理</a>
                </dd>
            </dl>
            <dl id="marketing">
                <dt>营销管理</dt>
                <dd>
                    <a href="promotion/list" target="iframe">促销管理</a>
                </dd>
                <dd>
                    <a href="coupon/list" target="iframe">优惠券管理</a>
                </dd>
                <dd>
                    <a href="seo/list" target="iframe">SEO设置</a>
                </dd>
            </dl>
            <dl id="system">
                <dt>系统设置</dt>
                <dd>
                    <a href="setting/edit" target="iframe">系统设置</a>
                </dd>
                <dd>
                    <a href="area/list" target="iframe">地区管理</a>
                </dd>
                <dd>
                    <a href="payment_method/list" target="iframe">支付方式</a>
                </dd>
                <dd>
                    <a href="shipping_method/list" target="iframe">配送方式</a>
                </dd>
                <dd>
                    <a href="delivery_corp/list" target="iframe">物流公司</a>
                </dd>
                <dd>
                    <a href="payment_plugin/list" target="iframe">支付插件</a>
                </dd>
                <dd>
                    <a href="storage_plugin/list" target="iframe">存储插件</a>
                </dd>
                <dd>
                    <a href="login_plugin/list" target="iframe">登录插件</a>
                </dd>
                <dd>
                    <a href="promotion_plugin/list" target="iframe">促销插件</a>
                </dd>
                <dd>
                    <a href="admin/list" target="iframe">管理员</a>
                </dd>
                <dd>
                    <a href="role/list" target="iframe">角色管理</a>
                </dd>
                <dd>
                    <a href="message/send" target="iframe">发送消息</a>
                </dd>
                <dd>
                    <a href="message/list" target="iframe">消息列表</a>
                </dd>
                <dd>
                    <a href="message/draft" target="iframe">草稿箱</a>
                </dd>
                <dd>
                    <a href="audit_log/list" target="iframe">审计日志</a>
                </dd>
            </dl>
        </td>
        <td>
            <div class="breadcrumb">
                管理中心
            </div>
            <table class="input">
                <tr>
                    <th>
                        系统名称:
                    </th>
                    <td>
                        SHOP++ B2B2C网上商城系统
                        <a href="http://www.shopxx.net" class="silver" target="_blank">[授权查询]</a>
                    </td>
                    <th>
                        系统版本:
                    </th>
                    <td>
                        5.0 RELEASE
                    </td>
                </tr>
                <tr>
                    <th>
                        官方网站:
                    </th>
                    <td>
                        <a href="http://www.shopxx.net" target="_blank">http://www.shopxx.net</a>
                    </td>
                    <th>
                        交流论坛:
                    </th>
                    <td>
                        <a href="http://bbs.shopxx.net" target="_blank">http://bbs.shopxx.net</a>
                    </td>
                </tr>
                <tr>
                    <td colspan="4">
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <th>
                        JAVA版本:
                    </th>
                    <td>
                        1.8.0_151
                    </td>
                    <th>
                        JAVA路径:
                    </th>
                    <td>
                        /usr/java/jdk1.8.0_151/jre
                    </td>
                </tr>
                <tr>
                    <th>
                        操作系统名称:
                    </th>
                    <td>
                        Linux
                    </td>
                    <th>
                        操作系统构架:
                    </th>
                    <td>
                        amd64
                    </td>
                </tr>
                <tr>
                    <th>
                        Server信息:
                    </th>
                    <td>
                        <span title="Apache Tomcat/8.5.32">Apache Tomcat/8.5.32</span>
                    </td>
                    <th>
                        Servlet版本:
                    </th>
                    <td>
                        3.1
                    </td>
                </tr>
                <tr>
                    <td colspan="4">
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <th>
                        等待审核订单数:
                    </th>
                    <td>
                        0
                    </td>
                    <th>
                        等待发货订单数:
                    </th>
                    <td>
                        0
                    </td>
                </tr>
                <tr>
                    <th>
                        等待收款订单数:
                    </th>
                    <td>
                        0
                    </td>
                    <th>
                        等待退款订单数:
                    </th>
                    <td>
                        0
                    </td>
                </tr>
                <tr>
                    <th>
                        上架商品数:
                    </th>
                    <td>
                        47
                    </td>
                    <th>
                        下架商品数:
                    </th>
                    <td>
                        0
                    </td>
                </tr>
                <tr>
                    <th>
                        商品库存报警数:
                    </th>
                    <td>
                        2
                    </td>
                    <th>
                        缺货商品数:
                    </th>
                    <td>
                        2
                    </td>
                </tr>
                <tr>
                    <th>
                        会员总数:
                    </th>
                    <td>
                        0
                    </td>
                    <th>
                        未读消息数:
                    </th>
                    <td>
                        0
                    </td>
                </tr>
                <tr>
                    <td class="powered" colspan="4">
                        COPYRIGHT © 2005-2017 SHOPXX.NET ALL RIGHTS RESERVED.
                    </td>
                </tr>
            </table>
            <iframe id="iframe" name="iframe" frameborder="0"></iframe>
        </td>
    </tr>
</table>
</body>
</html>