
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="content-type" content="text/html;charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <title>编辑会员等级 - Powered By SHOP++</title>
    <meta name="author" content="SHOP++ Team" />
    <meta name="copyright" content="SHOP++" />
    <link href="/css/common.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="/js/jquery.js"></script>
    <script type="text/javascript" src="/js/jquery.tools.js"></script>
    <script type="text/javascript" src="/js/jquery.validate.js"></script>
    <script type="text/javascript" src="/js/common.js"></script>
    <script type="text/javascript" src="/js/input.js"></script>
    <script type="text/javascript">
        $().ready(function() {

            var $inputForm = $("#inputForm");
            var $amount = $("#amount");
            var $isSpecial = $("#isSpecial");


            // 是否特殊
            $isSpecial.click(function() {
                if ($(this).prop("checked")) {
                    $amount.val("").prop("disabled", true);
                } else {
                    $amount.prop("disabled", false);
                }
            });

            // 表单验证
            $inputForm.validate({
                rules: {
                    name: "required",
                    scale: {
                        required: true,
                        min: 0,
                        decimal: {
                            integer: 3,
                            fraction: 3
                        }
                    },
                    amount: {
                        required: true,
                        min: 0,
                        decimal: {
                            integer: 12,
                            fraction: 2
                        },
                        remote: {
                            url: "check_amount?id=4",
                            cache: false
                        }
                    }
                },
                messages: {
                    amount: {
                        remote: "已存在"
                    }
                }
            });

        });
    </script>
</head>
<body>
<div class="breadcrumb">
    编辑会员等级
</div>
<form id="inputForm" action="update" method="post">
    <input type="hidden" name="id" value="4" />
    <table class="input">
        <tr>
            <th>
                <span class="requiredField">*</span>名称:
            </th>
            <td>
                <input type="text" name="name" class="text" value="${rank.name}" maxlength="200" />
            </td>
        </tr>
        <tr>
            <th>
                <span class="requiredField">*</span>优惠比例:
            </th>
            <td>
                <input type="text" name="scale" class="text" value="${rank.scale}" maxlength="7" />
            </td>
        </tr>
        <tr>
            <th>
                <span class="requiredField">*</span>消费金额:
            </th>
            <td>
                <input type="text" id="amount" name="amount" class="text" value="${rank.amount}" maxlength="16" />
            </td>
        </tr>
        <tr>
            <th>
                设置:
            </th>
            <td>
                <label>
                    <input type="checkbox" name="isDefault" value="true" />是否默认
                    <input type="hidden" name="_isDefault" value="false" />
                </label>
                <label title="特殊会员等级不随消费金额变化">
                    <input type="checkbox" id="isSpecial" name="isSpecial" value="true" />是否特殊
                    <input type="hidden" name="_isSpecial" value="false" />
                </label>
            </td>
        </tr>
        <tr>
            <th>
                &nbsp;
            </th>
            <td>
                <input type="submit" class="button" value="确 定" />
                <input type="button" class="button" value="返 回" onclick="history.back(); return false;" />
            </td>
        </tr>
    </table>
</form>
</body>
</html>