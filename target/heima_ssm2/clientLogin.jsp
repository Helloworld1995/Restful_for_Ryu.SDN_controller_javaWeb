<%--
  Created by IntelliJ IDEA.
  User: ly
  Date: 2020/5/5
  Time: 9:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title style="color: #0c0c0c">欢迎登录您的网络世界</title>
        <!-- Tell the browser to be responsive to screen width -->
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
        <!-- Bootstrap 3.3.7 -->
        <link rel="stylesheet"
              href="${pageContext.request.contextPath}/plugins/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet"
              href="${pageContext.request.contextPath}/plugins/font-awesome/css/font-awesome.min.css">
        <link rel="stylesheet"
              href="${pageContext.request.contextPath}/plugins/ionicons/css/ionicons.min.css">
        <link rel="stylesheet"
              href="${pageContext.request.contextPath}/plugins/adminLTE/css/AdminLTE.css">
        <link rel="stylesheet"
              href="${pageContext.request.contextPath}/plugins/iCheck/square/blue.css">

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->

        <!-- Google Font -->
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
    </head>
<body style="background-image: url('img/sea.jpg');background-size: 100% 100%" class="hold-transition login-page">
<div class="login-box">
    <div class="login-logo">
        <a><b style="color: #1c2d3f">Welcome</b></a>
    </div>
    <!-- /.login-logo -->
    <div class="login-box-body">
        <p class="login-box-msg">Sign in to start your session</p>

        <form id="logining" method="post" action="${pageContext.request.contextPath}/SdnUser/login.do" >
            <div class="form-group has-feedback">
                <input type="text" name="username" class="form-control" placeholder="用户名">
                <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
            </div>
            <div class="form-group has-feedback">
                <input type="password" name="password" class="form-control" placeholder="password">
                <span class="glyphicon glyphicon-lock form-control-feedback"></span>
            </div>
            <div class="row">
                <div align="center" class="col-xs-8">
                    <div class="checkbox icheck">
                        <label>
                            <input type="checkbox">记住
                        </label>
                    </div>
                </div>
                <!-- /.col -->
                <div class="col-xs-4">
                    <button type="submit" class="btn btn-primary btn-block btn-flat">登录</button>
                </div>
                <!-- /.col -->
            </div>
        </form>

        <div class="social-auth-links text-center">
            <p> or </p>
            <a href="#"><i style="font-size: large" class="fa fa-qq"></i></a>
            <a href="#"><i style="font-size: large" class="fa fa-wechat"></i> </a>
            <a href="#"><i style="font-size: large" class="fa fa-apple"></i> </a>
        </div>
        <!-- /.social-auth-links -->

        <a href="#">忘记密码</a><br>
        <a href="register.html" class="text-center">注册新用户</a>

    </div>
    <!-- /.login-box-body -->
</div>
<!-- /.login-box -->

<!-- jQuery 3 -->
<script src="../../bower_components/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap 3.3.7 -->
<script src="../../bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- iCheck -->
<script src="../../plugins/iCheck/icheck.min.js"></script>
<script>

    $(function () {
        $('input').iCheck({
            checkboxClass: 'icheckbox_square-blue',
            radioClass: 'iradio_square-blue',
            increaseArea: '20%' /* optional */
        });
    });
</script>
<script>
    var msg="${error}";
    if(msg.equals(" ")){
        alert("${error}")
    }
</script>
</body>

</html>
