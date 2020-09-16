
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="content-type" content="text/html;charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <title>编辑会员 - Powered By SHOP++</title>
    <meta name="author" content="SHOP++ Team" />
    <meta name="copyright" content="SHOP++" />
    <link href="/css/common.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="/js/jquery.js"></script>
    <script type="text/javascript" src="/js/jquery.tools.js"></script>
    <script type="text/javascript" src="/js/jquery.lSelect.js"></script>
    <script type="text/javascript" src="/js/jquery.validate.js"></script>
    <script type="text/javascript" src="/js/common.js"></script>
    <script type="text/javascript" src="/js/input.js"></script>
    <script type="text/javascript" src="/datePicker/WdatePicker.js"></script>
    <script type="text/javascript">
        $().ready(function() {

            var $inputForm = $("#inputForm");
            var $areaId = $("#areaId");


            $.validator.addMethod("notAllowBlank",
                function(value, element) {
                    return this.optional(element) || /^\S*$/.test(value);
                },
                "非法字符"
            );

            // 地区选择
            $areaId.lSelect({
                url: "/common/area"
            });

            // 表单验证
            $inputForm.validate({
                rules: {
                    password: {
                        notAllowBlank: true,
                        minlength: 4
                    },
                    rePassword: {
                        notAllowBlank: true,
                        equalTo: "#password"
                    },
                    email: {
                        required: true,
                        email: true,
                        remote: {
                            url: "check_email?id=1",
                            cache: false
                        }
                    },
                    mobile: {
                        pattern: /^1[3|4|5|7|8]\d{9}$/,
                        remote: {
                            url: "check_mobile?id=1",
                            cache: false
                        }
                    }
                    ,memberAttribute_7: {
                        pattern: /^\d{3,4}-?\d{7,9}$/
                    }
                },
                messages: {
                    email: {
                        remote: "已存在"
                    },
                    mobile: {
                        remote: "已存在"
                    }
                }
            });

        });
    </script>
</head>
<body>
<div class="breadcrumb">
    <a href="main">首页</a> &raquo; 编辑会员
</div>
<form id="inputForm" method="post">
    <ul id="tab" class="tab">
        <li>
            <input type="button" value="基本信息" />
        </li>
        <li>
            <input type="button" value="个人资料" />
        </li>
    </ul>
    <input type="hidden" name="id" value="${member.id}"/>
    <table class="input tabContent">
        <tr>
            <th>
                用户名:
            </th>
            <td>
                ${member.username}
            </td>
        </tr>
        <tr>
            <th>
                密码:
            </th>
            <td>
                <input type="password" id="password" name="encodedpassword" class="text" maxlength="20" autocomplete="off" />
            </td>
        </tr>
        <tr>
            <th>
                确认密码:
            </th>
            <td>
                <input type="password" name="rePassword" class="text" maxlength="20" autocomplete="off" />
            </td>
        </tr>
        <tr>
            <th>
                <span class="requiredField">*</span>E-mail:
            </th>
            <td>
                <input type="text" name="email" class="text" value="${member.email}" maxlength="200" />
            </td>
        </tr>
        <tr>
            <th>
                手机:
            </th>
            <td>
                <input type="text" name="mobile" class="text" value="${member.mobile}" maxlength="200" />
            </td>
        </tr>
        <tr>
            <th>
                会员等级:
            </th>
            <td>
                <select name="memberrankId">
                    <option value="4" >金牌会员</option>
                    <option value="3" selected>银牌会员</option>
                    <option value="2">铜牌会员</option>
                    <option value="1">普通会员</option>
                </select>
            </td>
        </tr>
        <tr>
            <th>
                积分:
            </th>
            <td>
                ${member.point}
            </td>
        </tr>
        <tr>
            <th>
                余额:
            </th>
            <td>
                ${member.balance}
            </td>
        </tr>
        <tr>
            <th>
                消费金额:
            </th>
            <td>
                ${member.attributevalue1}
            </td>
        </tr>
        <tr>
            <th>
                创建日期:
            </th>
            <td>
                ${member.birth?string('yyyy-MM-dd HH:mm:ss')}
            </td>
        </tr>
    </table>
    <table class="input tabContent">
        <tr>
            <th>
                姓名:
            </th>
            <td>
                <input type="text" name="name" class="text" value="${member.name}" maxlength="200" />
            </td>
        </tr>
        <tr>
            <th>
                性别:
            </th>
            <td>
                <span class="fieldSet">
                        <label>
                            <input type="radio" name="attributevalue0" value="1" checked/>男
                        </label>
                        <label>
                            <input type="radio" name="attributevalue0" value="2"/>女
                        </label>
                </span>
            </td>
        </tr>
        <tr>
            <th>
                电话:
            </th>
            <td>
                <input type="text" name="phone" class="text" value="${member.phone}" maxlength="200" />
            </td>
        </tr>
    </table>
    <table class="input">
        <tr>
            <th>
                &nbsp;
            </th>
            <td>
                <input type="submit" class="button" onclick="updateMember()" value="确 定" />
                <input type="button" class="button" value="返 回" onclick="history.back(); return false;" />
            </td>
        </tr>
    </table>
</form>
</body>
<script type="text/javascript">
    function updateMember(){
        $.ajax({
            url: 'member/updateMember',
            type: 'post',
            data: $("#inputForm").serialize(),
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
</script>
</html>