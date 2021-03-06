<%--
  Created by IntelliJ IDEA.
  Author: 冯奕骅
  Date: 14-9-4
  Time: 23:25
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <%@ include file="header.jsp" %>
    <title>Narrow Jumbotron Template for Bootstrap</title>

    <!-- Custom styles for this template -->
    <link href="${pageContext.request.contextPath}/css/index/jumbotron-narrow.css" rel="stylesheet">

    <script type="text/javascript">
        var ws = new ReconnectingWebSocket('ws://<%= request.getServerName() %>:<%= request.getServerPort() %>/websocket/demo');

        $(function () {
            ws.onopen = function () {
                console.log('onopen')
            };
            ws.onmessage = function (message) {
                console.log(message.data)
            };
            ws.onclose = function () {
                console.log('onclose')
            };
            ws.onerror = function () {
                console.log('onerror')
            }
        });

        function login() {
            $.ajax({
                url: '/login',
                type: 'POST',
                success: function (res) {
                    localStorage.setItem("access_token", res.data);
                    alert("access_token=" + res.data);
                }
            });
        }

        function logout() {
            $.ajax({
                url: '/logout',
                type: 'POST',
                headers: {
                    'Authorization': 'Bearer ' + localStorage.getItem("access_token")
                },
                success: function (res) {
                    alert(res.data);
                    localStorage.clear();
                }
            });
        }
    </script>
</head>
<body>
    <div class="container">
        <div class="header">
            <ul class="nav nav-pills pull-right" role="tablist">
                <li role="presentation" class="active"><a href="#">Home</a></li>
                <li role="presentation"><a href="#">About</a></li>
                <li role="presentation"><a href="#">Contact</a></li>
            </ul>
            <h3 class="text-muted">Project name</h3>
        </div>

        <div class="jumbotron">
            <h1>Jumbotron heading</h1>
            <p class="lead">Cras justo odio, dapibus ac facilisis in, egestas eget quam. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.</p>
            <p>
                <a class="btn btn-lg btn-success" href="javascript:void(0)" role="button" onclick="login()">Login</a>
                <a class="btn btn-lg btn-success" href="javascript:void(0)" role="button" onclick="logout()">Logout</a>
            </p>
        </div>

        <div class="row marketing">
            <div class="col-lg-6">
                <h4>Subheading</h4>
                <p>Donec id elit non mi porta gravida at eget metus. Maecenas faucibus mollis interdum.</p>

                <h4>Subheading</h4>
                <p>Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Cras mattis consectetur purus sit amet fermentum.</p>

                <h4>Subheading</h4>
                <p>Maecenas sed diam eget risus varius blandit sit amet non magna.</p>
            </div>

            <div class="col-lg-6">
                <h4>Subheading</h4>
                <p>Donec id elit non mi porta gravida at eget metus. Maecenas faucibus mollis interdum.</p>

                <h4>Subheading</h4>
                <p>Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Cras mattis consectetur purus sit amet fermentum.</p>

                <h4>Subheading</h4>
                <p>Maecenas sed diam eget risus varius blandit sit amet non magna.</p>
            </div>
        </div>

        <div class="footer">
            <p>&copy; Company 2014</p>
        </div>
    </div>
</body>
</html>