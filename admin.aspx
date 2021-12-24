<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="Linflax.admin" %>

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
<%--    <link rel="stylesheet" href="assets/css/flax/login-reg.css"/>--%>
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
                          <li class="nav-item nav-category" id="dash">Main Menu</li>
                          <li class="nav-item">
                              <a class="nav-link" href="index.html">
                                  <i class="menu-icon typcn typcn-document-text"></i>
                                  <span class="menu-title">Dashboard</span>
                              </a>
                          </li>

                           <li class="nav-item" id="educators">
                              <a class="nav-link" href="#">
                                  <i class="menu-icon typcn typcn-document-text"></i>
                                  <span class="menu-title">Educators</span>
                              </a>
                          </li>
                           <li class="nav-item" id="registration">
                              <a class="nav-link" href="#">
                                  <i class="menu-icon typcn typcn-document-text"></i>
                                  <span class="menu-title">Registration</span>
                              </a>
                          </li>
                          <li class="nav-item" id="report">
                              <a class="nav-link" href="#">
                                  <i class="menu-icon typcn typcn-shopping-bag"></i>
                                  <span class="menu-title">Report Generation</span>
                              </a>
                          </li>

                          <li class="nav-item" id="subjects">
                              <a class="nav-link" href="#">
                                  <i class="menu-icon typcn typcn-shopping-bag"></i>
                                  <span class="menu-title">Add / Drop Subjects</span>
                              </a>
                          </li>

                          <li class="nav-item" id="announcement">
                              <a class="nav-link" href="#">
                                  <i class="menu-icon typcn typcn-shopping-bag"></i>
                                  <span class="menu-title">Add Announcement</span>
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
                      <div id="Dashboard" class="main-panel" style="display: block; visibility: visible">
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
                  </div>
                  <!-- DASHBOARD END -->
                  <%-- =============================================================================================================== --%>
                  <%-- Educators Panel START --%>
                  <div id="EducatorsPanel" class="main-panel" style="display: none; visibility: hidden">
                      <div class="content-wrapper">
                          <!-- Page Title Header Starts-->
                          <div class="row page-title-header">
                              <div class="col-12">
                                  <div class="page-header">
                                      <h4><asp:Label runat="server" CssClass="page-title" Text="Educators">
                                      </asp:Label></h4>
                                  </div>

                              </div>
                               
                          </div>
                          <!-- Page Title Header Ends-->
                          <div class="col-lg-12 stretch-card">
                <div class="card" style="width:100%">
                  <div class="card-body">
                       <div style="width:100%">
                              <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="true" CellPadding="10" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="354px"  Class="table table-hover">

                              <AlternatingRowStyle BackColor="White" />
                              <Columns>
                                  <asp:BoundField DataField="Name" HeaderText="NAME" SortExpression="Name" />
                                  <asp:BoundField DataField="Surname" HeaderText="SURNAME" SortExpression="Surname" />
                                  <asp:BoundField DataField="Email_Address" HeaderText="EMAIL ADDRESS" SortExpression="Email_Address" />
                                  <asp:BoundField DataField="Phone" HeaderText="PHONE" SortExpression="Phone" />
                                  <asp:BoundField DataField="DateRegistered" HeaderText="DATE REGISTERED" SortExpression="DateRegistered" />
                                  <asp:BoundField DataField="Class" HeaderText="Class" SortExpression="Class" />
                                  <asp:BoundField DataField="LastLogin" HeaderText="LAST LOGIN" SortExpression="LastLogin" />
                              </Columns>
                              <EditRowStyle BackColor="#2461BF" />
                              <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                              <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                              <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                              <RowStyle BackColor="#EFF3FB" />
                              <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                              <SortedAscendingCellStyle BackColor="#F5F7FB" />
                              <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                              <SortedDescendingCellStyle BackColor="#E9EBEF" />
                              <SortedDescendingHeaderStyle BackColor="#4870BE" />

                          </asp:GridView>
                          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT [Name], [Surname], [Email Address] AS Email_Address, [Phone], [DateRegistered], [Class], [LastLogin] FROM [Teachers]"></asp:SqlDataSource>
                          <asp:SqlDataSource ID="EducatorsDB" runat="server"></asp:SqlDataSource>
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
                  </div>
                  
                  <%-- Educators Panel END--%>

                  <%-- REGISTRATION PANEL --%>
                  <div id="RegistrationPanel" class="main-panel" style="display: none; visibility: hidden">
                      <div class="content-wrapper">
                          <!-- Page Title Header Starts-->
                          <div class="row page-title-header">
                              <div class="col-12">
                                  <div class="page-header">
                                      <h4><asp:Label runat="server" CssClass="page-title" Text="Registration">
                                      </asp:Label></h4>
                                  </div>

                              </div> 
                          </div>
                          <!-- Page Title Header Ends-->

                          <div class="row">
                              <div class="col-md-6 grid-margin stretch-card">
                <div class="card">
                  <div class="card-body">
                    <h4 class="card-title">Educators</h4>
                    <p class="card-description"> Add aducator </p>
                    <div class="forms-sample">
                      <div class="form-group">
                        <label for="exampleInputName1">Title</label>
                        <input type="text" class="form-control" id="exampleInputName1" placeholder="Mr, Mrs, Miss, Dr, Prof">
                      </div>
                      <div class="form-group">
                        <label for="exampleInputEmail3">Initials</label>
                        <input type="email" class="form-control" id="exampleInputEmail3" placeholder="TJ">
                      </div>
                      <div class="form-group">
                        <label for="exampleInputPassword4">Surname</label>
                        <input type="text" class="form-control" id="exampleInputPassword4" placeholder="Doe">
                      </div>
                      <div class="form-group">
                        <label for="exampleInputCity1">Subject by grade</label>
                        <select class="form-control">
                                <option>Grade 1</option>
                                <option>Grade 2</option>
                                <option>Grade 3</option>
                                <option>Grade 4</option>
                                <option>Grade 5</option>
                                <option>Grade 6</option>
                                <option>Grade 7</option>
                                <option>Grade 8</option>
                                <option>Grade 9</option>
                                <option>Grade 10</option>
                                <option>Grade 11</option>
                                <option>Grade 12</option>
                              </select>
                      </div>
                      <div class="form-group">
                        <label for="exampleTextarea1">Selected Subjects</label>
                          <div>
                              <asp:ListBox runat="server" ID="SelectedSubjectsList" CssClass="form-control"></asp:ListBox>
                            </div>
                        
                      </div>
                      <button type="button" class="btn btn-success mr-2">Submit</button>
                      <button class="btn btn-light">Cancel</button>
                    </div>
                  </div>
                </div>
              </div>
                              <%-- GRADE 1 START --%>
                               <div class="col-md-6 grid-margin stretch-card" id="grade1Panel" style="visibility:hidden; display: none">
                <div class="card">
                  <div class="card-body">
                    <h4 class="card-title">Select Grade 1 subjects for educator</h4>
                    <p class="card-description">Languages</p>
                    <form class="forms-sample">
                      <div class="row">
                        <div class="col-md-6">
                          <div class="form-group">
                            <div class="form-check form-check-flat">
                              <label class="form-check-label">
                                <input type="checkbox" class="form-check-input"> English Home Language <i class="input-helper"></i>
                              </label>
                            </div>
                            <div class="form-check form-check-flat" style="margin-top: 25px">
                              <label class="form-check-label">
                                <input type="checkbox" class="form-check-input"> First Additional Language <i class="input-helper"></i></label>
                            </div>
                          </div>
                        </div>
                        <div class="col-md-6">
                          <div class="form-group">
                            <div class="form-radio form-radio-flat">
                              <label class="form-check-label">
                        <select class="form-control form-control-lg" id="homeLang" disabled="">
                        <option>Afrikaans</option>
                        <option>English</option>
                        <option>Venda</option>
                        <option>Zulu</option>
                        <option>Xhosa</option>
                        <option>Sotho</option>
                        <option>Swati</option>
                        <option>Ndebele</option>
                        <option>Sepedi</option>
                        <option>Tswana</option>
                        <option>Tsonga</option>
                      </select>
                                  </div>
                            <div class="form-radio form-radio-flat" style="margin-top: 10px">
                              <label class="form-check-label">
                                  <select class="form-control form-control-lg" id="fal" disabled="">
                        <option>Afrikaans</option>
                        <option>English</option>
                        <option>Venda</option>
                        <option>Zulu</option>
                        <option>Xhosa</option>
                        <option>Sotho</option>
                        <option>Swati</option>
                        <option>Ndebele</option>
                        <option>Tswana</option>
                        <option>Tsonga</option>
                      </select>   
                             </div>
                          </div>
                        </div>
                      </div>
                         <p class="card-description" style="margin-top:20px">Mathematics</p>
                         <div class="row">
                        <div class="col-md-6">
                          <div class="form-group">
                            <div class="form-check form-check-flat">
                              <label class="form-check-label">
                                <input type="checkbox" class="form-check-input"> Mathematics <i class="input-helper"></i></label>
                            </div>
                          </div>
                        </div>
                        </div>

                        <p class="card-description" style="margin-top:20px">Other</p>
                         <div class="row">
                        <div class="col-md-6">
                          <div class="form-group">
                            <div class="form-check form-check-flat">
                              <label class="form-check-label">
                                <input type="checkbox" class="form-check-input"> Life Skills <i class="input-helper"></i></label>
                            </div>
                          </div>
                        </div>
                        <button type="submit" class="btn btn-success mr-2">Add</button>
                      </div>
                    </form>
                  </div>
                </div>
              </div>
                              <%-- GRADE 1 END --%>

                              <%-- GRADE 2 START --%>
                               <div class="col-md-6 grid-margin stretch-card" id="grade2Panel" style="visibility:hidden; display: none">
                <div class="card">
                  <div class="card-body">
                    <h4 class="card-title">Select Grade 2 subjects for educator</h4>
                    <p class="card-description">Languages</p>
                    <form class="forms-sample">
                      <div class="row">
                        <div class="col-md-6">
                          <div class="form-group">
                            <div class="form-check form-check-flat">
                              <label class="form-check-label">
                                <input type="checkbox" class="form-check-input"> English Home Language <i class="input-helper"></i>
                              </label>
                            </div>
                            <div class="form-check form-check-flat" style="margin-top: 25px">
                              <label class="form-check-label">
                                <input type="checkbox" class="form-check-input"> First Additional Language <i class="input-helper"></i></label>
                            </div>
                          </div>
                        </div>
                        <div class="col-md-6">
                          <div class="form-group">
                            <div class="form-radio form-radio-flat">
                              <label class="form-check-label">
                        <select class="form-control form-control-lg" id="homeLang" disabled="">
                        <option>Afrikaans</option>
                        <option>English</option>
                        <option>Venda</option>
                        <option>Zulu</option>
                        <option>Xhosa</option>
                        <option>Sotho</option>
                        <option>Swati</option>
                        <option>Ndebele</option>
                        <option>Sepedi</option>
                        <option>Tswana</option>
                        <option>Tsonga</option>
                      </select>
                                  </div>
                            <div class="form-radio form-radio-flat" style="margin-top: 10px">
                              <label class="form-check-label">
                                  <select class="form-control form-control-lg" id="fal" disabled="">
                        <option>Afrikaans</option>
                        <option>English</option>
                        <option>Venda</option>
                        <option>Zulu</option>
                        <option>Xhosa</option>
                        <option>Sotho</option>
                        <option>Swati</option>
                        <option>Ndebele</option>
                        <option>Tswana</option>
                        <option>Tsonga</option>
                      </select>   
                             </div>
                          </div>
                        </div>
                      </div>
                         <p class="card-description" style="margin-top:20px">Mathematics</p>
                         <div class="row">
                        <div class="col-md-6">
                          <div class="form-group">
                            <div class="form-check form-check-flat">
                              <label class="form-check-label">
                                <input type="checkbox" class="form-check-input"> Mathematics <i class="input-helper"></i></label>
                            </div>
                          </div>
                        </div>
                        </div>

                        <p class="card-description" style="margin-top:20px">Other</p>
                         <div class="row">
                        <div class="col-md-6">
                          <div class="form-group">
                            <div class="form-check form-check-flat">
                              <label class="form-check-label">
                                <input type="checkbox" class="form-check-input"> Life Skills <i class="input-helper"></i></label>
                            </div>
                          </div>
                        </div>
                      </div>
                    </form>
                  </div>
                </div>
              </div>
                              <%-- GRADE 2 END --%>

                              <%-- GRADE 3 START --%>
                              <div class="col-md-6 grid-margin stretch-card" id="grade3Panel" style="visibility:hidden; display: none">
                <div class="card">
                  <div class="card-body">
                    <h4 class="card-title">Select Grade 3 subjects for educator</h4>
                    <p class="card-description">Languages</p>
                    <form class="forms-sample">
                      <div class="row">
                        <div class="col-md-6">
                          <div class="form-group">
                            <div class="form-check form-check-flat">
                              <label class="form-check-label">
                                <input type="checkbox" class="form-check-input"> English Home Language <i class="input-helper"></i>
                              </label>
                            </div>
                            <div class="form-check form-check-flat" style="margin-top: 25px">
                              <label class="form-check-label">
                                <input type="checkbox" class="form-check-input"> First Additional Language <i class="input-helper"></i></label>
                            </div>
                          </div>
                        </div>
                        <div class="col-md-6">
                          <div class="form-group">
                            <div class="form-radio form-radio-flat">
                              <label class="form-check-label">
                        <select class="form-control form-control-lg" id="homeLang" disabled="">
                        <option>Afrikaans</option>
                        <option>English</option>
                        <option>Venda</option>
                        <option>Zulu</option>
                        <option>Xhosa</option>
                        <option>Sotho</option>
                        <option>Swati</option>
                        <option>Ndebele</option>
                        <option>Sepedi</option>
                        <option>Tswana</option>
                        <option>Tsonga</option>
                      </select>
                                  </div>
                            <div class="form-radio form-radio-flat" style="margin-top: 10px">
                              <label class="form-check-label">
                                  <select class="form-control form-control-lg" id="fal" disabled="">
                        <option>Afrikaans</option>
                        <option>English</option>
                        <option>Venda</option>
                        <option>Zulu</option>
                        <option>Xhosa</option>
                        <option>Sotho</option>
                        <option>Swati</option>
                        <option>Ndebele</option>
                        <option>Tswana</option>
                        <option>Tsonga</option>
                      </select>   
                             </div>
                          </div>
                        </div>
                      </div>
                         <p class="card-description" style="margin-top:20px">Mathematics</p>
                         <div class="row">
                        <div class="col-md-6">
                          <div class="form-group">
                            <div class="form-check form-check-flat">
                              <label class="form-check-label">
                                <input type="checkbox" class="form-check-input"> Mathematics <i class="input-helper"></i></label>
                            </div>
                          </div>
                        </div>
                        </div>

                        <p class="card-description" style="margin-top:20px">Other</p>
                         <div class="row">
                        <div class="col-md-6">
                          <div class="form-group">
                            <div class="form-check form-check-flat">
                              <label class="form-check-label">
                                <input type="checkbox" class="form-check-input"> Life Skills <i class="input-helper"></i></label>
                            </div>
                          </div>
                        </div>
                      </div>
                    </form>
                  </div>
                </div>
              </div>
                              <%-- GRADE 3 END --%>
                    
                              <%-- GRADE 4 BEGIN --%>
                              <div class="col-md-6 grid-margin stretch-card" id="grade4Panel" style="visibility:hidden; display: none">
                <div class="card">
                  <div class="card-body">
                    <h4 class="card-title">Select Grade 4 subjects for educator</h4>
                    <p class="card-description">Languages</p>
                    <form class="forms-sample">
                      <div class="row">
                        <div class="col-md-6">
                          <div class="form-group">
                            <div class="form-check form-check-flat">
                              <label class="form-check-label">
                                <input type="checkbox" class="form-check-input"> English Home Language <i class="input-helper"></i>
                              </label>
                            </div>
                            <div class="form-check form-check-flat" style="margin-top: 25px">
                              <label class="form-check-label">
                                <input type="checkbox" class="form-check-input"> First Additional Language <i class="input-helper"></i></label>
                            </div>
                          </div>
                        </div>
                        <div class="col-md-6">
                          <div class="form-group">
                            <div class="form-radio form-radio-flat">
                              <label class="form-check-label">
                        <select class="form-control form-control-lg" id="homeLang">
                        <option>Afrikaans</option>
                        <option>English</option>
                        <option>Venda</option>
                        <option>Zulu</option>
                        <option>Xhosa</option>
                        <option>Sotho</option>
                        <option>Swati</option>
                        <option>Ndebele</option>
                        <option>Sepedi</option>
                        <option>Tswana</option>
                        <option>Tsonga</option>
                      </select>
                                  </div>
                            <div class="form-radio form-radio-flat" style="margin-top: 10px">
                              <label class="form-check-label">
                                  <select class="form-control form-control-lg" id="fal">
                        <option>Afrikaans</option>
                        <option>English</option>
                        <option>Venda</option>
                        <option>Zulu</option>
                        <option>Xhosa</option>
                        <option>Sotho</option>
                        <option>Swati</option>
                        <option>Ndebele</option>
                        <option>Tswana</option>
                        <option>Tsonga</option>
                      </select>   
                             </div>
                          </div>
                        </div>
                      </div>
                         <p class="card-description" style="margin-top:20px">Mathematics</p>
                         <div class="row">
                        <div class="col-md-6">
                          <div class="form-group">
                            <div class="form-check form-check-flat">
                              <label class="form-check-label">
                                <input type="checkbox" class="form-check-input"> Mathematics <i class="input-helper"></i></label>
                            </div>
                          </div>
                        </div>
                        </div>
                         <p class="card-description" style="margin-top:20px">Science</p>
                         <div class="row">
                        <div class="col-md-6">
                          <div class="form-group">
                            <div class="form-check form-check-flat">
                              <label class="form-check-label">
                                <input type="checkbox" class="form-check-input"> Natural Science <i class="input-helper"></i></label>
                            </div>
                          </div>
                        </div>
                        <div class="col-md-6">
                          <div class="form-group">
                            <div class="form-check form-check-flat">
                              <label class="form-check-label">
                                <input type="radio" class="form-check-input" name="flatRadios1" id="" value=""> Social Science <i class="input-helper"></i></label>
                            </div>
                          </div>
                        </div>
                      </div>

                        <p class="card-description" style="margin-top:20px">Other</p>
                         <div class="row">
                        <div class="col-md-6">
                          <div class="form-group">
                            <div class="form-check form-check-flat">
                              <label class="form-check-label">
                                <input type="checkbox" class="form-check-input"> Life Skills <i class="input-helper"></i></label>
                            </div>
                          </div>
                        </div>
                      </div>
                    </form>
                  </div>
                </div>
              </div>
                              <%-- GRADE 4 END --%>

                              <%-- GRADE 5 START --%>
                              <div class="col-md-6 grid-margin stretch-card" id="grade5Panel" style="visibility:hidden; display: none">
                <div class="card">
                  <div class="card-body">
                    <h4 class="card-title">Select Grade 5 subjects for educator</h4>
                    <p class="card-description">Languages</p>
                    <form class="forms-sample">
                      <div class="row">
                        <div class="col-md-6">
                          <div class="form-group">
                            <div class="form-check form-check-flat">
                              <label class="form-check-label">
                                <input type="checkbox" class="form-check-input"> English Home Language <i class="input-helper"></i>
                              </label>
                            </div>
                            <div class="form-check form-check-flat" style="margin-top: 25px">
                              <label class="form-check-label">
                                <input type="checkbox" class="form-check-input"> First Additional Language <i class="input-helper"></i></label>
                            </div>
                          </div>
                        </div>
                        <div class="col-md-6">
                          <div class="form-group">
                            <div class="form-radio form-radio-flat">
                              <label class="form-check-label">
                        <select class="form-control form-control-lg" id="homeLang">
                        <option>Afrikaans</option>
                        <option>English</option>
                        <option>Venda</option>
                        <option>Zulu</option>
                        <option>Xhosa</option>
                        <option>Sotho</option>
                        <option>Swati</option>
                        <option>Ndebele</option>
                        <option>Sepedi</option>
                        <option>Tswana</option>
                        <option>Tsonga</option>
                      </select>
                                  </div>
                            <div class="form-radio form-radio-flat" style="margin-top: 10px">
                              <label class="form-check-label">
                                  <select class="form-control form-control-lg" id="fal">
                        <option>Afrikaans</option>
                        <option>English</option>
                        <option>Venda</option>
                        <option>Zulu</option>
                        <option>Xhosa</option>
                        <option>Sotho</option>
                        <option>Swati</option>
                        <option>Ndebele</option>
                        <option>Tswana</option>
                        <option>Tsonga</option>
                      </select>   
                             </div>
                          </div>
                        </div>
                      </div>
                         <p class="card-description" style="margin-top:20px">Mathematics</p>
                         <div class="row">
                        <div class="col-md-6">
                          <div class="form-group">
                            <div class="form-check form-check-flat">
                              <label class="form-check-label">
                                <input type="checkbox" class="form-check-input"> Mathematics <i class="input-helper"></i></label>
                            </div>
                          </div>
                        </div>
                        </div>
                         <p class="card-description" style="margin-top:20px">Science</p>
                         <div class="row">
                        <div class="col-md-6">
                          <div class="form-group">
                            <div class="form-check form-check-flat">
                              <label class="form-check-label">
                                <input type="checkbox" class="form-check-input"> Natural Science <i class="input-helper"></i></label>
                            </div>
                          </div>
                        </div>
                        <div class="col-md-6">
                          <div class="form-group">
                            <div class="form-check form-check-flat">
                              <label class="form-check-label">
                                <input type="radio" class="form-check-input" name="flatRadios1" id="" value=""> Social Science <i class="input-helper"></i></label>
                            </div>
                          </div>
                        </div>
                      </div>

                        <p class="card-description" style="margin-top:20px">Other</p>
                         <div class="row">
                        <div class="col-md-6">
                          <div class="form-group">
                            <div class="form-check form-check-flat">
                              <label class="form-check-label">
                                <input type="checkbox" class="form-check-input"> Life Skills <i class="input-helper"></i></label>
                            </div>
                          </div>
                        </div>
                      </div>
                    </form>
                  </div>
                </div>
              </div>
                              <%-- GRADE 5 END --%>
                              
                              <%-- GRADE 6 BEGIN --%>
                              <div class="col-md-6 grid-margin stretch-card" id="grade6Panel" style="visibility:hidden; display: none">
                <div class="card">
                  <div class="card-body">
                    <h4 class="card-title">Select Grade 6 subjects for educator</h4>
                    <p class="card-description">Languages</p>
                    <form class="forms-sample">
                      <div class="row">
                        <div class="col-md-6">
                          <div class="form-group">
                            <div class="form-check form-check-flat">
                              <label class="form-check-label">
                                <input type="checkbox" class="form-check-input"> English Home Language <i class="input-helper"></i>
                              </label>
                            </div>
                            <div class="form-check form-check-flat" style="margin-top: 25px">
                              <label class="form-check-label">
                                <input type="checkbox" class="form-check-input"> First Additional Language <i class="input-helper"></i></label>
                            </div>
                          </div>
                        </div>
                        <div class="col-md-6">
                          <div class="form-group">
                            <div class="form-radio form-radio-flat">
                              <label class="form-check-label">
                        <select class="form-control form-control-lg" id="homeLang">
                        <option>Afrikaans</option>
                        <option>English</option>
                        <option>Venda</option>
                        <option>Zulu</option>
                        <option>Xhosa</option>
                        <option>Sotho</option>
                        <option>Swati</option>
                        <option>Ndebele</option>
                        <option>Sepedi</option>
                        <option>Tswana</option>
                        <option>Tsonga</option>
                      </select>
                                  </div>
                            <div class="form-radio form-radio-flat" style="margin-top: 10px">
                              <label class="form-check-label">
                                  <select class="form-control form-control-lg" id="fal">
                        <option>Afrikaans</option>
                        <option>English</option>
                        <option>Venda</option>
                        <option>Zulu</option>
                        <option>Xhosa</option>
                        <option>Sotho</option>
                        <option>Swati</option>
                        <option>Ndebele</option>
                        <option>Tswana</option>
                        <option>Tsonga</option>
                      </select>   
                             </div>
                          </div>
                        </div>
                      </div>
                         <p class="card-description" style="margin-top:20px">Mathematics</p>
                         <div class="row">
                        <div class="col-md-6">
                          <div class="form-group">
                            <div class="form-check form-check-flat">
                              <label class="form-check-label">
                                <input type="checkbox" class="form-check-input"> Mathematics <i class="input-helper"></i></label>
                            </div>
                          </div>
                        </div>
                        </div>
                         <p class="card-description" style="margin-top:20px">Science</p>
                         <div class="row">
                        <div class="col-md-6">
                          <div class="form-group">
                            <div class="form-check form-check-flat">
                              <label class="form-check-label">
                                <input type="checkbox" class="form-check-input"> Natural Science <i class="input-helper"></i></label>
                            </div>
                          </div>
                        </div>
                        <div class="col-md-6">
                          <div class="form-group">
                            <div class="form-check form-check-flat">
                              <label class="form-check-label">
                                <input type="radio" class="form-check-input" name="flatRadios1" id="" value=""> Social Science <i class="input-helper"></i></label>
                            </div>
                          </div>
                        </div>
                      </div>

                        <p class="card-description" style="margin-top:20px">Other</p>
                         <div class="row">
                        <div class="col-md-6">
                          <div class="form-group">
                            <div class="form-check form-check-flat">
                              <label class="form-check-label">
                                <input type="checkbox" class="form-check-input"> Life Skills <i class="input-helper"></i></label>
                            </div>
                          </div>
                        </div>
                      </div>
                    </form>
                  </div>
                </div>
              </div>
                              <%-- GRADE 6 END --%>

                              <%-- GRADE 7 START --%>
                               <div class="col-md-6 grid-margin stretch-card" id="grade7Panel" style="visibility:hidden; display: none">
                <div class="card">
                  <div class="card-body">
                    <h4 class="card-title">Select Grade 7 subjects for educator</h4>
                    <p class="card-description">Languages</p>
                    <form class="forms-sample">
                      <div class="row">
                        <div class="col-md-6">
                          <div class="form-group">
                            <div class="form-check form-check-flat">
                              <label class="form-check-label">
                                <input type="checkbox" class="form-check-input"> English Home Language <i class="input-helper"></i>
                              </label>
                            </div>
                            <div class="form-check form-check-flat" style="margin-top: 25px">
                              <label class="form-check-label">
                                <input type="checkbox" class="form-check-input"> First Additional Language <i class="input-helper"></i></label>
                            </div>
                          </div>
                        </div>
                        <div class="col-md-6">
                          <div class="form-group">
                            <div class="form-radio form-radio-flat">
                              <label class="form-check-label">
                        <select class="form-control form-control-lg" id="homeLang">
                        <option>Afrikaans</option>
                        <option>English</option>
                        <option>Venda</option>
                        <option>Zulu</option>
                        <option>Xhosa</option>
                        <option>Sotho</option>
                        <option>Swati</option>
                        <option>Ndebele</option>
                        <option>Sepedi</option>
                        <option>Tswana</option>
                        <option>Tsonga</option>
                      </select>
                                  </div>
                            <div class="form-radio form-radio-flat" style="margin-top: 10px">
                              <label class="form-check-label">
                                  <select class="form-control form-control-lg" id="fal">
                        <option>Afrikaans</option>
                        <option>English</option>
                        <option>Venda</option>
                        <option>Zulu</option>
                        <option>Xhosa</option>
                        <option>Sotho</option>
                        <option>Swati</option>
                        <option>Ndebele</option>
                        <option>Tswana</option>
                        <option>Tsonga</option>
                      </select>   
                             </div>
                          </div>
                        </div>
                      </div>
                         <p class="card-description" style="margin-top:20px">Mathematics</p>
                         <div class="row">
                        <div class="col-md-6">
                          <div class="form-group">
                            <div class="form-check form-check-flat">
                              <label class="form-check-label">
                                <input type="checkbox" class="form-check-input"> Mathematics <i class="input-helper"></i></label>
                            </div>
                          </div>
                        </div>
                        </div>
                         <p class="card-description" style="margin-top:20px">Science</p>
                         <div class="row">
                        <div class="col-md-6">
                          <div class="form-group">
                            <div class="form-check form-check-flat">
                              <label class="form-check-label">
                                <input type="checkbox" class="form-check-input"> Natural Science <i class="input-helper"></i></label>
                            </div>
                            <div class="form-check form-check-flat">
                              <label class="form-check-label">
                                <input type="checkbox" class="form-check-input"> Economic & Management Science <i class="input-helper"></i></label>
                            </div>
                          </div>
                        </div>
                        <div class="col-md-6">
                          <div class="form-group">
                            <div class="form-check form-check-flat">
                              <label class="form-check-label">
                                <input type="radio" class="form-check-input" name="flatRadios1" id="" value=""> Social Science <i class="input-helper"></i></label>
                            </div>
                          </div>
                        </div>
                      </div>

                        <p class="card-description" style="margin-top:20px">Other</p>
                         <div class="row">
                        <div class="col-md-6">
                          <div class="form-group">
                            <div class="form-check form-check-flat">
                              <label class="form-check-label">
                                <input type="checkbox" class="form-check-input"> Life Skills <i class="input-helper"></i></label>
                            </div>
                          </div>
                        </div>
                      </div>
                    </form>
                  </div>
                </div>
              </div>
                              <%-- GRADE 7 END --%>

                              <%-- GRADE 8 BEGIN --%>
                              <div class="col-md-6 grid-margin stretch-card" id="grade8Panel" style="visibility:hidden; display: none">
                <div class="card">
                  <div class="card-body">
                    <h4 class="card-title">Select Grade 8 subjects for educator</h4>
                    <p class="card-description">Languages</p>
                    <form class="forms-sample">
                      <div class="row">
                        <div class="col-md-6">
                          <div class="form-group">
                            <div class="form-check form-check-flat">
                              <label class="form-check-label">
                                <input type="checkbox" class="form-check-input"> English Home Language <i class="input-helper"></i>
                              </label>
                            </div>
                            <div class="form-check form-check-flat" style="margin-top: 25px">
                              <label class="form-check-label">
                                <input type="checkbox" class="form-check-input"> First Additional Language <i class="input-helper"></i></label>
                            </div>
                          </div>
                        </div>
                        <div class="col-md-6">
                          <div class="form-group">
                            <div class="form-radio form-radio-flat">
                              <label class="form-check-label">
                        <select class="form-control form-control-lg" id="homeLang">
                        <option>Afrikaans</option>
                        <option>English</option>
                        <option>Venda</option>
                        <option>Zulu</option>
                        <option>Xhosa</option>
                        <option>Sotho</option>
                        <option>Swati</option>
                        <option>Ndebele</option>
                        <option>Sepedi</option>
                        <option>Tswana</option>
                        <option>Tsonga</option>
                      </select>
                                  </div>
                            <div class="form-radio form-radio-flat" style="margin-top: 10px">
                              <label class="form-check-label">
                                  <select class="form-control form-control-lg" id="fal">
                        <option>Afrikaans</option>
                        <option>English</option>
                        <option>Venda</option>
                        <option>Zulu</option>
                        <option>Xhosa</option>
                        <option>Sotho</option>
                        <option>Swati</option>
                        <option>Ndebele</option>
                        <option>Tswana</option>
                        <option>Tsonga</option>
                      </select>   
                             </div>
                          </div>
                        </div>
                      </div>
                         <p class="card-description" style="margin-top:20px">Mathematics</p>
                         <div class="row">
                        <div class="col-md-6">
                          <div class="form-group">
                            <div class="form-check form-check-flat">
                              <label class="form-check-label">
                                <input type="checkbox" class="form-check-input"> Mathematics <i class="input-helper"></i></label>
                            </div>
                          </div>
                        </div>
                        </div>
                         <p class="card-description" style="margin-top:20px">Science</p>
                         <div class="row">
                        <div class="col-md-6">
                          <div class="form-group">
                            <div class="form-check form-check-flat">
                              <label class="form-check-label">
                                <input type="checkbox" class="form-check-input"> Natural Science <i class="input-helper"></i></label>
                            </div>
                            <div class="form-check form-check-flat">
                              <label class="form-check-label">
                                <input type="checkbox" class="form-check-input"> Economic & Management Science <i class="input-helper"></i></label>
                            </div>
                          </div>
                        </div>
                        <div class="col-md-6">
                          <div class="form-group">
                            <div class="form-check form-check-flat">
                              <label class="form-check-label">
                                <input type="radio" class="form-check-input" name="flatRadios1" id="" value=""> Social Science <i class="input-helper"></i></label>
                            </div>
                          </div>
                        </div>
                      </div>

                        <p class="card-description" style="margin-top:20px">Other</p>
                         <div class="row">
                        <div class="col-md-6">
                          <div class="form-group">
                            <div class="form-check form-check-flat">
                              <label class="form-check-label">
                                <input type="checkbox" class="form-check-input"> Technology <i class="input-helper"></i></label>
                            </div>
                            <div class="form-check form-check-flat">
                              <label class="form-check-label">
                                <input type="checkbox" class="form-check-input"> Creative Arts <i class="input-helper"></i></label>
                            </div>
                          </div>
                        </div>
                        <div class="col-md-6">
                          <div class="form-group">
                            <div class="form-check form-check-flat">
                              <label class="form-check-label">
                <input type="checkbox" class="form-check-input"> Life Orientation <i class="input-helper"></i></label>

                            </div>
                          </div>
                        </div>
                      </div>
                    </form>
                  </div>
                </div>
              </div>
                              <%-- GRADE 8 END --%>

                              <%-- GRADE 9 START --%>
                               <div class="col-md-6 grid-margin stretch-card" id="grade9" style="visibility: hidden; display: none">
                <div class="card">
                  <div class="card-body">
                    <h4 class="card-title">Select Grade 9 subjects for educator</h4>
                    <p class="card-description">Languages</p>
                    <form class="forms-sample">
                      <div class="row">
                        <div class="col-md-6">
                          <div class="form-group">
                            <div class="form-check form-check-flat">
                              <label class="form-check-label">
                                <input type="checkbox" class="form-check-input"> English Home Language <i class="input-helper"></i>
                              </label>
                            </div>
                            <div class="form-check form-check-flat" style="margin-top: 25px">
                              <label class="form-check-label">
                                <input type="checkbox" class="form-check-input"> First Additional Language <i class="input-helper"></i></label>
                            </div>
                          </div>
                        </div>
                        <div class="col-md-6">
                          <div class="form-group">
                            <div class="form-radio form-radio-flat">
                              <label class="form-check-label">
                        <select class="form-control form-control-lg" id="homeLang">
                        <option>Afrikaans</option>
                        <option>English</option>
                        <option>Venda</option>
                        <option>Zulu</option>
                        <option>Xhosa</option>
                        <option>Sotho</option>
                        <option>Swati</option>
                        <option>Ndebele</option>
                        <option>Sepedi</option>
                        <option>Tswana</option>
                        <option>Tsonga</option>
                      </select>
                                  </div>
                            <div class="form-radio form-radio-flat" style="margin-top: 10px">
                              <label class="form-check-label">
                                  <select class="form-control form-control-lg" id="fal">
                        <option>Afrikaans</option>
                        <option>English</option>
                        <option>Venda</option>
                        <option>Zulu</option>
                        <option>Xhosa</option>
                        <option>Sotho</option>
                        <option>Swati</option>
                        <option>Ndebele</option>
                        <option>Tswana</option>
                        <option>Tsonga</option>
                      </select>   
                             </div>
                          </div>
                        </div>
                      </div>
                         <p class="card-description" style="margin-top:20px">Mathematics</p>
                         <div class="row">
                        <div class="col-md-6">
                          <div class="form-group">
                            <div class="form-check form-check-flat">
                              <label class="form-check-label">
                                <input type="checkbox" class="form-check-input"> Mathematics <i class="input-helper"></i></label>
                            </div>
                          </div>
                        </div>
                        </div>
                         <p class="card-description" style="margin-top:20px">Science</p>
                         <div class="row">
                        <div class="col-md-6">
                          <div class="form-group">
                            <div class="form-check form-check-flat">
                              <label class="form-check-label">
                                <input type="checkbox" class="form-check-input"> Natural Science <i class="input-helper"></i></label>
                            </div>
                            <div class="form-check form-check-flat">
                              <label class="form-check-label">
                                <input type="checkbox" class="form-check-input"> Economic & Management Science <i class="input-helper"></i></label>
                            </div>
                          </div>
                        </div>
                        <div class="col-md-6">
                          <div class="form-group">
                            <div class="form-check form-check-flat">
                              <label class="form-check-label">
                                <input type="radio" class="form-check-input" name="flatRadios1" id="" value=""> Social Science <i class="input-helper"></i></label>
                            </div>
                          </div>
                        </div>
                      </div>

                        <p class="card-description" style="margin-top:20px">Other</p>
                         <div class="row">
                        <div class="col-md-6">
                          <div class="form-group">
                            <div class="form-check form-check-flat">
                              <label class="form-check-label">
                                <input type="checkbox" class="form-check-input"> Technology <i class="input-helper"></i></label>
                            </div>
                            <div class="form-check form-check-flat">
                              <label class="form-check-label">
                                <input type="checkbox" class="form-check-input"> Creative Arts <i class="input-helper"></i></label>
                            </div>
                          </div>
                        </div>
                        <div class="col-md-6">
                          <div class="form-group">
                            <div class="form-check form-check-flat">
                              <label class="form-check-label">
                <input type="checkbox" class="form-check-input"> Life Orientation <i class="input-helper"></i></label>

                            </div>
                          </div>
                        </div>
                      </div>
                    </form>
                  </div>
                </div>
              </div>
                              <%-- GRADE 9 END --%>

                              <%-- GRADE 10 BEGIN --%>
                              <div class="col-md-6 grid-margin stretch-card" id="grade10Panel" style="visibility: hidden; display: none">
                <div class="card">
                  <div class="card-body">
                    <h4 class="card-title">Select Grade 10 subjects for educator</h4>
                    <p class="card-description">Languages</p>
                    <form class="forms-sample">
                      <div class="row">
                        <div class="col-md-6">
                          <div class="form-group">
                            <div class="form-check form-check-flat">
                              <label class="form-check-label">
                                <input type="checkbox" class="form-check-input"> Home Language <i class="input-helper"></i>
                              </label>
                            </div>
                            <div class="form-check form-check-flat" style="margin-top: 25px">
                              <label class="form-check-label">
                                <input type="checkbox" class="form-check-input"> First Additional Language <i class="input-helper"></i></label>
                            </div>
                          </div>
                        </div>
                        <div class="col-md-6">
                          <div class="form-group">
                            <div class="form-radio form-radio-flat">
                              <label class="form-check-label">
                        <select class="form-control form-control-lg" id="homeLang" disabled>
                        <option>Afrikaans</option>
                        <option>English</option>
                        <option>Venda</option>
                        <option>Zulu</option>
                        <option>Xhosa</option>
                        <option>Sotho</option>
                        <option>Swati</option>
                        <option>Ndebele</option>
                        <option>Sepedi</option>
                        <option>Tswana</option>
                        <option>Tsonga</option>
                      </select>
                                  </div>
                            <div class="form-radio form-radio-flat" style="margin-top: 10px">
                              <label class="form-check-label">
                                  <select class="form-control form-control-lg" id="fal" disabled>
                        <option>Afrikaans</option>
                        <option>English</option>
                        <option>Venda</option>
                        <option>Zulu</option>
                        <option>Xhosa</option>
                        <option>Sotho</option>
                        <option>Swati</option>
                        <option>Ndebele</option>
                        <option>Tswana</option>
                        <option>Tsonga</option>
                      </select>   
                             </div>
                          </div>
                        </div>
                      </div>
                         <p class="card-description" style="margin-top:20px">Mathematics</p>
                         <div class="row">
                        <div class="col-md-6">
                          <div class="form-group">
                            <div class="form-check form-check-flat">
                              <label class="form-check-label">
                                <input type="checkbox" class="form-check-input"> Mathematics <i class="input-helper"></i></label>
                            </div>
                          </div>
                        </div>
                             <div class="col-md-6">
                          <div class="form-group">
                            <div class="form-check form-check-flat">
                              <label class="form-check-label">
                                <input type="checkbox" class="form-check-input"> Technical Mathematics <i class="input-helper"></i></label>
                            </div>
                          </div>
                        </div>
                              <div class="col-md-6">
                          <div class="form-group">
                            <div class="form-check form-check-flat">
                              <label class="form-check-label">
                                <input type="checkbox" class="form-check-input"> Mathematical Literacy <i class="input-helper"></i></label>
                            </div>
                          </div>
                        </div>
                        </div>
                         <p class="card-description" style="margin-top:20px">Section A</p>
                         <div class="row">
                        <div class="col-md-6">
                          <div class="form-group">
                            <div class="form-check form-check-flat">
                              <label class="form-check-label">
                                <input type="checkbox" class="form-check-input"> Life Sciences <i class="input-helper"></i></label>
                            </div>
                            <div class="form-check form-check-flat">
                              <label class="form-check-label">
                                <input type="checkbox" class="form-check-input"> Physical Sciences <i class="input-helper"></i></label>
                            </div>
                              <div class="form-check form-check-flat">
                              <label class="form-check-label">
                                <input type="checkbox" class="form-check-input"> Accounting <i class="input-helper"></i></label>
                            </div>
                              <div class="form-check form-check-flat">
                              <label class="form-check-label">
                                <input type="checkbox" class="form-check-input"> Tourism <i class="input-helper"></i></label>
                            </div>
                              <div class="form-check form-check-flat">
                              <label class="form-check-label">
                                <input type="checkbox" class="form-check-input"> Agricultural Sciences <i class="input-helper"></i></label>
                            </div>
                          </div>
                        </div>
                        <div class="col-md-6">
                          <div class="form-group">
                            <div class="form-check form-check-flat">
                              <label class="form-check-label">
                                <input type="radio" class="form-check-input" name="flatRadios1" id="" value=""> Geography <i class="input-helper"></i></label>
                            </div>
                          </div>
                            <div class="form-group">
                            <div class="form-check form-check-flat">
                              <label class="form-check-label">
                                <input type="radio" class="form-check-input" name="flatRadios1" id="" value=""> Business Studies <i class="input-helper"></i></label>
                            </div>
                          </div>
                            <div class="form-group">
                            <div class="form-check form-check-flat">
                              <label class="form-check-label">
                                <input type="radio" class="form-check-input" name="flatRadios1" id="" value=""> History <i class="input-helper"></i></label>
                            </div>
                                <div class="form-check form-check-flat">
                              <label class="form-check-label">
                                <input type="radio" class="form-check-input" name="flatRadios1" id="" value=""> Economics <i class="input-helper"></i></label>
                            </div>
                                <div class="form-check form-check-flat">
                              <label class="form-check-label">
                                <input type="radio" class="form-check-input" name="flatRadios1" id="" value=""> Religion Studies <i class="input-helper"></i></label>
                            </div>
                          </div>
                        </div>
                      </div>

                        <p class="card-description" style="margin-top:20px">Section B</p>
                         <div class="row">
                        <div class="col-md-6">
                          <div class="form-group">
                            <div class="form-check form-check-flat">
                              <label class="form-check-label">
                                <input type="checkbox" class="form-check-input"> Consumer Studies <i class="input-helper"></i></label>
                            </div>
                            <div class="form-check form-check-flat">
                              <label class="form-check-label">
                                <input type="checkbox" class="form-check-input"> Religion Studies <i class="input-helper"></i></label>
                            </div>
                              <div class="form-check form-check-flat">
                              <label class="form-check-label">
                                <input type="checkbox" class="form-check-input"> Engineering, Graphics & Design <i class="input-helper"></i></label>
                            </div>
                              <div class="form-check form-check-flat">
                              <label class="form-check-label">
                                <input type="checkbox" class="form-check-input"> Dramatic Arts <i class="input-helper"></i></label>
                            </div>
                          </div>
                        </div>
                        <div class="col-md-6">
                          <div class="form-group">
                            <div class="form-check form-check-flat">
                              <label class="form-check-label">
                                <input type="radio" class="form-check-input" name="flatRadios1" id="" value=""> Information Technology <i class="input-helper"></i></label>
                            </div>
                          </div>
                            <div class="form-group">
                            <div class="form-check form-check-flat">
                              <label class="form-check-label">
                                <input type="radio" class="form-check-input" name="flatRadios1" id="" value=""> Music <i class="input-helper"></i></label>
                            </div>
                          </div>
                            <div class="form-group">
                            <div class="form-check form-check-flat">
                              <label class="form-check-label">
                                <input type="radio" class="form-check-input" name="flatRadios1" id="" value=""> Visual Arts <i class="input-helper"></i></label>
                            </div>
                          </div>
                        </div>
                      </div>
                    </form>
                  </div>
                </div>
              </div>
                              <%-- GRADE 10 END --%>

                              <%-- GRADE 11 BEGIN --%>
                              <div class="col-md-6 grid-margin stretch-card" id="grade11Panel" style="visibility: hidden; display: none">
                <div class="card">
                  <div class="card-body">
                    <h4 class="card-title">Select Grade 11 subjects for educator</h4>
                    <p class="card-description">Languages</p>
                    <form class="forms-sample">
                      <div class="row">
                        <div class="col-md-6">
                          <div class="form-group">
                            <div class="form-check form-check-flat">
                              <label class="form-check-label">
                                <input type="checkbox" class="form-check-input"> Home Language <i class="input-helper"></i>
                              </label>
                            </div>
                            <div class="form-check form-check-flat" style="margin-top: 25px">
                              <label class="form-check-label">
                                <input type="checkbox" class="form-check-input"> First Additional Language <i class="input-helper"></i></label>
                            </div>
                          </div>
                        </div>
                        <div class="col-md-6">
                          <div class="form-group">
                            <div class="form-radio form-radio-flat">
                              <label class="form-check-label">
                        <select class="form-control form-control-lg" id="homeLang" disabled>
                        <option>Afrikaans</option>
                        <option>English</option>
                        <option>Venda</option>
                        <option>Zulu</option>
                        <option>Xhosa</option>
                        <option>Sotho</option>
                        <option>Swati</option>
                        <option>Ndebele</option>
                        <option>Sepedi</option>
                        <option>Tswana</option>
                        <option>Tsonga</option>
                      </select>
                                  </div>
                            <div class="form-radio form-radio-flat" style="margin-top: 10px">
                              <label class="form-check-label">
                                  <select class="form-control form-control-lg" id="fal" disabled>
                        <option>Afrikaans</option>
                        <option>English</option>
                        <option>Venda</option>
                        <option>Zulu</option>
                        <option>Xhosa</option>
                        <option>Sotho</option>
                        <option>Swati</option>
                        <option>Ndebele</option>
                        <option>Tswana</option>
                        <option>Tsonga</option>
                      </select>   
                             </div>
                          </div>
                        </div>
                      </div>
                         <p class="card-description" style="margin-top:20px">Mathematics</p>
                         <div class="row">
                        <div class="col-md-6">
                          <div class="form-group">
                            <div class="form-check form-check-flat">
                              <label class="form-check-label">
                                <input type="checkbox" class="form-check-input"> Mathematics <i class="input-helper"></i></label>
                            </div>
                          </div>
                        </div>
                             <div class="col-md-6">
                          <div class="form-group">
                            <div class="form-check form-check-flat">
                              <label class="form-check-label">
                                <input type="checkbox" class="form-check-input"> Technical Mathematics <i class="input-helper"></i></label>
                            </div>
                          </div>
                        </div>
                              <div class="col-md-6">
                          <div class="form-group">
                            <div class="form-check form-check-flat">
                              <label class="form-check-label">
                                <input type="checkbox" class="form-check-input"> Mathematical Literacy <i class="input-helper"></i></label>
                            </div>
                          </div>
                        </div>
                        </div>
                         <p class="card-description" style="margin-top:20px">Section A</p>
                         <div class="row">
                        <div class="col-md-6">
                          <div class="form-group">
                            <div class="form-check form-check-flat">
                              <label class="form-check-label">
                                <input type="checkbox" class="form-check-input"> Life Sciences <i class="input-helper"></i></label>
                            </div>
                            <div class="form-check form-check-flat">
                              <label class="form-check-label">
                                <input type="checkbox" class="form-check-input"> Physical Sciences <i class="input-helper"></i></label>
                            </div>
                              <div class="form-check form-check-flat">
                              <label class="form-check-label">
                                <input type="checkbox" class="form-check-input"> Accounting <i class="input-helper"></i></label>
                            </div>
                              <div class="form-check form-check-flat">
                              <label class="form-check-label">
                                <input type="checkbox" class="form-check-input"> Tourism <i class="input-helper"></i></label>
                            </div>
                              <div class="form-check form-check-flat">
                              <label class="form-check-label">
                                <input type="checkbox" class="form-check-input"> Agricultural Sciences <i class="input-helper"></i></label>
                            </div>
                          </div>
                        </div>
                        <div class="col-md-6">
                          <div class="form-group">
                            <div class="form-check form-check-flat">
                              <label class="form-check-label">
                                <input type="radio" class="form-check-input" name="flatRadios1" id="" value=""> Geography <i class="input-helper"></i></label>
                            </div>
                          </div>
                            <div class="form-group">
                            <div class="form-check form-check-flat">
                              <label class="form-check-label">
                                <input type="radio" class="form-check-input" name="flatRadios1" id="" value=""> Business Studies <i class="input-helper"></i></label>
                            </div>
                          </div>
                            <div class="form-group">
                            <div class="form-check form-check-flat">
                              <label class="form-check-label">
                                <input type="radio" class="form-check-input" name="flatRadios1" id="" value=""> History <i class="input-helper"></i></label>
                            </div>
                                <div class="form-check form-check-flat">
                              <label class="form-check-label">
                                <input type="radio" class="form-check-input" name="flatRadios1" id="" value=""> Economics <i class="input-helper"></i></label>
                            </div>
                                <div class="form-check form-check-flat">
                              <label class="form-check-label">
                                <input type="radio" class="form-check-input" name="flatRadios1" id="" value=""> Religion Studies <i class="input-helper"></i></label>
                            </div>
                          </div>
                        </div>
                      </div>

                        <p class="card-description" style="margin-top:20px">Section B</p>
                         <div class="row">
                        <div class="col-md-6">
                          <div class="form-group">
                            <div class="form-check form-check-flat">
                              <label class="form-check-label">
                                <input type="checkbox" class="form-check-input"> Consumer Studies <i class="input-helper"></i></label>
                            </div>
                            <div class="form-check form-check-flat">
                              <label class="form-check-label">
                                <input type="checkbox" class="form-check-input"> Religion Studies <i class="input-helper"></i></label>
                            </div>
                              <div class="form-check form-check-flat">
                              <label class="form-check-label">
                                <input type="checkbox" class="form-check-input"> Engineering, Graphics & Design <i class="input-helper"></i></label>
                            </div>
                              <div class="form-check form-check-flat">
                              <label class="form-check-label">
                                <input type="checkbox" class="form-check-input"> Dramatic Arts <i class="input-helper"></i></label>
                            </div>
                          </div>
                        </div>
                        <div class="col-md-6">
                          <div class="form-group">
                            <div class="form-check form-check-flat">
                              <label class="form-check-label">
                                <input type="radio" class="form-check-input" name="flatRadios1" id="" value=""> Information Technology <i class="input-helper"></i></label>
                            </div>
                          </div>
                            <div class="form-group">
                            <div class="form-check form-check-flat">
                              <label class="form-check-label">
                                <input type="radio" class="form-check-input" name="flatRadios1" id="" value=""> Music <i class="input-helper"></i></label>
                            </div>
                          </div>
                            <div class="form-group">
                            <div class="form-check form-check-flat">
                              <label class="form-check-label">
                                <input type="radio" class="form-check-input" name="flatRadios1" id="" value=""> Visual Arts <i class="input-helper"></i></label>
                            </div>
                          </div>
                        </div>
                      </div>
                    </form>
                  </div>
                </div>
              </div>
                              <%-- GRADE 11 END --%>

                              <%-- GRADE 12 BEGIN --%>
                              <div class="col-md-6 grid-margin stretch-card" id="grade12Panel" style="visibility: visible; display: block">
                <div class="card">
                  <div class="card-body">
                    <h4 class="card-title">Select Grade 12 subjects for educator</h4>
                    <p class="card-description">Languages</p>
                    <div class="forms-sample">
                      <div class="row">
                        <div class="col-md-6">
                          <div class="form-group">
                            <div class="form-check form-check-flat">
                              <label class="form-check-label">
                                <input type="checkbox" class="form-check-input" id="homeLanguage12"/> Home Language <i class="input-helper"></i>
                              </label>
                            </div>
                            <div class="form-check form-check-flat" style="margin-top: 25px">
                              <label class="form-check-label">
                                <input type="checkbox" class="form-check-input" id="falLanguage12"/> First Additional Language <i class="input-helper"></i></label>
                            </div>
                          </div>
                        </div>
                        <div class="col-md-6">
                          <div class="form-group">
                            <div class="form-radio form-radio-flat">
                              <label class="form-check-label">
                        <select class="form-control form-control-lg" id="home12" disabled="">
                        <option>Afrikaans</option>
                        <option>English</option>
                        <option>Venda</option>
                        <option>Zulu</option>
                        <option>Xhosa</option>
                        <option>Sotho</option>
                        <option>Swati</option>
                        <option>Ndebele</option>
                        <option>Sepedi</option>
                        <option>Tswana</option>
                        <option>Tsonga</option>
                      </select>
                                  </div>
                            <div class="form-radio form-radio-flat" style="margin-top: 10px">
                              <label class="form-check-label">
                                  <select class="form-control form-control-lg" id="fal12" disabled>
                        <option>Afrikaans</option>
                        <option>English</option>
                        <option>Venda</option>
                        <option>Zulu</option>
                        <option>Xhosa</option>
                        <option>Sotho</option>
                        <option>Swati</option>
                        <option>Ndebele</option>
                        <option>Tswana</option>
                        <option>Tsonga</option>
                      </select>   
                             </div>
                          </div>
                        </div>
                      </div>
                         <p class="card-description" style="margin-top:20px">Mathematics</p>
                         <div class="row">
                        <div class="col-md-6">
                          <div class="form-group">
                            <div class="form-check form-check-flat">
                              <label class="form-check-label">
                                <input type="checkbox" class="form-check-input" id="math12"> Mathematics <i class="input-helper"></i></label>
                            </div>
                          </div>
                        </div>
                             <div class="col-md-6">
                          <div class="form-group">
                            <div class="form-check form-check-flat">
                              <label class="form-check-label">
                                <input type="checkbox" class="form-check-input" id="techMaths12"> Technical Mathematics <i class="input-helper"></i></label>
                            </div>
                          </div>
                        </div>
                              <div class="col-md-6">
                          <div class="form-group">
                            <div class="form-check form-check-flat">
                              <label class="form-check-label">
                                <input type="checkbox" class="form-check-input" id="mathsLit12"> Mathematical Literacy <i class="input-helper"></i></label>
                            </div>
                          </div>
                        </div>
                        </div>
                         <p class="card-description" style="margin-top:20px">Section A</p>
                         <div class="row">
                        <div class="col-md-6">
                          <div class="form-group">
                            <div class="form-check form-check-flat">
                              <label class="form-check-label">
                                <input type="checkbox" class="form-check-input" id="lifeSc12"/> Life Sciences <i class="input-helper"></i></label>
                            </div>
                            <div class="form-check form-check-flat">
                              <label class="form-check-label">
                                <input type="checkbox" class="form-check-input" id="physSc12"/> Physical Sciences <i class="input-helper"></i></label>
                            </div>
                              <div class="form-check form-check-flat">
                              <label class="form-check-label">
                                <input type="checkbox" class="form-check-input" id="account12"/> Accounting <i class="input-helper"></i></label>
                            </div>
                              <div class="form-check form-check-flat">
                              <label class="form-check-label">
                                <input type="checkbox" class="form-check-input" id="tour12"/> Tourism <i class="input-helper"></i></label>
                            </div>
                              <div class="form-check form-check-flat">
                              <label class="form-check-label">
                                <input type="checkbox" class="form-check-input" id="agrSc12"/> Agricultural Sciences <i class="input-helper"></i></label>
                            </div>
                          </div>
                        </div>
                        <div class="col-md-6">
                          <div class="form-group">
                            <div class="form-check form-check-flat">
                              <label class="form-check-label">
                                <input type="radio" class="form-check-input" id="geo12"/> Geography <i class="input-helper"></i></label>
                            </div>
                          </div>
                            <div class="form-group">
                            <div class="form-check form-check-flat">
                              <label class="form-check-label">
                                <input type="radio" class="form-check-input" id="busstud12"> Business Studies <i class="input-helper"></i></label>
                            </div>
                          </div>
                            <div class="form-group">
                            <div class="form-check form-check-flat">
                              <label class="form-check-label">
                                <input type="radio" class="form-check-input" id="hist12"> History <i class="input-helper"></i></label>
                            </div>
                                <div class="form-check form-check-flat">
                              <label class="form-check-label">
                                <input type="radio" class="form-check-input" id="eco12"> Economics <i class="input-helper"></i></label>
                            </div>
                                <div class="form-check form-check-flat">
                              <label class="form-check-label">
                                <input type="radio" class="form-check-input" id="reli12"/> Religion Studies <i class="input-helper"></i></label>
                            </div>
                          </div>
                        </div>
                      </div>

                        <p class="card-description" style="margin-top:20px">Section B</p>
                         <div class="row">
                        <div class="col-md-6">
                          <div class="form-group">
                            <div class="form-check form-check-flat">
                              <label class="form-check-label">
                                <input type="checkbox" class="form-check-input" id="cons12"> Consumer Studies <i class="input-helper"></i></label>
                            </div>
                              <div class="form-check form-check-flat">
                              <label class="form-check-label">
                                <input type="checkbox" class="form-check-input"> Engineering, Graphics & Design <i class="input-helper"></i></label>
                            </div>
                              <div class="form-check form-check-flat">
                              <label class="form-check-label">
                                <input type="checkbox" class="form-check-input"> Dramatic Arts <i class="input-helper"></i></label>
                            </div>

                              <div class="form-check form-check-flat">
                              <label class="form-check-label">
                                <input type="checkbox" class="form-check-input"> Life Orientation <i class="input-helper"></i></label>
                            </div>
                          </div>
                        </div>
                        <div class="col-md-6">
                          <div class="form-group">
                            <div class="form-check form-check-flat">
                              <label class="form-check-label">
                                <input type="radio" class="form-check-input" name="flatRadios1" id="" value=""> Information Technology <i class="input-helper"></i></label>
                            </div>
                          </div>
                            <div class="form-group">
                            <div class="form-check form-check-flat">
                              <label class="form-check-label">
                                <input type="radio" class="form-check-input" name="flatRadios1" id="" value=""> Music <i class="input-helper"></i></label>
                            </div>
                          </div>
                            <div class="form-group">
                            <div class="form-check form-check-flat">
                              <label class="form-check-label">
                                <input type="radio" class="form-check-input" name="flatRadios1" id="" value=""> Visual Arts <i class="input-helper"></i></label>
                            </div>
                          </div>
                        </div>
                      </div>
                            <asp:Button runat="server" class="btn btn-success mr-2" Text="Add Subjects" style="margin-top: 20px" ID="AddSubjectsButton12" OnClick="AddSubjectsButton12_"></asp:Button>
                        
                    </div>
                  </div>
                </div>
              </div>
                              <%-- GRADE 12 END --%>
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
                  </div>
                  <%-- REGISTRATION PANEL END --%>

                  <%-- REPORT GENERATION PANEL BEGIN --%>
                  <div id="ReportPanel" class="main-panel" style="display: none; visibility: hidden">
                      <div class="content-wrapper">
                          <!-- Page Title Header Starts-->
                          <div class="row page-title-header">
                              <div class="col-12">
                                  <div class="page-header">
                                      <h4><asp:Label runat="server" CssClass="page-title" Text="Report Generation">
                                      </asp:Label></h4>
                                  </div>

                              </div> 
                          </div>
                          <!-- Page Title Header Ends-->

                          <div class="row">
                              <div class="col-md-6 grid-margin stretch-card">
                <div class="card">
                  <div class="card-body">
                    <h4 class="card-title">Checkbox Controls</h4>
                    <p class="card-description">Checkbox and radio controls</p>
                    <form class="forms-sample">
                      <div class="row">
                        <div class="col-md-6">
                          <div class="form-group">
                            <div class="form-check">
                              <label class="form-check-label">
                                <input type="checkbox" class="form-check-input"> Default <i class="input-helper"></i></label>
                            </div>
                            <div class="form-check">
                              <label class="form-check-label">
                                <input type="checkbox" class="form-check-input" checked=""> Checked <i class="input-helper"></i></label>
                            </div>
                            <div class="form-check">
                              <label class="form-check-label">
                                <input type="checkbox" class="form-check-input" disabled=""> Disabled <i class="input-helper"></i></label>
                            </div>
                            <div class="form-check">
                              <label class="form-check-label">
                                <input type="checkbox" class="form-check-input" disabled="" checked=""> Disabled checked <i class="input-helper"></i></label>
                            </div>
                          </div>
                        </div>
                        <div class="col-md-6">
                          <div class="form-group">
                            <div class="form-radio">
                              <label class="form-check-label">
                                <input type="radio" class="form-check-input" name="optionsRadios" id="optionsRadios1" value="" checked=""> Option one <i class="input-helper"></i></label>
                            </div>
                            <div class="form-radio">
                              <label class="form-check-label">
                                <input type="radio" class="form-check-input" name="optionsRadios" id="optionsRadios2" value="option2"> Option two <i class="input-helper"></i></label>
                            </div>
                          </div>
                          <div class="form-group">
                            <div class="form-radio disabled">
                              <label class="form-check-label">
                                <input type="radio" class="form-check-input" name="optionsRadios2" id="optionsRadios3" value="option3" disabled=""> Option three is disabled <i class="input-helper"></i></label>
                            </div>
                            <div class="form-radio disabled">
                              <label class="form-check-label">
                                <input type="radio" class="form-check-input" name="optionsRadio2" id="optionsRadios4" value="option4" disabled="" checked=""> Option four is selected and disabled <i class="input-helper"></i></label>
                            </div>
                          </div>
                        </div>
                      </div>
                    </form>
                  </div>
                </div>
              </div>
                              <div class="col-md-6 grid-margin stretch-card">
                <div class="card">
                  <div class="card-body">
                    <h4 class="card-title">Checkbox Flat Controls</h4>
                    <p class="card-description">Checkbox and radio controls with flat design</p>
                    <form class="forms-sample">
                      <div class="row">
                        <div class="col-md-6">
                          <div class="form-group">
                            <div class="form-check form-check-flat">
                              <label class="form-check-label">
                                <input type="checkbox" class="form-check-input"> Default <i class="input-helper"></i></label>
                            </div>
                            <div class="form-check form-check-flat">
                              <label class="form-check-label">
                                <input type="checkbox" class="form-check-input" checked=""> Checked <i class="input-helper"></i></label>
                            </div>
                            <div class="form-check form-check-flat">
                              <label class="form-check-label">
                                <input type="checkbox" class="form-check-input" disabled=""> Disabled <i class="input-helper"></i></label>
                            </div>
                            <div class="form-check form-check-flat">
                              <label class="form-check-label">
                                <input type="checkbox" class="form-check-input" disabled="" checked=""> Disabled checked <i class="input-helper"></i></label>
                            </div>
                          </div>
                        </div>
                        <div class="col-md-6">
                          <div class="form-group">
                            <div class="form-radio form-radio-flat">
                              <label class="form-check-label">
                                <input type="radio" class="form-check-input" name="flatRadios1" id="flatRadios1" value="" checked=""> Option one <i class="input-helper"></i></label>
                            </div>
                            <div class="form-radio form-radio-flat">
                              <label class="form-check-label">
                                <input type="radio" class="form-check-input" name="flatRadios2" id="flatRadios2" value="option2"> Option two <i class="input-helper"></i></label>
                            </div>
                          </div>
                          <div class="form-group">
                            <div class="form-radio form-radio-flat disabled">
                              <label class="form-check-label">
                                <input type="radio" class="form-check-input" name="flatRadios3" id="flatRadios3" value="option3" disabled=""> Option three is disabled <i class="input-helper"></i></label>
                            </div>
                            <div class="form-radio form-radio-flat disabled">
                              <label class="form-check-label">
                                <input type="radio" class="form-check-input" name="flatRadios4" id="flatRadios4" value="option4" disabled="" checked=""> Option four is selected and disabled <i class="input-helper"></i></label>
                            </div>
                          </div>
                        </div>
                      </div>
                    </form>
                  </div>
                </div>
              </div>
                              <div class="col-12 grid-margin">
                <div class="card">
                  <div class="card-body">
                    <h4 class="card-title">Horizontal Two column</h4>
                    <form class="form-sample">
                      <p class="card-description"> Personal info </p>
                      <div class="row">
                        <div class="col-md-6">
                          <div class="form-group row">
                            <label class="col-sm-3 col-form-label">First Name</label>
                            <div class="col-sm-9">
                              <input type="text" class="form-control">
                            </div>
                          </div>
                        </div>
                        <div class="col-md-6">
                          <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Last Name</label>
                            <div class="col-sm-9">
                              <input type="text" class="form-control">
                            </div>
                          </div>
                        </div>
                      </div>
                      <div class="row">
                        <div class="col-md-6">
                          <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Gender</label>
                            <div class="col-sm-9">
                              <select class="form-control">
                                <option>Male</option>
                                <option>Female</option>
                              </select>
                            </div>
                          </div>
                        </div>
                        <div class="col-md-6">
                          <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Date of Birth</label>
                            <div class="col-sm-9">
                              <input class="form-control" placeholder="dd/mm/yyyy">
                            </div>
                          </div>
                        </div>
                      </div>
                      <div class="row">
                        <div class="col-md-6">
                          <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Category</label>
                            <div class="col-sm-9">
                              <select class="form-control">
                                <option>Category1</option>
                                <option>Category2</option>
                                <option>Category3</option>
                                <option>Category4</option>
                              </select>
                            </div>
                          </div>
                        </div>
                        <div class="col-md-6">
                          <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Membership</label>
                            <div class="col-sm-4">
                              <div class="form-radio">
                                <label class="form-check-label">
                                  <input type="radio" class="form-check-input" name="membershipRadios" id="membershipRadios1" value="" checked=""> Free <i class="input-helper"></i></label>
                              </div>
                            </div>
                            <div class="col-sm-5">
                              <div class="form-radio">
                                <label class="form-check-label">
                                  <input type="radio" class="form-check-input" name="membershipRadios" id="membershipRadios2" value="option2"> Professional <i class="input-helper"></i></label>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                      <p class="card-description"> Address </p>
                      <div class="row">
                        <div class="col-md-6">
                          <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Address 1</label>
                            <div class="col-sm-9">
                              <input type="text" class="form-control">
                            </div>
                          </div>
                        </div>
                        <div class="col-md-6">
                          <div class="form-group row">
                            <label class="col-sm-3 col-form-label">State</label>
                            <div class="col-sm-9">
                              <input type="text" class="form-control">
                            </div>
                          </div>
                        </div>
                      </div>
                      <div class="row">
                        <div class="col-md-6">
                          <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Address 2</label>
                            <div class="col-sm-9">
                              <input type="text" class="form-control">
                            </div>
                          </div>
                        </div>
                        <div class="col-md-6">
                          <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Postcode</label>
                            <div class="col-sm-9">
                              <input type="text" class="form-control">
                            </div>
                          </div>
                        </div>
                      </div>
                      <div class="row">
                        <div class="col-md-6">
                          <div class="form-group row">
                            <label class="col-sm-3 col-form-label">City</label>
                            <div class="col-sm-9">
                              <input type="text" class="form-control">
                            </div>
                          </div>
                        </div>
                        <div class="col-md-6">
                          <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Country</label>
                            <div class="col-sm-9">
                              <select class="form-control">
                                <option>America</option>
                                <option>Italy</option>
                                <option>Russia</option>
                                <option>Britain</option>
                              </select>
                            </div>
                          </div>
                        </div>
                      </div>
                            <div class="template-demo">
                          <button type="button" class="btn btn-info btn-block" style="height: 30px">GENERATE</button>
                        </div>
                    </form>
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
                  </div>
                  <%-- REPORT GENERATION END --%>

                  <%-- ANNOUNCEMENT PANEL BEGIN --%>
                  <div id="AnnouncementPanel" class="main-panel" style="display: none; visibility: hidden">
                      <div class="content-wrapper">
                          <!-- Page Title Header Starts-->
                          <div class="row page-title-header">
                              <div class="col-12">
                                  <div class="page-header">
                                      <h4><asp:Label runat="server" CssClass="page-title" Text="Announcements">
                                      </asp:Label></h4>
                                  </div>

                              </div> 
                          </div>
                          <!-- Page Title Header Ends-->

                          <div class="row">
                              <div class="col-12 grid-margin">
                <div class="card">
                  <div class="card-body">
                    <h4 class="card-title">Horizontal Two column</h4>
                    <form class="form-sample">
                      <p class="card-description"> Personal info </p>
                      <div class="row">
                        <div class="col-md-6">
                          <div class="form-group row">
                            <label class="col-sm-3 col-form-label">First Name</label>
                            <div class="col-sm-9">
                              <input type="text" class="form-control">
                            </div>
                          </div>
                        </div>
                        <div class="col-md-6">
                          <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Last Name</label>
                            <div class="col-sm-9">
                              <input type="text" class="form-control">
                            </div>
                          </div>
                        </div>
                      </div>
                      <div class="row">
                        <div class="col-md-6">
                          <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Gender</label>
                            <div class="col-sm-9">
                              <select class="form-control">
                                <option>Male</option>
                                <option>Female</option>
                              </select>
                            </div>
                          </div>
                        </div>
                        <div class="col-md-6">
                          <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Date of Birth</label>
                            <div class="col-sm-9">
                              <input class="form-control" placeholder="dd/mm/yyyy">
                            </div>
                          </div>
                        </div>
                      </div>
                      <div class="row">
                        <div class="col-md-6">
                          <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Category</label>
                            <div class="col-sm-9">
                              <select class="form-control">
                                <option>Category1</option>
                                <option>Category2</option>
                                <option>Category3</option>
                                <option>Category4</option>
                              </select>
                            </div>
                          </div>
                        </div>
                        <div class="col-md-6">
                          <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Membership</label>
                            <div class="col-sm-4">
                              <div class="form-radio">
                                <label class="form-check-label">
                                  <input type="radio" class="form-check-input" name="membershipRadios" id="membershipRadios1" value="" checked=""> Free <i class="input-helper"></i></label>
                              </div>
                            </div>
                            <div class="col-sm-5">
                              <div class="form-radio">
                                <label class="form-check-label">
                                  <input type="radio" class="form-check-input" name="membershipRadios" id="membershipRadios2" value="option2"> Professional <i class="input-helper"></i></label>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                      <p class="card-description"> Address </p>
                      <div class="row">
                        <div class="col-md-6">
                          <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Address 1</label>
                            <div class="col-sm-9">
                              <input type="text" class="form-control">
                            </div>
                          </div>
                        </div>
                        <div class="col-md-6">
                          <div class="form-group row">
                            <label class="col-sm-3 col-form-label">State</label>
                            <div class="col-sm-9">
                              <input type="text" class="form-control">
                            </div>
                          </div>
                        </div>
                      </div>
                      <div class="row">
                        <div class="col-md-6">
                          <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Address 2</label>
                            <div class="col-sm-9">
                              <input type="text" class="form-control">
                            </div>
                          </div>
                        </div>
                        <div class="col-md-6">
                          <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Postcode</label>
                            <div class="col-sm-9">
                              <input type="text" class="form-control">
                            </div>
                          </div>
                        </div>
                      </div>
                      <div class="row">
                        <div class="col-md-6">
                          <div class="form-group row">
                            <label class="col-sm-3 col-form-label">City</label>
                            <div class="col-sm-9">
                              <input type="text" class="form-control">
                            </div>
                          </div>
                        </div>
                        <div class="col-md-6">
                          <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Country</label>
                            <div class="col-sm-9">
                              <select class="form-control">
                                <option>America</option>
                                <option>Italy</option>
                                <option>Russia</option>
                                <option>Britain</option>
                              </select>
                            </div>
                          </div>
                        </div>
                      </div>
                            <div class="template-demo">
                          <button type="button" class="btn btn-info btn-block" style="height: 30px">ADD</button>
                        </div>
                    </form>
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
                  </div>
                  <%-- ANNOUNCEMENT PANEL END --%>
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
           <script src="assets/js/flax/nav.js"></script>
          <script src="assets/js/flax/register.js"></script>
          <!-- End custom js for this page-->
      </form>
    
</body>
</html>

