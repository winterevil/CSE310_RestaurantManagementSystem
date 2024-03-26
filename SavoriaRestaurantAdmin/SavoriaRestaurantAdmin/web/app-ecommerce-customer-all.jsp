<!DOCTYPE html>
<!-- beautify ignore:start -->
<html lang="en" class="light-style layout-navbar-fixed layout-menu-fixed layout-compact " dir="ltr" data-theme="theme-default" data-assets-path="assets/" data-template="vertical-menu-template">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0" />
        <title>Savoria Customer All</title>
        <meta name="description" content="Start your development with a Dashboard for Bootstrap 5" />
        <meta name="keywords" content="dashboard, bootstrap 5 dashboard, bootstrap 5 design, bootstrap 5">
        <script>(function (w, d, s, l, i) {
                w[l] = w[l] || [];
                w[l].push({
                    'gtm.start':
                        new Date().getTime(), event: 'gtm.js'
                });
                var f = d.getElementsByTagName(s)[0],
                    j = d.createElement(s), dl = l != 'dataLayer' ? '&l=' + l : '';
                j.async = true;
                j.src =
                    'www.googletagmanager.com/gtm5445.html?id=' + i + dl;
                f.parentNode.insertBefore(j, f);
            })(window, document, 'script', 'dataLayer', 'GTM-5J3LMKC');</script>
        <!-- End Google Tag Manager -->
        <!-- Favicon -->
        <link rel="icon"
        href="assets/logos/logo-ft.png" />
        <!-- Fonts -->
        <link rel="preconnect" href="https://fonts.googleapis.com/">
        <link rel="preconnect" href="https://fonts.gstatic.com/" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Public+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&amp;ampdisplay=swap" rel="stylesheet">
        <!-- Icons -->
        <link rel="stylesheet" href="assets/vendor/fonts/fontawesome.css" />
        <link rel="stylesheet" href="assets/vendor/fonts/tabler-icons.css"/>
        <link rel="stylesheet" href="assets/vendor/fonts/flag-icons.css" />
        <!-- Core CSS -->
        <link rel="stylesheet" href="assets/vendor/css/rtl/core.css" class="template-customizer-core-css" />
        <link rel="stylesheet" href="assets/vendor/css/rtl/theme-default.css" class="template-customizer-theme-css" />
        <link rel="stylesheet" href="assets/css/demo.css" />
        <!-- Vendors CSS -->
        <link rel="stylesheet" href="assets/vendor/libs/node-waves/node-waves.css" />
        <link rel="stylesheet" href="assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.css" />
        <link rel="stylesheet" href="assets/vendor/libs/typeahead-js/typeahead.css" />
        <link rel="stylesheet" href="assets/vendor/libs/datatables-bs5/datatables.bootstrap5.css">
        <link rel="stylesheet" href="assets/vendor/libs/datatables-responsive-bs5/responsive.bootstrap5.css">
        <link rel="stylesheet" href="assets/vendor/libs/datatables-buttons-bs5/buttons.bootstrap5.css">
        <link rel="stylesheet" href="assets/vendor/libs/select2/select2.css" />
        <link rel="stylesheet" href="assets/vendor/libs/%40form-validation/form-validation.css" />
        <!-- Page CSS -->
        <!-- Helpers -->
        <script src="assets/vendor/js/helpers.js"></script>
        <!--! Template customizer & Theme config files MUST be included after core stylesheets and helpers.js in the <head> section -->
        <!--? Template customizer: To hide customizer set displayCustomizer value false in config.js.  -->
        <!-- <script src="assets/vendor/js/template-customizer.js"></script> --></script>
        <!--? Config:  Mandatory theme config file contain global vars & default theme options, Set your preferred theme option in this file.  -->
        <script src="assets/js/config.js"></script>
    </head>
    <body>
        <style>
            .margin-right {
              margin: 0 16px 0 0;
            }
            .disabled-record{
                background-color: red;
            }
          </style>
      <%@ include file="validateSession.jsp" %>
        <noscript>
        <iframe src="https://www.googletagmanager.com/ns.html?id=GTM-5DDHKGP" height="0" width="0" style="display: none; visibility: hidden"></iframe>
        </noscript>
        <!-- End Google Tag Manager (noscript) -->
        <!-- Layout wrapper -->
        <div class="layout-wrapper layout-content-navbar  ">
            <div class="layout-container">
                <!-- Menu -->
                <aside id="layout-menu" class="layout-menu menu-vertical menu bg-menu-theme">
                  <div class="app-brand demo ">
                    <a href="index.jsp" class="app-brand-link">
                        <img src="assets/logos/logo-1.png" alt="Logo">
                    </a>
                    <a href="javascript:void(0);" class="layout-menu-toggle menu-link text-large ms-auto">
                      <i class="ti menu-toggle-icon d-none d-xl-block ti-sm align-middle"></i>
                      <i class="ti ti-x d-block d-xl-none ti-sm align-middle"></i>
                    </a>
                  </div>
                  <div class="menu-inner-shadow"></div>
                  <ul class="menu-inner py-1">
                    <!-- Dashboards -->
                    <li class="menu-item">
                      <a href="index.jsp" class="menu-link">
                        <i class="menu-icon tf-icons ti ti-smart-home"></i>
                        <div data-i18n="Dashboards">Dashboards</div>
                      </a>
                    </li>
                    <li class="menu-item active open">
                      <a href="javascript:void(0);" class="menu-link menu-toggle">
                        <i class='menu-icon tf-icons ti ti-shopping-cart'></i>
                        <div>Restaurant Management</div>
                      </a>
                      <ul class="menu-sub">
                        <li class="menu-item">
                          <a href="javascript:void(0);" class="menu-link menu-toggle">
                            <div data-i18n="Products">Products</div>
                          </a>
                          <ul class="menu-sub">
                            <li class="menu-item">
                              <a href="app-ecommerce-product-list.jsp" class="menu-link">
                                <div data-i18n="Product List">Product List</div>
                              </a>
                            </li>
                            <li class="menu-item">
                              <a href="app-ecommerce-product-add.jsp" class="menu-link">
                                <div data-i18n="Add Product">Add Product</div>
                              </a>
                            </li>
                          </ul>
                        </li>
                        <li class="menu-item">
                          <a href="javascript:void(0);" class="menu-link menu-toggle">
                            <div data-i18n="Order">Order</div>
                          </a>
                          <ul class="menu-sub">
                            <li class="menu-item">
                              <a href="app-ecommerce-order-list.jsp" class="menu-link">
                                <div data-i18n="Order List">Order List</div>
                              </a>
                            </li>
                            <li class="menu-item">
                              <a href="app-ecommerce-order-details.jsp" class="menu-link">
                                <div data-i18n="Order Details">Order Details</div>
                              </a>
                            </li>
                          </ul>
                        </li>
                        <li class="menu-item">
                          <a href="javascript:void(0);" class="menu-link menu-toggle">
                            <div data-i18n="Customer">Customer</div>
                          </a>
                          <ul class="menu-sub">
                            <li class="menu-item">
                              <a href="app-ecommerce-customer-all.jsp" class="menu-link">
                                <div data-i18n="All Customers">All Customers</div>
                              </a>
                            </li>
                            <li class="menu-item">
                              <a href="javascript:void(0);" class="menu-link menu-toggle">
                                <div data-i18n="Customer Details">Customer Details</div>
                              </a>
                              <ul class="menu-sub">
                                <li class="menu-item">
                                  <a href="app-ecommerce-customer-details-overview.jsp" class="menu-link">
                                    <div data-i18n="Overview">Overview</div>
                                  </a>
                                </li>
                                <li class="menu-item">
                                  <a href="app-ecommerce-customer-details-security.jsp" class="menu-link">
                                    <div data-i18n="Security">Security</div>
                                  </a>
                                </li>
                                <li class="menu-item">
                                  <a href="app-ecommerce-customer-details-billing.jsp" class="menu-link">
                                    <div data-i18n="Address & Billing">Address & Billing</div>
                                  </a>
                                </li>
                                <li class="menu-item">
                                  <a href="app-ecommerce-customer-details-notifications.jsp" class="menu-link">
                                    <div data-i18n="Notifications">Notifications</div>
                                  </a>
                                </li>
                              </ul>
                            </li>
                          </ul>
                        </li>
                        <li class="menu-item">
                          <a href="app-ecommerce-manage-reviews.jsp" class="menu-link">
                            <div data-i18n="Manage Reviews">Manage Reviews</div>
                          </a>
                        </li>
                      </ul>
                    </li>
                    <!-- e-commerce-app menu end -->   
                    </ul>
                </aside>
                <!-- / Menu -->
                <!-- Layout container -->
                <div class="layout-page">
                    <!-- Navbar -->
                    <nav class="layout-navbar container-xxl navbar navbar-expand-xl navbar-detached align-items-center bg-navbar-theme" id="layout-navbar">
                        <div class="layout-menu-toggle navbar-nav align-items-xl-center me-3 me-xl-0   d-xl-none ">
                            <a class="nav-item nav-link px-0 me-xl-4" href="javascript:void(0)">
                                <i class="ti ti-menu-2 ti-sm"></i>
                            </a>
                        </div>
                        <div class="navbar-nav-right d-flex align-items-center" id="navbar-collapse">
                            <!-- Search -->
                            <div class="navbar-nav align-items-center">
                                <div class="nav-item navbar-search-wrapper mb-0">
                                    <a class="nav-item nav-link search-toggler d-flex align-items-center px-0" href="javascript:void(0);">
                                        <i class="ti ti-search ti-md me-2"></i>
                                        <span class="d-none d-md-inline-block text-muted">Search (Ctrl+/)</span>
                                    </a>
                                </div>
                            </div>
                            <!-- /Search -->
                            <ul class="navbar-nav flex-row align-items-center ms-auto">
                                <!-- Quick links  -->
                                <li class="nav-item dropdown-shortcuts navbar-dropdown dropdown me-2 me-xl-0">
                                    <a class="nav-link dropdown-toggle hide-arrow" href="javascript:void(0);" data-bs-toggle="dropdown" data-bs-auto-close="outside" aria-expanded="false">
                                        <i class='ti ti-layout-grid-add ti-md'></i>
                                    </a>
                                    <div class="dropdown-menu dropdown-menu-end py-0">
                                        <div class="dropdown-menu-header border-bottom">
                                            <div class="dropdown-header d-flex align-items-center py-3">
                                                <h5 class="text-body mb-0 me-auto">Shortcuts</h5>
                                                <a href="javascript:void(0)" class="dropdown-shortcuts-add text-body" data-bs-toggle="tooltip" data-bs-placement="top" title="Add shortcuts">
                                                    <i class="ti ti-sm ti-apps"></i>
                                                </a>
                                            </div>
                                        </div>
                                        <div class="dropdown-shortcuts-list scrollable-container">
                                            <div class="row row-bordered overflow-visible g-0">
                                                <div class="dropdown-shortcuts-item col">
                                                    <span class="dropdown-shortcuts-icon rounded-circle mb-2">
                                                        <i class="ti ti-calendar fs-4"></i>
                                                    </span>
                                                    <a href="app-calendar.html" class="stretched-link">Calendar</a>
                                                    <small class="text-muted mb-0">Appointments</small>
                                                </div>
                                                <div class="dropdown-shortcuts-item col">
                                                    <span class="dropdown-shortcuts-icon rounded-circle mb-2">
                                                        <i class="ti ti-file-invoice fs-4"></i>
                                                    </span>
                                                    <a href="app-invoice-list.html" class="stretched-link">Invoice App</a>
                                                    <small class="text-muted mb-0">Manage Accounts</small>
                                                </div>
                                            </div>
                                            <div class="row row-bordered overflow-visible g-0">
                                                <div class="dropdown-shortcuts-item col">
                                                    <span class="dropdown-shortcuts-icon rounded-circle mb-2">
                                                        <i class="ti ti-users fs-4"></i>
                                                    </span>
                                                    <a href="app-user-list.html" class="stretched-link">User App</a>
                                                    <small class="text-muted mb-0">Manage Users</small>
                                                </div>
                                                <div class="dropdown-shortcuts-item col">
                                                    <span class="dropdown-shortcuts-icon rounded-circle mb-2">
                                                        <i class="ti ti-lock fs-4"></i>
                                                    </span>
                                                    <a href="app-access-roles.html" class="stretched-link">Role Management</a>
                                                    <small class="text-muted mb-0">Permission</small>
                                                </div>
                                            </div>
                                            <div class="row row-bordered overflow-visible g-0">
                                                <div class="dropdown-shortcuts-item col">
                                                    <span class="dropdown-shortcuts-icon rounded-circle mb-2">
                                                        <i class="ti ti-chart-bar fs-4"></i>
                                                    </span>
                                                    <a href="index.html" class="stretched-link">Dashboard</a>
                                                    <small class="text-muted mb-0">User Profile</small>
                                                </div>
                                                <div class="dropdown-shortcuts-item col">
                                                    <span class="dropdown-shortcuts-icon rounded-circle mb-2">
                                                        <i class="ti ti-settings fs-4"></i>
                                                    </span>
                                                    <a href="pages-account-settings-account.html" class="stretched-link">Setting</a>
                                                    <small class="text-muted mb-0">Account Settings</small>
                                                </div>
                                            </div>
                                            <div class="row row-bordered overflow-visible g-0">
                                                <div class="dropdown-shortcuts-item col">
                                                    <span class="dropdown-shortcuts-icon rounded-circle mb-2">
                                                        <i class="ti ti-help fs-4"></i>
                                                    </span>
                                                    <a href="pages-faq.html" class="stretched-link">FAQs</a>
                                                    <small class="text-muted mb-0">FAQs & Articles</small>
                                                </div>
                                                <div class="dropdown-shortcuts-item col">
                                                    <span class="dropdown-shortcuts-icon rounded-circle mb-2">
                                                        <i class="ti ti-square fs-4"></i>
                                                    </span>
                                                    <a href="modal-examples.html" class="stretched-link">Modals</a>
                                                    <small class="text-muted mb-0">Useful Popups</small>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <!-- Quick links -->
                                <!-- Notification -->
                                <li class="nav-item dropdown-notifications navbar-dropdown dropdown me-3 me-xl-1">
                                    <a class="nav-link dropdown-toggle hide-arrow" href="javascript:void(0);" data-bs-toggle="dropdown" data-bs-auto-close="outside" aria-expanded="false">
                                        <i class="ti ti-bell ti-md"></i>
                                        <span class="badge bg-danger rounded-pill badge-notifications">5</span>
                                    </a>
                                    <ul class="dropdown-menu dropdown-menu-end py-0">
                                        <li class="dropdown-menu-header border-bottom">
                                            <div class="dropdown-header d-flex align-items-center py-3">
                                                <h5 class="text-body mb-0 me-auto">Notification</h5>
                                                <a href="javascript:void(0)" class="dropdown-notifications-all text-body" data-bs-toggle="tooltip" data-bs-placement="top" title="Mark all as read">
                                                    <i class="ti ti-mail-opened fs-4"></i>
                                                </a>
                                            </div>
                                        </li>
                                        <li class="dropdown-notifications-list scrollable-container">
                                            <ul class="list-group list-group-flush">
                                                <li class="list-group-item list-group-item-action dropdown-notifications-item">
                                                    <div class="d-flex">
                                                        <div class="flex-shrink-0 me-3">
                                                            <div class="avatar">
                                                                <img src="assets/img/avatars/1.png" alt class="h-auto rounded-circle">
                                                            </div>
                                                        </div>
                                                        <div class="flex-grow-1">
                                                            <h6 class="mb-1">Congratulation Lettie 🎉</h6>
                                                            <p class="mb-0">Won the monthly best seller gold badge</p>
                                                            <small class="text-muted">1h ago</small>
                                                        </div>
                                                        <div class="flex-shrink-0 dropdown-notifications-actions">
                                                            <a href="javascript:void(0)" class="dropdown-notifications-read">
                                                                <span class="badge badge-dot"></span>
                                                            </a>
                                                            <a href="javascript:void(0)" class="dropdown-notifications-archive">
                                                                <span class="ti ti-x"></span>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </li>
                                                <li class="list-group-item list-group-item-action dropdown-notifications-item">
                                                    <div class="d-flex">
                                                        <div class="flex-shrink-0 me-3">
                                                            <div class="avatar">
                                                                <span class="avatar-initial rounded-circle bg-label-danger">CF</span>
                                                            </div>
                                                        </div>
                                                        <div class="flex-grow-1">
                                                            <h6 class="mb-1">Charles Franklin</h6>
                                                            <p class="mb-0">Accepted your connection</p>
                                                            <small class="text-muted">12hr ago</small>
                                                        </div>
                                                        <div class="flex-shrink-0 dropdown-notifications-actions">
                                                            <a href="javascript:void(0)" class="dropdown-notifications-read">
                                                                <span class="badge badge-dot"></span>
                                                            </a>
                                                            <a href="javascript:void(0)" class="dropdown-notifications-archive">
                                                                <span class="ti ti-x"></span>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </li>
                                                <li class="list-group-item list-group-item-action dropdown-notifications-item marked-as-read">
                                                    <div class="d-flex">
                                                        <div class="flex-shrink-0 me-3">
                                                            <div class="avatar">
                                                                <img src="assets/img/avatars/2.png" alt class="h-auto rounded-circle">
                                                            </div>
                                                        </div>
                                                        <div class="flex-grow-1">
                                                            <h6 class="mb-1">New Message ✉️</h6>
                                                            <p class="mb-0">You have new message from Natalie</p>
                                                            <small class="text-muted">1h ago</small>
                                                        </div>
                                                        <div class="flex-shrink-0 dropdown-notifications-actions">
                                                            <a href="javascript:void(0)" class="dropdown-notifications-read">
                                                                <span class="badge badge-dot"></span>
                                                            </a>
                                                            <a href="javascript:void(0)" class="dropdown-notifications-archive">
                                                                <span class="ti ti-x"></span>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </li>
                                                <li class="list-group-item list-group-item-action dropdown-notifications-item">
                                                    <div class="d-flex">
                                                        <div class="flex-shrink-0 me-3">
                                                            <div class="avatar">
                                                                <span class="avatar-initial rounded-circle bg-label-success">
                                                                    <i class="ti ti-shopping-cart"></i>
                                                                </span>
                                                            </div>
                                                        </div>
                                                        <div class="flex-grow-1">
                                                            <h6 class="mb-1">Whoo! You have new order 🛒 </h6>
                                                            <p class="mb-0">ACME Inc. made new order $1,154</p>
                                                            <small class="text-muted">1 day ago</small>
                                                        </div>
                                                        <div class="flex-shrink-0 dropdown-notifications-actions">
                                                            <a href="javascript:void(0)" class="dropdown-notifications-read">
                                                                <span class="badge badge-dot"></span>
                                                            </a>
                                                            <a href="javascript:void(0)" class="dropdown-notifications-archive">
                                                                <span class="ti ti-x"></span>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </li>
                                                <li class="list-group-item list-group-item-action dropdown-notifications-item marked-as-read">
                                                    <div class="d-flex">
                                                        <div class="flex-shrink-0 me-3">
                                                            <div class="avatar">
                                                                <img src="assets/img/avatars/9.png" alt class="h-auto rounded-circle">
                                                            </div>
                                                        </div>
                                                        <div class="flex-grow-1">
                                                            <h6 class="mb-1">Application has been approved 🚀 </h6>
                                                            <p class="mb-0">Your ABC project application has been approved.</p>
                                                            <small class="text-muted">2 days ago</small>
                                                        </div>
                                                        <div class="flex-shrink-0 dropdown-notifications-actions">
                                                            <a href="javascript:void(0)" class="dropdown-notifications-read">
                                                                <span class="badge badge-dot"></span>
                                                            </a>
                                                            <a href="javascript:void(0)" class="dropdown-notifications-archive">
                                                                <span class="ti ti-x"></span>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </li>
                                                <li class="list-group-item list-group-item-action dropdown-notifications-item marked-as-read">
                                                    <div class="d-flex">
                                                        <div class="flex-shrink-0 me-3">
                                                            <div class="avatar">
                                                                <span class="avatar-initial rounded-circle bg-label-success">
                                                                    <i class="ti ti-chart-pie"></i>
                                                                </span>
                                                            </div>
                                                        </div>
                                                        <div class="flex-grow-1">
                                                            <h6 class="mb-1">Monthly report is generated</h6>
                                                            <p class="mb-0">July monthly financial report is generated </p>
                                                            <small class="text-muted">3 days ago</small>
                                                        </div>
                                                        <div class="flex-shrink-0 dropdown-notifications-actions">
                                                            <a href="javascript:void(0)" class="dropdown-notifications-read">
                                                                <span class="badge badge-dot"></span>
                                                            </a>
                                                            <a href="javascript:void(0)" class="dropdown-notifications-archive">
                                                                <span class="ti ti-x"></span>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </li>
                                                <li class="list-group-item list-group-item-action dropdown-notifications-item marked-as-read">
                                                    <div class="d-flex">
                                                        <div class="flex-shrink-0 me-3">
                                                            <div class="avatar">
                                                                <img src="assets/img/avatars/5.png" alt class="h-auto rounded-circle">
                                                            </div>
                                                        </div>
                                                        <div class="flex-grow-1">
                                                            <h6 class="mb-1">Send connection request</h6>
                                                            <p class="mb-0">Peter sent you connection request</p>
                                                            <small class="text-muted">4 days ago</small>
                                                        </div>
                                                        <div class="flex-shrink-0 dropdown-notifications-actions">
                                                            <a href="javascript:void(0)" class="dropdown-notifications-read">
                                                                <span class="badge badge-dot"></span>
                                                            </a>
                                                            <a href="javascript:void(0)" class="dropdown-notifications-archive">
                                                                <span class="ti ti-x"></span>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </li>
                                                <li class="list-group-item list-group-item-action dropdown-notifications-item">
                                                    <div class="d-flex">
                                                        <div class="flex-shrink-0 me-3">
                                                            <div class="avatar">
                                                                <img src="assets/img/avatars/6.png" alt class="h-auto rounded-circle">
                                                            </div>
                                                        </div>
                                                        <div class="flex-grow-1">
                                                            <h6 class="mb-1">New message from Jane</h6>
                                                            <p class="mb-0">Your have new message from Jane</p>
                                                            <small class="text-muted">5 days ago</small>
                                                        </div>
                                                        <div class="flex-shrink-0 dropdown-notifications-actions">
                                                            <a href="javascript:void(0)" class="dropdown-notifications-read">
                                                                <span class="badge badge-dot"></span>
                                                            </a>
                                                            <a href="javascript:void(0)" class="dropdown-notifications-archive">
                                                                <span class="ti ti-x"></span>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </li>
                                                <li class="list-group-item list-group-item-action dropdown-notifications-item marked-as-read">
                                                    <div class="d-flex">
                                                        <div class="flex-shrink-0 me-3">
                                                            <div class="avatar">
                                                                <span class="avatar-initial rounded-circle bg-label-warning">
                                                                    <i class="ti ti-alert-triangle"></i>
                                                                </span>
                                                            </div>
                                                        </div>
                                                        <div class="flex-grow-1">
                                                            <h6 class="mb-1">CPU is running high</h6>
                                                            <p class="mb-0">CPU Utilization Percent is currently at 88.63%,</p>
                                                            <small class="text-muted">5 days ago</small>
                                                        </div>
                                                        <div class="flex-shrink-0 dropdown-notifications-actions">
                                                            <a href="javascript:void(0)" class="dropdown-notifications-read">
                                                                <span class="badge badge-dot"></span>
                                                            </a>
                                                            <a href="javascript:void(0)" class="dropdown-notifications-archive">
                                                                <span class="ti ti-x"></span>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </li>
                                            </ul>
                                        </li>
                                        <li class="dropdown-menu-footer border-top">
                                            <a href="javascript:void(0);" class="dropdown-item d-flex justify-content-center text-primary p-2 h-px-40 mb-1 align-items-center">
                                                View all notifications
                                            </a>
                                        </li>
                                    </ul>
                                </li>
                                <!--/ Notification -->
                                <!-- User -->
                                <li class="nav-item navbar-dropdown dropdown-user dropdown">
                                    <a class="nav-link dropdown-toggle hide-arrow" href="javascript:void(0);" data-bs-toggle="dropdown">
                                        <div class="avatar avatar-online">
                                            <img src="assets/images/avatar/admin.gif" alt class="h-auto rounded-circle">
                                        </div>
                                    </a>
                                    <ul class="dropdown-menu dropdown-menu-end">
                                        <li>
                                            <a class="dropdown-item" href="pages-account-settings-account.html">
                                                <div class="d-flex">
                                                    <div class="flex-shrink-0 me-3">
                                                        <div class="avatar avatar-online">
                                                            <img src="assets/images/avatar/admin.gif" alt class="h-auto rounded-circle">
                                                        </div>
                                                    </div>
                                                    <div class="flex-grow-1">
                                                      <% savoria.admin.account.Account account=(savoria.admin.account.Account)
                                                      session.getAttribute("account"); if (account !=null) { %>
                                                      <span class="fw-medium d-block">
                                                        <%= account.getName() %>
                                                      </span>
                                                      <% } %>
                                                        <small class="text-muted">Admin</small>
                                                    </div>
                                                </div>
                                            </a>
                                        </li>
                                        <li>
                                            <div class="dropdown-divider"></div>
                                        </li>
                                        <li>
                                            <a class="dropdown-item" href="pages-profile-user.html">
                                                <i class="ti ti-user-check me-2 ti-sm"></i>
                                                <span class="align-middle">My Profile</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a class="dropdown-item" href="pages-account-settings-account.html">
                                                <i class="ti ti-settings me-2 ti-sm"></i>
                                                <span class="align-middle">Settings</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a class="dropdown-item" href="pages-account-settings-billing.html">
                                                <span class="d-flex align-items-center align-middle">
                                                    <i class="flex-shrink-0 ti ti-credit-card me-2 ti-sm"></i>
                                                    <span class="flex-grow-1 align-middle">Billing</span>
                                                    <span class="flex-shrink-0 badge badge-center rounded-pill bg-label-danger w-px-20 h-px-20">2</span>
                                                </span>
                                            </a>
                                        </li>
                                        <li>
                                            <div class="dropdown-divider"></div>
                                        </li>
                                        <li>
                                            <a class="dropdown-item" href="pages-faq.html">
                                                <i class="ti ti-help me-2 ti-sm"></i>
                                                <span class="align-middle">FAQ</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a class="dropdown-item" href="pages-pricing.html">
                                                <i class="ti ti-currency-dollar me-2 ti-sm"></i>
                                                <span class="align-middle">Pricing</span>
                                            </a>
                                        </li>
                                        <li>
                                            <div class="dropdown-divider"></div>
                                        </li>
                                        <li>
                                            <a class="dropdown-item" href="Logout">
                                              <i class="ti ti-logout me-2 ti-sm"></i>
                                              <span class="align-middle">Log Out</span>
                                            </a>
                                          </li>
                                    </ul>
                                </li>
                                <!--/ User -->
                            </ul>
                        </div>
                        <!-- Search Small Screens -->
                        <div class="navbar-search-wrapper search-input-wrapper  d-none">
                            <input type="text" class="form-control search-input container-xxl border-0" placeholder="Search..." aria-label="Search...">
                            <i class="ti ti-x ti-sm search-toggler cursor-pointer"></i>
                        </div>
                    </nav>
                    <!-- / Navbar -->
                    <!-- Content wrapper -->
                    <div class="content-wrapper">
                        <!-- Content -->
                        <div class="container-xxl flex-grow-1 container-p-y">
                            <h4 class="py-3 mb-2">
                                <span class="text-muted fw-light">Savoria /</span> All Customers

                            </h4>
                            <!-- customers List Table -->
                            <div class="card">
                                <div class="card-datatable table-responsive">
                                    <table class="datatables-customers table border-top">
                                        <thead>
                                            <tr>
                                                <th></th>
                                                <th></th>
                                                <th>Customer</th>
                                                <th class="text-nowrap">Customer Id</th>
                                                <th>Status</th>
                                                <th>Country</th>
                                                <th>Order</th>
                                                <th class="text-nowrap">Total Spent</th>
                                            </tr>
                                        </thead>
                                    </table>
                                </div>
                                <!-- Offcanvas to add new customer -->
                                <div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvasEcommerceCustomerAdd" aria-labelledby="offcanvasEcommerceCustomerAddLabel">
                                    <div class="offcanvas-header">
                                        <h5 id="offcanvasEcommerceCustomerAddLabel" class="offcanvas-title">Add Customer</h5>
                                        <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
                                    </div>
                                    <div class="offcanvas-body mx-0 flex-grow-0">
                                        <form class="ecommerce-customer-add pt-0" id="eCommerceCustomerAddForm" onsubmit="return false">
                                            <div class="ecommerce-customer-add-basic mb-3">
                                                <h6 class="mb-3">Basic Information</h6>
                                                <div class="mb-3">
                                                    <label class="form-label" for="ecommerce-customer-add-name">Name*</label>
                                                    <input type="text" class="form-control" id="ecommerce-customer-add-name" placeholder="John Doe" name="customerName" aria-label="John Doe" />
                                                </div>
                                                <div class="mb-3">
                                                    <label class="form-label" for="ecommerce-customer-add-email">Email*</label>
                                                    <input type="text" id="ecommerce-customer-add-email" class="form-control" placeholder="john.doe@example.com" aria-label="john.doe@example.com" name="customerEmail" />
                                                </div>
                                                <div>
                                                    <label class="form-label" for="ecommerce-customer-add-contact">Mobile</label>
                                                    <input type="text" id="ecommerce-customer-add-contact" class="form-control phone-mask" placeholder="+(123) 456-7890" aria-label="+(123) 456-7890" name="customerContact" />
                                                </div>
                                            </div>
                                            <div class="ecommerce-customer-add-shiping mb-3 pt-3">
                                                <h6 class="mb-3">Shipping Information</h6>
                                                <div class="mb-3">
                                                    <label class="form-label" for="ecommerce-customer-add-address">Address Line 1</label>
                                                    <input type="text" id="ecommerce-customer-add-address" class="form-control" placeholder="45 Roker Terrace" aria-label="45 Roker Terrace" name="customerAddress1" />
                                                </div>
                                                <div class="mb-3">
                                                    <label class="form-label" for="ecommerce-customer-add-address-2">Address Line 2</label>
                                                    <input type="text" id="ecommerce-customer-add-address-2" class="form-control" aria-label="address2" name="customerAddress2" />
                                                </div>
                                                <div class="mb-3">
                                                    <label class="form-label" for="ecommerce-customer-add-town">Town</label>
                                                    <input type="text" id="ecommerce-customer-add-town" class="form-control" placeholder="New York" aria-label="New York" name="customerTown" />
                                                </div>
                                                <div class="row mb-3">
                                                    <div class="col-12 col-sm-6">
                                                        <label class="form-label" for="ecommerce-customer-add-state">State / Province</label>
                                                        <input type="text" id="ecommerce-customer-add-state" class="form-control" placeholder="Southern tip" aria-label="Southern tip" name="customerState" />
                                                    </div>
                                                    <div class="col-12 col-sm-6">
                                                        <label class="form-label" for="ecommerce-customer-add-post-code">Post Code</label>
                                                        <input type="text" id="ecommerce-customer-add-post-code" class="form-control" placeholder="734990" aria-label="734990" name="pin" pattern="[0-9]{8}" maxlength="8" />
                                                    </div>
                                                </div>
                                                <div>
                                                    <label class="form-label" for="ecommerce-customer-add-country">Country</label>
                                                    <select id="ecommerce-customer-add-country" class="select2 form-select">
                                                        <option value="">Select</option>
                                                        <option value="Australia">Australia</option>
                                                        <option value="Bangladesh">Bangladesh</option>
                                                        <option value="Belarus">Belarus</option>
                                                        <option value="Brazil">Brazil</option>
                                                        <option value="Canada">Canada</option>
                                                        <option value="China">China</option>
                                                        <option value="France">France</option>
                                                        <option value="Germany">Germany</option>
                                                        <option value="India">India</option>
                                                        <option value="Indonesia">Indonesia</option>
                                                        <option value="Israel">Israel</option>
                                                        <option value="Italy">Italy</option>
                                                        <option value="Japan">Japan</option>
                                                        <option value="Korea">Korea, Republic of</option>
                                                        <option value="Mexico">Mexico</option>
                                                        <option value="Philippines">Philippines</option>
                                                        <option value="Russia">Russian Federation</option>
                                                        <option value="South Africa">South Africa</option>
                                                        <option value="Thailand">Thailand</option>
                                                        <option value="Turkey">Turkey</option>
                                                        <option value="Ukraine">Ukraine</option>
                                                        <option value="United Arab Emirates">United Arab Emirates</option>
                                                        <option value="United Kingdom">United Kingdom</option>
                                                        <option value="United States">United States</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="d-sm-flex mb-3 pt-3">
                                                <div class="me-auto mb-2 mb-md-0">
                                                    <h6 class="mb-0">Use as a billing address?</h6>
                                                    <small class="text-muted">If you need more info, please check budget.</small>
                                                </div>
                                                <label class="switch m-auto pe-2">
                                                    <input type="checkbox" class="switch-input" />
                                                    <span class="switch-toggle-slider">
                                                        <span class="switch-on"></span>
                                                        <span class="switch-off"></span>
                                                    </span>
                                                </label>
                                            </div>
                                            <div class="pt-3">
                                                <button type="submit" class="btn btn-primary me-sm-3 me-1 data-submit">Add</button>
                                                <button type="reset" class="btn btn-label-danger" data-bs-dismiss="offcanvas">Discard</button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- / Content -->
                        <!-- Footer -->
                        <footer class="content-footer footer bg-footer-theme">
                          <div class="container-xxl">
                            <div
                              class="footer-container d-flex align-items-center justify-content-between py-2 flex-md-row flex-column">
                              <div> &copy;
                                <script>
                                    document.write(new Date().getFullYear())
                                </script>, made with love by <a href="https://google.com/" target="_blank"
                                  class="footer-link text-primary fw-medium">Savoria</a>
                              </div>
                            </div>
                          </div>
                        </footer>
                        <!-- / Footer -->
                        <div class="content-backdrop fade"></div>
                    </div>
                    <!-- Content wrapper -->
                </div>
                <!-- / Layout page -->
            </div>
            <!-- Overlay -->
            <div class="layout-overlay layout-menu-toggle"></div>
            <!-- Drag Target Area To SlideIn Menu On Small Screens -->
            <div class="drag-target"></div>
        </div>
        <!-- Core JS -->
        <!-- build:js assets/vendor/js/core.js -->
        <script src="assets/vendor/libs/jquery/jquery.js"></script>
        <script src="assets/vendor/libs/popper/popper.js"></script>
        <script src="assets/vendor/js/bootstrap.js"></script>
        <script src="assets/vendor/libs/node-waves/node-waves.js"></script>
        <script src="assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.js"></script>
        <script src="assets/vendor/libs/hammer/hammer.js"></script>
        <script src="assets/vendor/libs/i18n/i18n.js"></script>
        <script src="assets/vendor/libs/typeahead-js/typeahead.js"></script>
        <script src="assets/vendor/js/menu.js"></script>
        <!-- endbuild -->
        <!-- Vendors JS -->
        <script src="assets/vendor/libs/moment/moment.js"></script>
        <script src="assets/vendor/libs/datatables-bs5/datatables-bootstrap5.js"></script>
        <script src="assets/vendor/libs/select2/select2.js"></script>
        <script src="assets/vendor/libs/%40form-validation/popular.js"></script>
        <script src="assets/vendor/libs/%40form-validation/bootstrap5.js"></script>
        <script src="assets/vendor/libs/%40form-validation/auto-focus.js"></script>
        <script src="assets/vendor/libs/cleavejs/cleave.js"></script>
        <script src="assets/vendor/libs/cleavejs/cleave-phone.js"></script>
        <!-- Main JS -->
        <script src="assets/js/main.js"></script>
        <!-- Page JS -->
        <script src="assets/js/app-ecommerce-customer-all.js"></script>
    </body>

    <script>
        $(document).ready(function () {
            var customerIds = [];
            var contextPath = "${pageContext.request.contextPath}";

            $(document).on('change', '.dt-checkboxes', function () {
                var customerId = $(this).data('id');

                if ($(this).is(':checked')) {
                    customerIds.push(customerId);
                } else {
                    var index = customerIds.indexOf(customerId);
                    if (index > -1) {
                        customerIds.splice(index, 1);
                    }
                }
            });

            $(document).on('click', '.disabled-record', function () {
                if (customerIds.length == 0) {
                    alert('Please select atleast one customer');
                    return;
                }
                console.log(customerIds);
                var customerIdsString = customerIds.join(',');

                $.post(contextPath + '/DisableUser', { customer: customerIdsString }, function (response) {
                    setTimeout(function () {
                        location.reload();
                    }, 2000);
                });
            });

            $(document).on('click', '.enabled-record', function () {
                if (customerIds.length == 0) {
                    alert('Please select atleast one customer');
                    return;
                }
                console.log(customerIds);
                var customerIdsString = customerIds.join(',');

                $.post(contextPath + '/EnableUser', { customer: customerIdsString }, function (response) {
                    setTimeout(function () {
                        location.reload();
                    }, 2000);
                });
            });
        });
    </script>
    <!-- <script type="text/javascript"
    src="scripts/magicmouse.js"></script>
  <script type="text/javascript" src="scripts/mouseeffect.js"></script> -->
</html>
<!-- beautify ignore:end -->