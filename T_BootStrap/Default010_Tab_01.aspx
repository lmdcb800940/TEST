<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default010_Tab_01.aspx.cs" Inherits="T_BootStrap_Default010_Tab_01" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <script src="../Scripts/jquery-3.5.1.min.js"></script>
    <script src="../Scripts/bootstrap.bundle.min.js"></script>
</head>
<body>
    <p>
        BootStrap
            <br />
        <br />
        Tab<br />
        <br />
        參考書籍：響應式網頁設計驚嘆號
    </p>
    <p>
        &nbsp;
    </p>
    <p>
        &nbsp;
    </p>
    <form id="form1" runat="server">
        <div>
            <ul id="clothingnav1" class="nav nav-tabs" role="tablist">
                <li class="nav-item"><a class="nav-link active" href="#home1" id="hometab1" role="tab" data-toggle="tab" aria-controls="home" aria-expanded="true">tab 1</a></li>
                <li class="nav-item"><a class="nav-link" href="#paneTwo1" id="hatstab1" role="tab" data-toggle="tab" aria-controls="hats" aria-expanded="true">tab 2</a></li>
                <li class="nav-item"><a class="nav-link" href="#paneThree1" id="hatstab2" role="tab" data-toggle="tab" aria-controls="hats" aria-expanded="true">tab 3</a></li>
                <!-- Dropdown -->
                <li class="nav-item dropdown"><a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">tab3 dropdown</a>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="#tabDropdownOne1" role="tab" id="dropdownshoestab1" data-toggle="tab" aria-controls="dropdownshoes">Dropdown Link1</a>
                        <a class="dropdown-item" href="#tabDropdownTwo1" role="tab" id="dropdownbootstab1" data-toggle="tab" aria-controls="dropdownBoots">DropDown Link 2</a>
                    </div>
                </li>


                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">Tab 4 DropDown</a>
                <div class="dropdown-menu">
                    <a class="dropdown-item" href="#tabDropDownOne2" role="tab" id="dropdownshoestab2" data-toggle="tab" aria-controls="dropdownShoes">DropDown Link 1</a>
                    <a class="dropdown-item" href="#tabDropDownTwo2" role="tab" id="dropdownbootstab2" data-toggle="tab" aria-controls="dropdownBoots">DropDown Link 2</a>
                    <a class="dropdown-item" href="#tabDropDownThree2" role="tab" id="dropdownbootstab3" data-toggle="tab" aria-controls="dropdownBoots">DropDown Link 3</a>
                </div>
                </li>
            </ul>
            <!-- content panel -->
            <div id="clothingnavcontent1" class="tab-content">
                <div role="tabpanel" class=" tab-pane fade show active" id="home1" aria-labelledby="hometab1">
                    <p>Content in <b>Tab Panel 1</b></p>
                </div>
                <div role="tabpanel" class=" tab-pane fade" id="paneTwo1" aria-labelledby="hatstab1">
                    <p>Content 2</p>
                </div>
                <div role="tabpanel" class=" tab-pane fade" id="paneThree1" aria-labelledby="hatstab2">
                    <p>Content 3</p>
                </div>
                <div role="tabpanel" class=" tab-pane fade" id="tabDropdownOne1" aria-labelledby="dropdownshoestab1">
                    <p>Dropdown content #1</p>
                </div>
                <div role="tabpanel" class=" tab-pane fade" id="tabDropdownTwo1" aria-labelledby="dropdownbootstab1">
                    <p>Dropdown content #2</p>
                </div>
                <div role="tabpanel" class="tab-pane fade" id="tabDropDownOne2" aria-labelledby="dropdownshoestab2">
                    <p>Dropdown content#2-1</p>
                </div>
                <div role="tabpanel" class="tab-pane fade" id="tabDropDownTwo2" aria-labelledby="dropdownbootstab2">
                    <p>Dropdown content#2-2</p>
                </div>
                <div role="tabpanel" class="tab-pane fade" id="tabDropDownThree2" aria-labelledby="dropdownbootstab3">
                    <p>Dropdown content#2-3</p>
                </div>
             </div>
        </div>
    </form>
</body>
</html>
