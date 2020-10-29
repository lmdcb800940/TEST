<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default002_Table_02.aspx.cs" Inherits="T_BootStrap_Default002_Table_02" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
      <%--需用拖曳方式--%>
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <script src="../Scripts/bootstrap.min.js"></script>
    <script src="../Scripts/jquery-3.0.0.min.js"></script>

    <%-- 作用在於文字編碼，改善行動裝置上的顯示效果 --%>
    <%-- 其中viewport與手機優先理念有關，能確保網頁正確顯示手機上 --%>
    <%-- content加入user-scalable=no設定關閉縮放功能，使用者只能捲動網頁瀏覽 --%>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatiible" content="IE=edge" />
    <meta name="viewport" content="width=device-width,initial-scale=1" />
    
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <%-- 這是一個3欄8列的表格 --%>
            <div class="row">
                <div class="col-md-10 col-md-offset-1">
                    <table class="table-striped table-bordered table-hover">
                        <thead>
                            <tr>
                                <th class="success">
                                    <h4 class="text-center">免費方案</h4>
                                </th>
                                <th class="info">
                                    <h4 class="text-center">標準方案</h4>
                                </th>
                                <th class="danger">
                                    <h4 class="text-center">豪華方案</h4>
                                </th>
                            </tr>
                        </thead>

                        <tbody>
                            <tr>
                                <td>
                                    <h3 class="text-center">$0</h3>
                                </td>
                                <td>
                                    <h3>$99</h3>
                                </td>
                                <td>
                                    <h3>$999</h3>
                                </td>
                            </tr>
                            <tr>
                                <td>亂數假文</td>
                                <td>亂數假文</td>
                                <td>亂數假文</td>
                            </tr>
                              <tr>
                                <td>亂數假文</td>
                                <td>亂數假文</td>
                                <td>亂數假文</td>
                            </tr>
                              <tr>
                                <td>亂數假文</td>
                                <td>亂數假文</td>
                                <td>亂數假文</td>
                            </tr>
                              <tr>
                                <td>-</td>
                                <td>亂數假文</td>
                                <td>亂數假文</td>
                            </tr>
                              <tr>
                                <td>-</td>
                                <td>-</td>
                                <td>亂數假文</td>
                            </tr>
                             <tr>
                                <td><a href="#" class="btn btn-success btn-block">購買</a></td>
                                <td><a href="#" class="btn btn-info btn-block">購買</a></td>
                                <td><a href="#" class="btn btn-danger btn-block">購買</a></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>

        </div>
    </form>
</body>
</html>
