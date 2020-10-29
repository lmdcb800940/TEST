<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default004_setTimeOut_倒數.aspx.cs" Inherits="T_JavaScript_Default004_setTimeOut_倒數" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <!-- Our CSS stylesheet file -->
    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans+Condensed:300" />
    <link href="../packages/countdown/assets/css/styles.css" rel="stylesheet" />
    <link href="../packages/countdown/assets/countdown/jquery.countdown.css" rel="stylesheet" />
    <title></title>
</head>
<body>

    <%--<div id="countdown"></div>
    <!-- *** 設定值 ,請到這裡修改.   countdown/assets/js/script.js *** -->

    <!-- JavaScript includes -->
    <script src="http://code.jquery.com/jquery-1.7.1.min.js"></script>
    <script src="../packages/countdown/assets/countdown/jquery.countdown.js"></script>
    <script src="../packages/countdown/assets/js/script.js"></script>--%>

    <form id="form1" runat="server">
        <div>
            <code style="font-family: Consolas, monaco, monospace; font-size: 16px; display: inline-block; margin: 0px 3px; padding: 0px 10px; background: rgb(238, 238, 238); color: rgb(51, 51, 51); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;">setTimeout()</code><span style="color: rgb(51, 51, 51); font-family: PingFangSC-Regular, Helvetica, &quot;Helvetica Neue&quot;, &quot;Segoe UI&quot;, &quot;Hiragino Sans GB&quot;, &quot;Source Han Sans CN&quot;, &quot;Microsoft YaHei&quot;, STHeiti, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(247, 247, 247); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;"><span>&nbsp;</span>只會執行一次就結束<br />
            <br />
            </span>
        </div>
    </form>
</body>

<%--    <script type='text/javascript'>
        setTimeout('countdown()', 1000);

        function countdown() {
            var s = document.getElementById('timer');
            s.innerHTML = s.innerHTML - 1;
            if (s.innerHTML == 0)
                window.location = 'http://www.ashs.tw/vb';
            else
                setTimeout('countdown()', 1000);
        }--%>
</script>

    <script type='text/javascript'>
        setTimeout('countdown()', 1000); //1秒執行一次秒數的倒數

        function countdown() {
            var m = document.getElementById('timer_min');
            var s = document.getElementById('timer_sec');

            s.innerHTML = s.innerHTML - 1;

            //秒數到 分鐘未到。自動加
            if (m.innerHTML != 0 && s.innerHTML == 0) {
                m.innerHTML = m.innerHTML - 1;
                s.innerHTML = s.innerHTML + 60;
            }

            if (m.innerHTML == 0 && s.innerHTML == 0)
                window.location = 'https://play.kkbox.com/';
            else
                setTimeout('countdown()', 1000);
        }
</script>


</html>
<%--系統將於 <span id='timer'>5</span> 秒後，為您自動轉跳。--%>
系統將於 <span id='timer_min'>1 </span>分<span id='timer_sec'>5 </span>秒後，為您自動轉跳。
