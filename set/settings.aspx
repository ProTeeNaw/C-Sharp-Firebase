<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="settings.aspx.cs" Inherits="Linflax.settings" Async="true"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <!--===============================================================================================-->
    <link rel="icon" type="image/png" href="../ext/assets/images/favicon.png" />
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="../ext/vendor/bootstrap/css/bootstrap.min.css"/>
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="../ext/fonts/font-awesome-4.7.0/css/font-awesome.min.css"/>
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="../ext/fonts/Linearicons-Free-v1.0.0/icon-font.min.css"/>
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="../ext/vendor/animate/animate.css"/>
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="../ext/vendor/css-hamburgers/hamburgers.min.css"/>
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="../ext/vendor/animsition/css/animsition.min.css"/>
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="../ext/vendor/select2/select2.min.css"/>
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="../ext/vendor/daterangepicker/daterangepicker.css"/>
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="../ext/css/util.css"/>
    <link rel="stylesheet" type="text/css" href="../ext/css/main.css"/>
    <link rel="stylesheet" type="text/css" href="../ext/css/extra.css"/>
    <!--===============================================================================================-->
    <link rel="stylesheet" href="../ext/assets/web/assets/mobirise-icons/mobirise-icons.css"/>
    <link rel="stylesheet" href="../ext/assets/bootstrap/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="../ext/assets/bootstrap/css/bootstrap-grid.min.css"/>
    <link rel="stylesheet" href="../ext/assets/bootstrap/css/bootstrap-reboot.min.css"/>
    <link rel="stylesheet" href="../ext/assets/tether/tether.min.css"/>
    <link rel="stylesheet" href="../ext/assets/dropdown/css/style.css"/>
    <link rel="stylesheet" href="../ext/assets/theme/css/style.css"/>
    <link rel="preload" as="style" href="../ext/assets/mobirise/css/mbr-additional.css"/>
    <link rel="stylesheet" href="../ext/assets/mobirise/css/mbr-additional.css" type="text/css"/>

    <link rel="stylesheet" href="../ext/css/wickedcss.min.css" type="text/css"/>
</head>
<body>
    <form id="form1" runat="server">
         <div class="limiter">

        <div class="container-login100" style="background-image: url('../ext/images/bg-01.png'); background-attachment: fixed; background-position: center; background-repeat: no-repeat; background-size: cover; background-color: rgba(0,0,0,0.5);">
            <section class="menu cid-s3lg8rJxfB" once="menu" id="menu2-3">



                <nav class="navbar navbar-expand beta-menu navbar-dropdown align-items-center navbar-fixed-top navbar-toggleable-sm bg-color transparent">
                    <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <div class="hamburger">
                            <span></span>
                            <span></span>
                            <span></span>
                            <span></span>
                        </div>
                    </button>
                    <div class="menu-logo">
                        <div class="navbar-brand">
                            <span class="navbar-logo">
                                <a href="https://linflax.synblend.com">
                                    <img src="../assets/images/favicon.png" alt="SynBlend" title="" style="height: 3.8rem;" class="" id="image"/>
                                </a>
                            </span>
                            <span class="navbar-caption-wrap"><a class="navbar-caption text-white display-7" href="https://linflax.synblend.com/settings/">Linflax | Settings</a></span>
                        </div>
                    </div>
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav nav-dropdown" data-app-modern-menu="true">
                            <li class="nav-item">
                                <a class="nav-link link text-white display-7" href="https://app.linflax.synblend.com">Application</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link link text-white display-7" href="javascipt:void(0)" id="settings">Referencing</a>
                            </li>
                            <li class="nav-item"><a class="nav-link link text-white display-7" href="https://mobirise.co" id="help">Price Plan</a></li>
                            <li class="nav-item">
                                <a class="nav-link link text-white display-4" href="https://mobirise.co" id="docs">
                                    Help
                                </a>
                            </li>
                        </ul>
                        <div class="navbar-buttons mbr-section-btn">
                            <asp:Label runat="server" CssClass="btn btn-sm btn-danger display-7" Text="" ID="Username">
                            </asp:Label>
                        </div>
                    </div>
                </nav>
            </section>

            <asp:Panel runat="server" class="wrap-login100 p-l-110 p-r-110 p-t-62 p-b-50 zoomer" style="margin-top: 100px" ID="Varsities">
                <div class="login100-form validate-form flex-sb flex-w">
                    <span class="login100-form-title p-b-53">
                        Select your institution
                    </span>

                    <div class="container align-center">
                        <a data-app-prevent-settings="" class="carousel-control carousel-control-prev" role="button" data-slide="prev" href="#slider2-3"><span aria-hidden="true" class="mbri-left mbr-iconfont"></span><span class="sr-only">Previous</span></a>
                        <div class="row justify-content-md-center">
                            <div class="mbr-white col-md-10">
                                <div class="mbr-section-btn">
                                    <a class="btn btn-md btn-primary-outline display-7" onserverclick="GetUCT" runat="server">UCT</a>
                                    <a class="btn btn-md btn-success-outline display-7" onserverclick="GetUFH" runat="server">UFH</a>
                                    <a class="btn btn-md btn-info-outline display-7" onserverclick="GetUFS" runat="server">UFS</a>
                                    <a class="btn btn-md btn-warning-outline display-7" onserverclick="GetUKZN" runat="server">UKZN</a>
                                    <a class="btn btn-md btn-secondary-outline display-7" onserverclick="GetUL" runat="server">UL</a>
                                    <a class="btn btn-md btn-success-outline display-7" onserverclick="GetNWU" runat="server">NWU</a>
                                    <a class="btn btn-md btn-info-outline display-7" onserverclick="GetUP" runat="server">UP</a>
                                    <a class="btn btn-md btn-warning-outline display-7" onserverclick="GetRU" runat="server">RU</a>
                                    <a class="btn btn-md btn-secondary-outline display-7" onserverclick="GetSMU" runat="server">SMU</a>
                                    <a class="btn btn-md btn-primary-outline display-7" onserverclick="GetSUN" runat="server">SUN</a>
                                    <a class="btn btn-md btn-info-outline display-7" onserverclick="GetUWC" runat="server">UWC</a>
                                    <a class="btn btn-md btn-warning-outline display-7" onserverclick="GetWITS" runat="server">WITS</a>
                                    <a class="btn btn-md btn-secondary-outline display-7" onserverclick="GetUJ" runat="server">UJ</a>
                                    <a class="btn btn-md btn-primary-outline display-7" onserverclick="GetNMU" runat="server">NMU</a>
                                    <a class="btn btn-md btn-success-outline display-7" onserverclick="GetUNISA" runat="server">UNISA</a>
                                    <a class="btn btn-md btn-warning-outline display-7" onserverclick="GetUV" runat="server">UV</a>
                                    <a class="btn btn-md btn-secondary-outline display-7" onserverclick="GetWSU" runat="server">WSU</a>
                                    <a class="btn btn-md btn-primary-outline display-7" onserverclick="GetUZ" runat="server">UZ</a>
                                    <a class="btn btn-md btn-success-outline display-7" onserverclick="GetCPUT" runat="server">CPUT</a>
                                    <a class="btn btn-md btn-info-outline display-7" onserverclick="GetCUT" runat="server">CUT</a>
                                    <a class="btn btn-md btn-secondary-outline display-7" onserverclick="GetDUT" runat="server">DUT</a>
                                    <a class="btn btn-md btn-primary-outline display-7" onserverclick="GetMUT" runat="server">MUT</a>
                                    <a class="btn btn-md btn-success-outline display-7" id="um" onserverclick="GetUM" runat="server">UM</a>
                                    <a class="btn btn-md btn-info-outline display-7" onserverclick="GetSPU" runat="server">SPU</a>
                                    <a class="btn btn-md btn-warning-outline display-7" onserverclick="GetTUT" runat="server">TUT</a>
                                    <a class="btn btn-md btn-info-outline display-7" onserverclick="GetVUT" runat="server">VUT</a>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="w-full text-center p-t-55 zoomer">
                        <span class="txt2">
                            Current Institution: 
                        </span>
                        <span class="txt5">
                            <asp:Label runat="server" Text="Current Vars goes here">
                            </asp:Label>
                        </span>
                    </div>
                </div>
            </asp:Panel>
            <asp:Panel runat="server" class="wrap-login100 p-l-110 p-r-110 p-t-62 p-b-50 zoomer" style="margin-top: 100px" Visible="false" ID="ReferencePanel">
                <div class="login100-form validate-form flex-sb flex-w">
                    <span class="login100-form-title p-b-53 zoomer">
                        Select your referencing style
                    </span>

                    <div class="login100-form validate-form flex-sb flex-w" id="varsity_panel">
                        <!--Institutions Begin-->
                        <asp:Label runat="server" class="txt1 p-b-11" ID="VarsName" Text=""></asp:Label>
                        <div class="wrap-input100 validate-input m-b-36">
                            <asp:DropDownList runat="server" class="input100" ID="RefStyle"></asp:DropDownList>
                            <span class="focus-input100"></span>
                        </div>

                        <!--Institutions End-->

                        <div class="w-full text-center">
                            <div class="navbar-buttons mbr-section-btn">
                            <a class="btn btn-sm btn-danger display-7">

                                SAVE
                            </a>
                        </div>

                        </div>
                    </div>
                </div>
            </asp:Panel>
        </div>

         </div>

    <!--===============================================================================================-->
    <script src="../ext/vendor/jquery/jquery-3.2.1.min.js"></script>
    <!--===============================================================================================-->
    <script src="../ext/vendor/animsition/js/animsition.min.js"></script>
    <!--===============================================================================================-->
    <script src="../ext/vendor/bootstrap/js/popper.js"></script>
    <script src="../ext/vendor/bootstrap/js/bootstrap.min.js"></script>
    <!--===============================================================================================-->
    <script src="../ext/vendor/select2/select2.min.js"></script>
    <!--===============================================================================================-->
    <script src="../ext/vendor/daterangepicker/moment.min.js"></script>
    <script src="../ext/vendor/daterangepicker/daterangepicker.js"></script>
    <!--===============================================================================================-->
    <script src="../ext/vendor/countdowntime/countdowntime.js"></script>
    <!--===============================================================================================-->
    <script src="../ext/assets/web/assets/jquery/jquery.min.js"></script>
    <script src="../ext/assets/popper/popper.min.js"></script>
    <script src="../ext/assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="../ext/assets/tether/tether.min.js"></script>
    <script src="../ext/assets/smoothscroll/smooth-scroll.js"></script>
    <script src="../ext/assets/dropdown/js/nav-dropdown.js"></script>
    <script src="../ext/assets/dropdown/js/navbar-dropdown.js"></script>
    <script src="../ext/assets/touchswipe/jquery.touch-swipe.min.js"></script>
    <script src="../ext/assets/parallax/jarallax.min.js"></script>
    <script src="../ext/assets/theme/js/script.js"></script>
    <script src="../ext/js/main.js"></script>
    </form>
</body>
</html>
