<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default002_Table.aspx.cs" Inherits="Default002_Table" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <!--BootStrap-->
    <link href="Content/bootstrap.css" rel="stylesheet" />

    <script src="Scripts/jquery-3.0.0.js"></script>
    <script src="Scripts/bootstrap.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="table-responsive">
            <!--table-->
            <table class="table table-warning table-hover">
                <caption>peggy.liou：BootStrap_Table<br />
                    備註：20200527更新</caption>
                <thead>
                    <!--標題-->
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">First</th>
                        <th scope="col">Second</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <th scope="row">1</th>
                        <td>A</td>
                        <td>B</td>
                    </tr>
                    <tr>
                        <th scope="row">2</th>
                        <td>C</td>
                        <td>D</td>
                    </tr>
                    <tr>
                        <th scope="row">3</th>
                        <td>E</td>
                        <td>F</td>
                    </tr>
                </tbody>
            </table>
        </div>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
