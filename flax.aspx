<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="flax.aspx.cs" Inherits="Linflax.index" Async="true"%>

<!DOCTYPE html> 

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <title>Linflax</title>
    <link rel="stylesheet" href="assets/vendors/iconfonts/mdi/css/materialdesignicons.min.css"/>
    <link rel="stylesheet" href="assets/vendors/iconfonts/ionicons/css/ionicons.css"/>
    <link rel="stylesheet" href="assets/vendors/iconfonts/typicons/src/font/typicons.css"/>
    <link rel="stylesheet" href="assets/vendors/iconfonts/flag-icon-css/css/flag-icon.min.css"/>
    <link rel="stylesheet" href="assets/vendors/css/vendor.bundle.base.css"/>
    <link rel="stylesheet" href="assets/vendors/css/vendor.bundle.addons.css"/>
    <link rel="stylesheet" href="assets/css/shared/style.css"/>
    <link rel="stylesheet" href="assets/css/flax/style.css"/>
    <link rel="shortcut icon" href="assets/images/favicon.png" />
  </head>
<body>
      <form id="form1" runat="server">
          <div class="container-scroller">
              <!-- partial:partials/_navbar.html -->
              <nav class="navbar default-layout col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
                  <div class="text-center navbar-brand-wrapper d-flex align-items-top justify-content-center">
                      <a class="navbar-brand brand-logo" href="index.html">
                          <img src="assets/images/linflax.png" alt="logo" />
                      </a>
                      <a class="navbar-brand brand-logo-mini" href="index.html">
                          <img src="assets/images/favicon.png" alt="logo" />
                      </a>
                  </div>
                  <div class="navbar-menu-wrapper d-flex align-items-center">
                      <h5><span class="text-muted d-block text-center text-sm-left d-sm-inline-block" id="date_txt" onclick="load()">Date: </span></h5>
                      <ul class="navbar-nav ml-auto">
                          <li class="nav-item dropdown">
                              <a class="nav-link count-indicator" id="notificationDropdown" href="#" data-toggle="dropdown">
                                  <i class="mdi mdi-bell-outline"></i>
                                  <span class="count bg-success" id="notification_count">3</span>
                              </a>
                              <div class="dropdown-menu dropdown-menu-right navbar-dropdown preview-list pb-0" aria-labelledby="notificationDropdown">
                                  <a class="dropdown-item py-3 border-bottom" href="#">
                                      <p class="mb-0 font-weight-medium float-left" id="notify">You have 3 new notifications </p>
                                      <span class="badge badge-pill badge-primary float-right">View all</span>
                                  </a>
                                  <a class="dropdown-item preview-item py-3">
                                      <div class="preview-thumbnail">
                                          <i class="mdi mdi-alert m-auto text-primary"></i>
                                      </div>
                                      <div class="preview-item-content">
                                          <h6 class="preview-subject font-weight-normal text-dark mb-1">Application Error</h6>
                                          <p class="font-weight-light small-text mb-0"> Just now </p>
                                      </div>
                                  </a>
                                  <a class="dropdown-item preview-item py-3">
                                      <div class="preview-thumbnail">
                                          <i class="mdi mdi-settings m-auto text-primary"></i>
                                      </div>
                                      <div class="preview-item-content">
                                          <h6 class="preview-subject font-weight-normal text-dark mb-1">Settings</h6>
                                          <p class="font-weight-light small-text mb-0"> Private message </p>
                                      </div>
                                  </a>
                                  <a class="dropdown-item preview-item py-3">
                                      <div class="preview-thumbnail">
                                          <i class="mdi mdi-airballoon m-auto text-primary"></i>
                                      </div>
                                      <div class="preview-item-content">
                                          <h6 class="preview-subject font-weight-normal text-dark mb-1">New user registration</h6>
                                          <p class="font-weight-light small-text mb-0"> 2 days ago </p>
                                      </div>
                                  </a>
                              </div>
                          </li>
                          <li class="nav-item dropdown d-none d-xl-inline-block user-dropdown">
                              <a class="nav-link dropdown-toggle" id="UserDropdown" href="#" data-toggle="dropdown" aria-expanded="false">
                                  <img class="img-xs rounded-circle" src="assets/images/faces/profile/user.png" alt="Profile image">
                              </a>
                              <div class="dropdown-menu dropdown-menu-right navbar-dropdown" aria-labelledby="UserDropdown">
                                  <div class="dropdown-header text-center">
                                      <img class="img-md rounded-circle" src="assets/images/faces/profile/user.png" alt="Profile image">
                                      <p class="mb-1 mt-3 font-weight-semibold">Tino</p>
                                      <p class="font-weight-light text-muted mb-0">tino@gmail.com</p>
                                  </div>
                                  <a class="dropdown-item" href="javascript:void(0)">Messages<span class="badge badge-pill badge-danger">1</span><i class="dropdown-item-icon ti-dashboard"></i></a>
                                  <a class="dropdown-item" href="javascript:void(0)">Lock Screen</a>
                                  <a class="dropdown-item" href="javascript:void(0)">Sign Out<i class="dropdown-item-icon ti-power-off"></i></a>
                              </div>
                          </li>
                      </ul>
                      <button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center" type="button" data-toggle="offcanvas">
                          <span class="mdi mdi-menu"></span>
                      </button>
                  </div>
              </nav>
              <!-- partial -->
              <div class="container-fluid page-body-wrapper">
                  <!-- partial:partials/_sidebar.html -->
                  <nav class="sidebar sidebar-offcanvas" id="sidebar">
                      <ul class="nav">
                          <li class="nav-item nav-profile">
                              <a href="#" class="nav-link">
                                  <div class="profile-image">
                                      <img class="img-xs rounded-circle" src="assets/images/faces/profile/user.png" alt="profile image">
                                      <div class="dot-indicator bg-success"></div>
                                  </div>
                                  <div class="text-wrapper">
                                      <p class="profile-name">Tino</p>
                                      <p class="designation">Trial Account</p>
                                  </div>
                              </a>
                          </li>
                          <li class="nav-item nav-category">Main Menu</li>
                          <li class="nav-item">
                              <a class="nav-link" href="index.html">
                                  <i class="menu-icon typcn typcn-document-text"></i>
                                  <span class="menu-title">Dashboard</span>
                              </a>
                          </li>

                           <li class="nav-item" runat="server" OnClick="ShowClasses">
                              <a class="nav-link" href="#">
                                  <i class="menu-icon typcn typcn-document-text"></i>
                                  <span class="menu-title">Classes</span>

                              </a>
                          </li>
                           <li class="nav-item">
                              <a class="nav-link" href="index.html">
                                  <i class="menu-icon typcn typcn-document-text"></i>
                                  <span class="menu-title">Tasks</span>
                              </a>
                          </li>
                          <li class="nav-item">
                              <a class="nav-link" href="pages/forms/basic_elements.html">
                                  <i class="menu-icon typcn typcn-shopping-bag"></i>
                                  <span class="menu-title">Announcements</span>
                              </a>
                          </li>
                          <li class="nav-item">
                              <a class="nav-link" data-toggle="collapse" href="#auth" aria-expanded="false" aria-controls="auth">
                                  <i class="menu-icon typcn typcn-document-add"></i>
                                  <span class="menu-title">Settings</span>
                                  <i class="menu-arrow"></i>
                              </a>
                              <div class="collapse" id="auth">
                                  <ul class="nav flex-column sub-menu">
                                      <li class="nav-item">
                                          <a class="nav-link" href="pages/samples/blank-page.html"> Linflax Settings </a>
                                      </li>
                                      <li class="nav-item">
                                          <a class="nav-link" href="pages/samples/login.html"> Reset Password </a>
                                      </li>
                                      <li class="nav-item">
                                          <a class="nav-link" href="pages/samples/register.html"> Disolve account </a>
                                      </li>
                                  </ul>
                              </div>
                          </li>
                          <li class="nav-item">
                              <a class="nav-link" href="pages/charts/chartjs.html">
                                  <i class="menu-icon typcn typcn-th-large-outline"></i>
                                  <span class="menu-title">Help & Support</span>
                              </a>
                          </li>
                          <li class="nav-item">
                              <a class="nav-link" href="pages/tables/basic-table.html">
                                  <i class="menu-icon typcn typcn-bell"></i>
                                  <span class="menu-title">Report a problem</span>
                              </a>
                          </li>
                          <li class="nav-item">
                              <a class="nav-link" href="pages/icons/font-awesome.html">
                                  <i class="menu-icon typcn typcn-user-outline"></i>
                                  <span class="menu-title">About Linflax</span>
                              </a>
                          </li>
                      </ul>
                  </nav>
                  <!-- DASHBOARD START -->
                      <asp:Panel  ID="Dashboard" class="main-panel" OnClick="MyClick">
                      <div class="content-wrapper">
                          <!-- Page Title Header Starts-->
                          <div class="row page-title-header">
                              <div class="col-12">
                                  <div class="page-header">
                                      <h4><asp:Label runat="server" CssClass="page-title" Text="Dashbord" ID="Title">
                                      </asp:Label></h4>
                                  </div>
                              </div>
                          </div>
                          <!-- Page Title Header Ends-->
                          <div class="row">
                              <div class="col-md-12 grid-margin">
                                  <div class="card">
                                      <div class="card-body">
                                          <div class="row">
                                              <div class="col-lg-3 col-md-6">
                                                  <div class="d-flex">
                                                      <div class="wrapper">
                                                          <h3 class="mb-0 font-weight-semibold">0</h3>
                                                          <h5 class="mb-0 font-weight-medium text-primary">Completed Tasks</h5>
                                                      </div>
                                                      
                                                  </div>
                                              </div>
                                              <div class="col-lg-3 col-md-6 mt-md-0 mt-4">
                                                  <div class="d-flex">
                                                      <div class="wrapper">
                                                          <h3 class="mb-0 font-weight-semibold">0</h3>
                                                          <h5 class="mb-0 font-weight-medium text-primary">Announcements</h5>
                                                      </div>
                                                      
                                                  </div>
                                              </div>
                                              <div class="col-lg-3 col-md-6 mt-md-0 mt-4">
                                                  <div class="d-flex">
                                                      <div class="wrapper">
                                                          <h3 class="mb-0 font-weight-semibold">0</h3>
                                                          <h5 class="mb-0 font-weight-medium text-primary">Students</h5>
                                                      </div>
                                                      
                                                  </div>
                                              </div>
                                              <div class="col-lg-3 col-md-6 mt-md-0 mt-4">
                                                  <div class="d-flex">
                                                      <div class="wrapper">
                                                          <h3 class="mb-0 font-weight-semibold">0</h3>
                                                          <h5 class="mb-0 font-weight-medium text-primary">Uploads</h5>
                                                      </div>
                                                      
                                                  </div>
                                              </div>
                                          </div>
                                      </div>
                                  </div>
                              </div>
                          </div>
                          <div class="row">
                              <div class="col-md-12">
                                  <div class="row">
                                      <div class="col-md-12 grid-margin">
                                          <div class="card">
                                              <div class="card-body">
                                                  <div class="d-flex justify-content-between">
                                                      <h4 class="card-title mb-0">Features</h4>
                                                  </div>
                                                  <p>Have a look of Linflax's features you have in your package</p>
                                                  <div class="table-responsive">
                                                      <table class="table table-striped table-hover">
                                                          <thead>
                                                              <tr>
                                                                  <th>Feature</th>
                                                                  <th>Status</th>
                                                                  <th>Activation date</th>
                                                                  <th>Expiry date</th>
                                                                  <th>Mode</th>
                                                              </tr>
                                                          </thead>
                                                          <tbody>
                                                              <tr>
                                                                  <td>Citation</td>
                                                                  <td>Active</td>
                                                                  <td>01 January 2020</td>
                                                                  <td>31 Dec 2020</td>
                                                                  <td>Trial</td>
                                                              </tr>
                                                          </tbody>
                                                      </table>
                                                  </div>
                                              </div>
                                          </div>
                                      </div>
                                  </div>
                              </div>
                          </div>
                          <div class="row">
                              <div class="col-md-4 grid-margin stretch-card">
                                  <div class="card">
                                      <div class="card-body">
                                          <h4 class="card-title mb-0">Recent News</h4>
                                          <div class="d-flex py-2 border-bottom">
                                              <div class="wrapper">
                                                  <small class="text-muted">Mar 20, 2020</small>
                                                  <p class="font-weight-semibold text-gray mb-0">
                                                      <h5>
                                                          Assemble team
                                                      </h5>
                                                  </p>
                                              </div>
                                          </div>
                                          <div class="d-flex py-2 border-bottom">
                                              <div class="wrapper">
                                                  <small class="text-muted">Mar 20, 2020</small>
                                                  <p class="font-weight-semibold text-gray mb-0">
                                                      <h5>
                                                          Assemble team
                                                      </h5>
                                                  </p>
                                              </div>
                                          </div>
                                          <a class="d-block mt-5" href="#">Details</a>
                                      </div>
                                  </div>
                              </div>
                              <div class="col-md-4 grid-margin stretch-card">
                                  <div class="card">
                                      <div class="card-body">
                                          <div class="d-flex justify-content-between pb-3">
                                              <h4 class="card-title mb-0">My activity</h4>
                                              <p class="mb-0 text-muted">Showing last 5 activities</p>
                                          </div>
                                          <ul class="timeline">
                                              <li class="timeline-item">
                                                  <p class="timeline-content">Harvard Citation</p>
                                                  <p class="event-time">24 min</p>
                                              </li>
                                              <li class="timeline-item">
                                                  <p class="timeline-content">Harvard Citation</p>
                                                  <p class="event-time">24 min</p>
                                              </li>
                                              <li class="timeline-item">
                                                  <p class="timeline-content">Harvard Citation</p>
                                                  <p class="event-time">24 min</p>
                                              </li>
                                              <li class="timeline-item">
                                                  <p class="timeline-content">Harvard Citation</p>
                                                  <p class="event-time">24 min</p>
                                              </li>
                                              <li class="timeline-item">
                                                  <p class="timeline-content">Harvard Citation</p>
                                                  <p class="event-time">24 min</p>
                                              </li>
                                          </ul>
                                      </div>
                                  </div>
                              </div>
                              <div class="col-md-4 grid-margin stretch-card">
                                  <div class="card">
                                      <div class="card-body">
                                          <h4 class="card-title mb-0">More from SynBlend</h4>
                                          <div class="table-responsive">
                                              <table class="table table-stretched">
                                                  <thead>
                                                      <tr>
                                                          <th>Product</th>
                                                          <th>Price</th>
                                                          <th>Downloads</th>
                                                      </tr>
                                                  </thead>
                                                  <tbody>
                                                      <tr>
                                                          <td>
                                                              <p class="mb-1 text-dark font-weight-medium">SNB</p><small class="font-weight-medium">-</small>
                                                          </td>
                                                          <td class="font-weight-medium">R0</td>
                                                          <td class="font-weight-medium">-</td>
                                                      </tr>
                                                      <tr>
                                                          <td>
                                                              <p class="mb-1 text-dark font-weight-medium">SNB</p><small class="font-weight-medium">-</small>
                                                          </td>
                                                          <td class="font-weight-medium">R0</td>
                                                          <td class="font-weight-medium">-</td>
                                                      </tr>
                                                      <tr>
                                                          <td>
                                                              <p class="mb-1 text-dark font-weight-medium">SNB</p><small class="font-weight-medium">-</small>
                                                          </td>
                                                          <td class="font-weight-medium">R0</td>
                                                          <td class="font-weight-medium">-</td>
                                                      </tr>
                                                      <tr>
                                                          <td>
                                                              <p class="mb-1 text-dark font-weight-medium">SNB</p><small class="font-weight-medium">-</small>
                                                          </td>
                                                          <td class="font-weight-medium">R0</td>
                                                          <td class="font-weight-medium">-</td>
                                                      </tr>
                                                  </tbody>
                                              </table>
                                          </div>
                                          <a class="d-block mt-3" href="#">Show all</a>
                                      </div>
                                  </div>
                              </div>
                          </div>
                      </div>
                      <!-- content-wrapper ends -->
                      <!-- partial:partials/_footer.html -->
                      <footer class="footer text-center">
                          <div class="container-fluid clearfix">
                              <h7><span class="text-muted d-block text-center text-sm-left d-sm-inline-block">Copyright © 2020 <a href="https://synblend.com" target="_blank">SynBlend</a>. All rights reserved.</span></h7>
                          </div>
                      </footer>
                      <!-- partial -->
                  </asp:Panel>
                  <!-- DASHBOARD END -->
                  <%-- =============================================================================================================== --%>
                  <%-- CLASSES START --%>
                  <asp:Panel runat="server" Visible="false" ID="Classes" CssClass="main-panel">
                      <div class="content-wrapper">
                          <!-- Page Title Header Starts-->
                          <div class="row page-title-header">
                              <div class="col-12">
                                  <div class="page-header">
                                      <h4><asp:Label runat="server" CssClass="page-title" Text="Classes">
                                      </asp:Label></h4>
                                  </div>
                              </div>
                          </div>
                          <!-- Page Title Header Ends-->

                      </div>
                      <!-- content-wrapper ends -->
                      <!-- partial:partials/_footer.html -->
                      <footer class="footer text-center">
                          <div class="container-fluid clearfix">
                              <h7><span class="text-muted d-block text-center text-sm-left d-sm-inline-block">Copyright © 2020 <a href="https://synblend.com" target="_blank">SynBlend</a>. All rights reserved.</span></h7>
                          </div>
                      </footer>
                      <!-- partial -->
                  </asp:Panel>
                  
                  <%-- CLASSES END --%>
              </div>
              <!-- page-body-wrapper ends -->
          </div>
          <!-- container-scroller -->
          <!-- plugins:js -->
          <script src="assets/vendors/js/vendor.bundle.base.js"></script>
          <script src="assets/vendors/js/vendor.bundle.addons.js"></script>
          <!-- endinject -->
          <!-- Plugin js for this page-->
          <!-- End plugin js for this page-->
          <!-- inject:js -->
          <script src="assets/js/shared/off-canvas.js"></script>
          <script src="assets/js/shared/misc.js"></script>
          <!-- endinject -->
          <!-- Custom js for this page-->
          <script src="assets/js/flax/dashboard.js"></script>
          <!-- End custom js for this page-->
      </form>
    
</body>
</html>
