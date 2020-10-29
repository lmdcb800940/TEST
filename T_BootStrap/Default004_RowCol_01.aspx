<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default004_RowCol_01.aspx.cs" Inherits="T_BootStrap_Default004_RowCol_01" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <%--需用拖曳方式--%>
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <script src="../Scripts/bootstrap.min.js"></script>
    <script src="../Scripts/jquery-3.0.0.min.js"></script>

    <link href="Content/themes/base/base.css" rel="stylesheet" />
    <link href="Content/themes/base/dialog.css" rel="stylesheet" />

    <%-- 作用在於文字編碼，改善行動裝置上的顯示效果 --%>
    <%-- 其中viewport與手機優先理念有關，能確保網頁正確顯示手機上 --%>
    <%-- content加入user-scalable=no設定關閉縮放功能，使用者只能捲動網頁瀏覽 --%>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatiible" content="IE=edge" />
    <meta name="viewport" content="width=device-width,initial-scale=1" />

    <title>HELLO</title>

     <style type="text/css">
        @media (max-width: 48em)
        {
            table .btn{
                font-size:0.75rem;
                font-size:3.5vw;
            }
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
      <div class="jumbotron">
            <div class="container">
                <%-- 橫列 1--%>
                <div class="row">
                    <%--column 直欄。每個橫列都被分為12等分，故1列最多可以有12個直欄--%>
                    <header class="col-md-12">
                        <h1>簡單的登錄頁面</h1>
                        <h2>副標題</h2>
                        <a class="btn btn-default btn-lg" href="#" role="button">link</a>
                    </header>
                </div>
            </div>
        </div>

        <div class="container">
            <%-- 橫列 2--%>
            <div class="row">
                <%-- 偏移欄 --%>
                <div class="col-md-offset-4 col-md-4 col-sm-6 col-lg-push-4">
                    <h3>文字<small>次要文字</small></h3>
                </div>
                <div class="col-md-4 col-sm-6 col-lg-pull-4">
                    <h3>將此頁面加進我的最愛<small><kbd class="nowrap"><kbd>ctrl</kbd>+<kbd>d</kbd></kbd></small></h3>
                    <%--在base.css 手動加入nowrap。可達到在手機瀏覽時，不會被截到  --%>
                    <%-- white-space屬性指定元素內空白空格的處理方式。預設值是nornal，也就是在需要的時候會換行。
                       nowrap可藉由建立新的一行避免不當的換行，另pro只會在有輸入換行處換行。 --%>
                </div>
            </div>
            <%-- 橫列 3--%>
            <div class="row">
                <div class="col-md-4 col-xs-5">
                    <pre>
                        &lt;p&gt; 我愛程式設計 &lt;/p&gt;
                        &lt;p&gt; 這個段落在我的登錄頁面上 &lt;/p&gt;
                        &lt;br/&gt;
                        &lt;br/&gt;
                        &lt;p&gt; 從範例學BootStrap &lt;/p&gt;
                    </pre>
                </div>
                <div class="col-md-9 col-xs-7">
                    <img src="imgs/center.png" class="img-responsive hidden-xs" />
                    <img src="imgs/mobile.png" class="img-responsive visible-xs" />
                </div>
            </div>
            <%-- 橫列 4--%>
            <div class="row">
                <div class="col-md-3 hidden-xs col-sm-3">
                    <img src="imgs/bs.png" class="img-responsive" />
                </div>
                <div class="col-md-6 col-xs-offset-1 col-xs-11 col-sm-6 col-sm-offset-0">
                    <blockquote>
                        <p>個元船力保大然商務馬煮了了毒腺王</p>
                        <footer>來自某人的見證，摘自：<cite title="Source Title">來源標題</cite></footer>
                    </blockquote>
                </div>
                <div class="col-md-3 col-xs-7 col-sm-3">
                    <img src="imgs/packt.png" class="img-responsive" />
                </div>
                 <div class="col-md-5 visible-xs">
                    <img src="imgs/bs.png" class="img-responsive" />
                </div>
            </div>
            <%-- 橫列 5--%>
            <div class="row">
                <div class="col-md-3">
                    <p class="text-left"><code>&lt;靠左 &gt;</code></p>
                </div>
                <div class="col-md-3">
                    <p class="text-center">置中</p>
                </div>
                <div class="col-md-3">
                    <p class="text-justify">左右對齊</p>
                </div>
                <div class="col-md-3">
                    <p class="text-right">靠右</p>
                </div>
            </div>
            <%-- 橫列 6--%>
            <div class="row">
                <div class="col-md-3">
                    <h3>小寫</h3>
                    <p class="text-lowercase">Lorem ipsum dolor ... consequat.</p>
                </div>
                <div class="col-md-6">
                    <div class="row">
                        <div class="col-md-6">
                            <h3>大寫</h3>
                            <p class="text-uppercase">Lorem ipsum dolor ... conswquat.</p>
                        </div>
                        <div class="col-md-6">
                            <h3>字首大寫</h3>
                            <p class="text-capitalize">Lorem ipsum dolor ... conswquat.</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <h3>粗體與斜體</h3>
                    <p><strong>神我</strong>是<em>行微</em></p>
                </div>
            </div>
            <%-- 橫列 7--%>
            <footer class="row jumbotron">
                <div class="col-md-2">
                    <img src="imgs/logo.png" class="img-responsive" />
                </div>
                <div class="col-md-7">
                   <ul class="list-inline list-unstyled">
                       <li><a href="#">文件資料</a></li>
                       <li><a href="#">出版社</a></li>
                       <li><a href="#">Twitter</a></li>
                       <li><a href="#">Bootstrap</a></li>
                       <li><a href="#">聯絡資訊</a></li>
                   </ul>
                </div>
                <div class="col-md-3">
                    <address>
                        <strong>某某股份有限公司</strong><br/>
                        地址第一行<br />
                        地址第二行<br />
                        <abbr title="Phone">TEL：</abbr>(02) 1234-5678
                    </address>
                </div>
            </footer>
        </div>
    </form>
</body>
</html>
