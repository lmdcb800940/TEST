<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default007_Text_01.aspx.cs" Inherits="T_BootStrap_Default007_Text_01" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <script src="../Scripts/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            BootStrap<br />
            <br />
            設定文字屬性<br />
            <br />
            參考書籍：響應式網頁設計驚嘆號
            <br />
            <br />
            <p class=" text-info">---文字屬性--- </p>
            <p class="font-weight-bold">Bold text</p>
            <p class="font-weight-normal">Normal weight text</p>
            <p class="font-weight-light">Light weight text</p>
            <p class="font-italic">Italic text</p>
            <br />
            <br />
            <p class=" text-info">---凸顯段落：讓某段落突出顯示(減少縮排)---</p>
            <p class="lead">Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolod auctor.</p>
            <br />
            <br />
            <p class=" text-info">---英文大小寫轉換---</p>
            <p class="text-lowercase">Lowercased text.</p>
            <p class="text-uppercase">Uppercased text.</p>
            <p class="text-capitalize">CapiTaliZed Text.</p>
            <br />
            <br />
            <p class=" text-info">---中斷換行---</p>
            <div class="container border text-left">
                <div class="text-nowrap bg-info" style="width: 200px">
                    This text should overflow the parent.
                </div>
            </div>
            <br />
            <br />
            <p class=" text-info">---截去文字：對於更長的文字段落，控制顯示字數或僅以單行顯示，截去多於文字改以...顯示---</p>
            <div class="container border text-left">
                <div class="text-nowrap bg-info" style="width: 200px">
                    This text should overflow the paren.
                </div>
                <br />
                <!--block level-->
                <div class="row">
                    <div class="col-2 bg-warning text-truncate">
                        Praeterea iter est quasdam res quas ex communi.
                    </div>
                </div>
                <br />
                <!--Inline level-->
                <span class="bg-secondary d-inline-block text-truncate" style="width: 150px">Praeterea iter est quasdam res quas ex communi.
                </span>
            </div>
            <br />
            <br />
            <p class=" text-info">---加大尺寸標題---</p>
            <h1 class="display-1">Display1</h1>
            <h1 class="display-2">Display2</h1>
            <h1 class="display-3">Display3</h1>
            <h1 class="display-4">Display4</h1>
            <br />
            <br />
            <p class=" text-info">---邊界與間距---(Page123有說明)</p>
            <p class="lead bg-warning my-2 px-5 py-3 text-justify text-center">
                Vivamus sagittis lacus vel auage laoreet rutrum faucibus dolor auctor.
                scroll this section and look at the navigation bar while scrolling! Try navigation bar while scrolling!
            </p>
        </div>
    </form>
</body>
</html>
