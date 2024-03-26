<!DOCTYPE html>
<!--[if IE 8 ]><html class="ie" xmlns="http://www.w3.org/1999/xhtml" xml:lang="en-US" lang="en-US"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!-->
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en-US" lang="en-US">
<!--<![endif]-->

<head>
    <!-- Basic Page Needs -->
    <meta charset="utf-8">
    <!--[if IE]><meta http-equiv='X-UA-Compatible' content='IE=edge,chrome=1'><![endif]-->
    <title>Savoria Restaurant</title>

    <meta name="author" content="themesflat.com">

    <!-- Mobile Specific Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

    <!-- Theme Style -->
    <link rel="stylesheet" type="text/css" href="assets/css/style.css">

    <!-- Reponsive -->
    <link rel="stylesheet" type="text/css" href="assets/css/responsive.css">

    <link rel="stylesheet"
        href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@24,200,0,0" />

    <!-- Favicon and Touch Icons  -->
    <link rel="shortcut icon" href="assets/images/favicon.png">
    <link rel="apple-touch-icon-precomposed" href="assets/images/favicon.png">

</head>

<body class="body">

    <!-- preload -->
    <div class="preload preload-container">
        <div class="middle"></div>
    </div>
    <!-- /preload -->

    <!-- #wrapper -->
    <div id="wrapper">
        <!-- #page -->
        <div id="page" class="">

            <!-- header -->
            <header id="header_main" class="header header-fixed">

                <div class="header-inner">
                    <div class="header-inner-wrap">
                        <div class="flex">

                            <div class="header-left">
                                <img src="assets/images/logo/logo-ft.png" alt="">
                            </div>
                        </div>
                        <nav class="main-nav">
                            <ul class="menu-primary-menu">
                                <li class="menu-item current-menu-item">
                                    <a href="#">Home</a>
                                </li>
                                <li class="menu-item menu-item-has-children">
                                    <a href="#">Pages</a>
                                     
                                        

                                </li>
                                <li class="menu-item menu-item-has-children">
                                    <a href="Menu">Menu</a>
                                </li>
                                <li class="menu-item menu-item-has-children">
                                    <a href="#">Portfolio</a>

                                </li>
                                <li class="menu-item menu-item-has-children">
                                    <a href="#">Blog</a>

                                </li>
                                <li class="menu-item">
                                    <a href="contact.html">Contact</a>
                                </li>
                            </ul>
                        </nav><!-- /main-nav -->
                        <div class="header-right">
                            <% citprog.restaurantweb.login.Account account=(citprog.restaurantweb.login.Account)
                                session.getAttribute("account"); if (account !=null) { %>
                                <a href="Logout" style="font-size: 24px;">Welcome back, <%= account.getName() %>!</a>
                                <% } else { %>
                                    <a href="login.jsp">
                                        <span class="material-symbols-outlined" style="color:#c6ac83; font-size:39px;">
                                            account_circle
                                        </span>
                                    </a>
                                    <% } %>
                                        <div class="header-search">
                                            <a href="#" class="show-search">
                                                <i class="icon-search"></i>
                                            </a>
                                            <div class="top-search">
                                                <form class="search-form relative">
                                                    <fieldset class="search">
                                                        <input type="search" placeholder="Search..." class=""
                                                            name="search" tabindex="2" value="" aria-required="true"
                                                            required="">
                                                    </fieldset>
                                                    <div class="">
                                                        <button class="" type="submit"><i
                                                                class="icon-search"></i></button>
                                                    </div>
                                                </form>
                                            </div>

                                        </div>


                                        <div class="mobile-button ">
                                            <span></span>
                                        </div>
                        </div><!-- /header-right -->
                    </div>
                </div>
                <div class="mobile-nav-wrap">
                    <div class="overlay-mobile-nav"></div>
                    <div class="inner-mobile-nav">
                        <div class="relative">
                            <div class="mobile-nav-close">
                                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"
                                    fill="white" x="0px" y="0px" width="20px" height="20px" viewBox="0 0 122.878 122.88"
                                    enable-background="new 0 0 122.878 122.88" xml:space="preserve">
                                    <g>
                                        <path
                                            d="M1.426,8.313c-1.901-1.901-1.901-4.984,0-6.886c1.901-1.902,4.984-1.902,6.886,0l53.127,53.127l53.127-53.127 c1.901-1.902,4.984-1.902,6.887,0c1.901,1.901,1.901,4.985,0,6.886L68.324,61.439l53.128,53.128c1.901,1.901,1.901,4.984,0,6.886 c-1.902,1.902-4.985,1.902-6.887,0L61.438,68.326L8.312,121.453c-1.901,1.902-4.984,1.902-6.886,0 c-1.901-1.901-1.901-4.984,0-6.886l53.127-53.128L1.426,8.313L1.426,8.313z" />
                                    </g>
                                </svg>
                            </div>
                        </div>
                        <nav id="mobile-main-nav" class="mobile-main-nav">
                            <ul id="menu-mobile-menu" class="menu">
                                <li class="menu-item current-menu-item">
                                    <a href="#">Home</a>
                                </li>
                                <li class="menu-item">
                                    <a class="item-menu-mobile" href="#">Pages</a>
                                    
                                        

                                </li>
                                <li class="menu-item">
                                    <a class="item-menu-mobile" href="menu-1.jsp">Menu</a>
                                </li>
                                <li class="menu-item menu-item-has-children-mobile">
                                    <a class="item-menu-mobile" href="#">Portfolio</a>

                                </li>
                                <li class="menu-item menu-item-has-children-mobile">
                                    <a class="item-menu-mobile" href="#">Blog</a>

                                </li>
                                <li class="menu-item">
                                    <a href="contact.html">Contact</a>
                                </li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </header>
            <!-- /header -->

            <!-- page-title -->
            <div class="page-title">
                <div class="swiper relative slider-page-title">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">
                            <div class="content text-center">
                                <div class="themesflat-container">
                                    <div class="row">
                                        <div class="col-12">
                                            <div class="text">Bringing Class To Cuisine</div>
                                            <div class="heading">Where every flavor tells a story</div>
                                            <p>Craving some delicious Paris food? Maybe you’re in the mood for a juicy
                                                steak? No matter what kind of meal you have in <br> mind, The Brochette
                                                Restaurant is ready to prepare it for you.</p>
                                            <a class="button-two-line" href="menu-1.html">DISCOVERY MENU</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="content text-right">
                                <div class="themesflat-container">
                                    <div class="row">
                                        <div class="col-12">
                                            <div class="text">Bringing Class To Cuisine</div>
                                            <div class="heading">Where every flavor tells a story</div>
                                            <p>Craving some delicious Paris food? Maybe you’re in the mood for a juicy
                                                steak? No matter what kind of meal you have in <br> mind, The Brochette
                                                Restaurant is ready to prepare it for you.</p>
                                            <a class="button-two-line" href="menu-1.html">DISCOVERY MENU</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="content text-left">
                                <div class="themesflat-container">
                                    <div class="row">
                                        <div class="col-12">
                                            <div class="text">Bringing Class To Cuisine</div>
                                            <div class="heading">Where every flavor tells a story</div>
                                            <p>Craving some delicious Paris food? Maybe you’re in the mood for a juicy
                                                steak? No matter what kind of meal you have in <br> mind, The Brochette
                                                Restaurant is ready to prepare it for you.</p>
                                            <a class="button-two-line" href="menu-1.html">DISCOVERY MENU</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-pagination style-number page-title-pagination"></div>
                </div>
            </div>
            <!-- /page-title -->

            <!-- wg-about-us -->
            <div class="wg-about-us">
                <div class="themesflat-container">
                    <div class="row">
                        <div class="col-lg-7">
                            <div class="content">
                                <div class="heading-section">
                                    <div class="sub wow fadeInUp">About Restaurant</div>
                                    <div class="main wow fadeInUp">5 star luxury <br> restaurant in Paris</div>
                                    <div class="divider wow fadeInUp">
                                        <div></div>
                                    </div>
                                    <div class="description wow fadeInUp">We see our customers as invited guests to a
                                        party, and we are the hosts. <br> It’s our job every day to make every important
                                        aspect.</div>
                                </div>
                                <p class="wow fadeInUp">It’s the story of two French entrepreneurs, Rémi Laba and
                                    Aymeric Clemente, who met in New York City in the early 2000’s and decided to join
                                    forces to open the first Bagatelle in the City. Drawing on their respective
                                    experiences in the hospitality industry, the duo imagined a place celebrating the
                                    South of France’s festive spirit.</p>
                                <a class="button-two-line wow fadeInUp" href="about.html">MORE ABOUT US</a>
                            </div>
                        </div>
                        <div class="col-lg-5">
                            <div class="image wow fadeInRight">
                                <img class="w-full" src="assets/images/box-item/about-1.jpg" alt="">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /wg-about-us -->

            <!-- wg-open-hours -->
            <div class="wg-open-hours">
                <div class="themesflat-container">
                    <div class="row">
                        <div class="col-lg-7">
                            <div class="image wow fadeInLeft">
                                <img src="assets/images/box-item/open_hours.jpg" alt="">
                            </div>
                        </div>
                        <div class="col-lg-5">
                            <div class="content">
                                <div class="heading-section">
                                    <div class="main wow fadeInUp">open time hours</div>
                                    <div class="description wow fadeInUp">Come and experience the classy atmosphere with
                                        delicious food and music at brochette</div>
                                </div>
                                <ul class="list-content">
                                    <li class="wow fadeInUp">
                                        <p class="text">Opening Hour:</p>
                                    </li>
                                    <li class="wow fadeInUp">
                                        <p>Monday - Friday : 9.00am - 22.00pm</p>
                                    </li>
                                    <li class="wow fadeInUp">
                                        <p>Saturday: 10.00am - 23.00pm</p>
                                    </li>
                                    <li class="wow fadeInUp">
                                        <p>Sunday: 5.00pm - 23.00pm</p>
                                    </li>
                                    <li class="wow fadeInUp">
                                        <p>Holidays: Closed</p>
                                    </li>
                                    <li class="wow fadeInUp">
                                        <p>Happy Hour: 18.00pm - 20.00pm</p>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /wg-open-hours -->

            <!-- wg-box-icon -->
            <div class="wg-box-icon">
                <div class="themesflat-container">
                    <div class="row">
                        <div class="col-md-3">
                            <div class="box-icon wow fadeInUp">
                                <div class="icon"><img src="assets/images/item-background/food.png" alt=""></div>
                                <div class="title"><a href="#">Food is always fresh</a></div>
                                <p>The food we choose is always fresh and carefully checked before processing</p>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="box-icon wow fadeInUp" data-wow-delay="0.1s">
                                <div class="icon"><img src="assets/images/item-background/chef.png" alt=""></div>
                                <div class="title"><a href="#">longtime chef</a></div>
                                <p>The best Chefs in the world always have their own secrets for their dishes</p>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="box-icon wow fadeInUp" data-wow-delay="0.2s">
                                <div class="icon"><img src="assets/images/item-background/music.png" alt=""></div>
                                <div class="title"><a href="#">Luxury space & music</a></div>
                                <p>What's better than enjoying delicious food and music at the same time</p>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="box-icon wow fadeInUp mb-0" data-wow-delay="0.3s">
                                <div class="icon"><img src="assets/images/item-background/wines.png" alt=""></div>
                                <div class="title"><a href="#">drinks and wines</a></div>
                                <p>The wines at the restaurant are all precious and of the best quality for you enjoy
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="wg-video-full">
                <div class="video-wrap">
                    <a href="https://www.youtube.com/watch?v=eI_LjETc_Ak" class="popup-youtube">
                        <div class="icon">
                            <i class="icon-play3"></i>
                        </div>
                    </a>
                </div>
            </div>
            <!-- /wg-box-icon -->

            <!-- wg-private-event -->
            <div class="wg-private-event snare-before snare-after">
                <div class="themesflat-container">
                    <div class="row">
                        <div class="col-12">
                            <div class="heading-section text-center">
                                <div class="sub wow fadeInUp">Private Event</div>
                                <div class="main wow fadeInUp">perfect place for events</div>
                                <div class="divider wow fadeInUp">
                                    <div></div>
                                </div>
                            </div>
                            <p class="wow fadeInUp">Whether you're hosting a corporate event, cocktail party, luncheon,
                                dinner, meeting, shower, wedding reception, bat/bar mitzvah or rehearsal dinner, we know
                                we can offer you and your guests a truly memorable event. </p>
                            <a class="button-two-line m-auto wow fadeInUp" href="book-a-table.html">GET STARTED FOR YOUR
                                EVENT</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="event-grid">
                <div class="box-event">
                    <img src="assets/images/box-item/event-item-1.jpg" alt="">
                    <div class="content">
                        <div class="icon"><i class="icon-fork"></i></div>
                        <div class="title"><a href="#">meeting</a></div>
                        <p>We are extremely happy to provide refined cater- <br> ing services for your special events!
                            By choosing <br> us, you get a guarantee that everything.</p>
                    </div>
                </div>
                <div class="box-event">
                    <img src="assets/images/box-item/event-item-2.jpg" alt="">
                    <div class="content">
                        <div class="icon"><i class="icon-wedding-rings"></i></div>
                        <div class="title"><a href="#">wedding</a></div>
                        <p>We are extremely happy to provide refined cater- <br> ing services for your special events!
                            By choosing <br> us, you get a guarantee that everything.</p>
                    </div>
                </div>
                <div class="box-event">
                    <img src="assets/images/box-item/event-item-3.jpg" alt="">
                    <div class="content">
                        <div class="icon"><i class="icon-serving-dish"></i></div>
                        <div class="title"><a href="#">private room</a></div>
                        <p>We are extremely happy to provide refined cater- <br> ing services for your special events!
                            By choosing <br> us, you get a guarantee that everything.</p>
                    </div>
                </div>
                <div class="box-event">
                    <img src="assets/images/box-item/event-item-4.jpg" alt="">
                    <div class="content">
                        <div class="icon"><i class="icon-wine-bottle"></i></div>
                        <div class="title"><a href="#">birtday event</a></div>
                        <p>We are extremely happy to provide refined cater- <br> ing services for your special events!
                            By choosing <br> us, you get a guarantee that everything.</p>
                    </div>
                </div>
            </div>
            <!-- /wg-private-event -->

            <!-- wg-testimonial -->
            <div class="wg-testimonial">
                <div class="swiper-container" data-swiper='{
                    "spaceBetween": 0,
                    "slidesPerView": 1,
                    "navigation": {
                        "nextEl": ".testimonial-next",
                        "prevEl": ".testimonial-prev"
                    }
                }'>
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">
                            <div class="testimonial-item">
                                <img class=" wow fadeInUp" src="assets/images/item-background/icon-quote.png" alt="">
                                <div class="title wow fadeInUp"><a href="#">Good restaurant, delicious food, classy
                                        atmosphere</a></div>
                                <p class=" wow fadeInUp">Please thank your team for their professional, efficient and
                                    friendly service on Sat night. The chefs smashed it and the drinks flowed freely!
                                    Everyone was impressed and were quite taken with how cost effective it was to have
                                    Ochre do what you did.</p>
                                <div class="rating wow fadeInUp">
                                    <i class="icon-star"></i>
                                    <i class="icon-star"></i>
                                    <i class="icon-star"></i>
                                    <i class="icon-star"></i>
                                    <i class="icon-star"></i>
                                </div>
                                <div class="author wow fadeInUp"><a href="#">Margaret - Food critic</a></div>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="testimonial-item">
                                <img src="assets/images/item-background/icon-quote.png" alt="">
                                <div class="title"><a href="#">Good restaurant, delicious food, classy atmosphere</a>
                                </div>
                                <p>Please thank your team for their professional, efficient and friendly service on Sat
                                    night. The chefs smashed it and the drinks flowed freely! Everyone was impressed and
                                    were quite taken with how cost effective it was to have Ochre do what you did.</p>
                                <div class="rating">
                                    <i class="icon-star"></i>
                                    <i class="icon-star"></i>
                                    <i class="icon-star"></i>
                                    <i class="icon-star"></i>
                                    <i class="icon-star"></i>
                                </div>
                                <div class="author"><a href="#">Margaret - Food critic</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-button-next testimonial-next style-arrow-default"></div>
                    <div class="swiper-button-prev testimonial-prev style-arrow-default"></div>
                </div>
            </div>
            <!-- /wg-testimonial -->

            <!-- wg-our-menu -->
            <div class="wg-our-menu">
                <div class="themesflat-container">
                    <div class="row">
                        <div class="col-md-5">
                            <div class="content">
                                <img class=" wow fadeInUp" src="assets/images/item-background/menu-1.png" alt="">
                                <div class="heading-section">
                                    <div class="sub wow fadeInUp">The taste makes it special</div>
                                    <div class="main wow fadeInUp">FROM OUR MENU</div>
                                    <div class="divider wow fadeInUp">
                                        <div></div>
                                    </div>
                                </div>
                                <p class=" wow fadeInUp">We always give our customers a feeling of peace of mind
                                    and comfort when dining at our restaurant. Fusce vestibulum
                                    erat ac quam bibendum auctor.</p>
                                <a class="button-two-line wow fadeInUp" href="menu-1.html">VIEW ALL MENU</a>
                            </div>
                        </div>
                        <div class="col-md-7">
                            <div class="box-menu border-over-column">
                                <div class="wrap">
                                    <div class="widget-tabs">
                                        <ul class="widget-menu-tab">
                                            <li class="item-title active">
                                                <span class="inner">special</span>
                                            </li>
                                            <li class="item-title">
                                                <span class="inner">seafood</span>
                                            </li>
                                            <li class="item-title">
                                                <span class="inner">desserts</span>
                                            </li>
                                            <li class="item-title">
                                                <span class="inner">wine & drink</span>
                                            </li>
                                        </ul>
                                        <div class="widget-content-tab">
                                            <div class="widget-content-inner active">
                                                <div class="wg-menu-item">
                                                    <div class="flex items-center">
                                                        <div class="name"><a href="#">Purple Corn Tostada</a></div>
                                                        <div class="line"></div>
                                                        <div class="price">$32</div>
                                                    </div>
                                                    <p>Candied Jerusalem artichokes, truffle</p>
                                                </div>
                                                <div class="wg-menu-item">
                                                    <div class="flex items-center">
                                                        <div class="name"><a href="#">Bruno's Scribble</a></div>
                                                        <div class="line"></div>
                                                        <div class="price">$25</div>
                                                    </div>
                                                    <p>Citrus, wild rocket condiment</p>
                                                </div>
                                                <div class="wg-menu-item">
                                                    <div class="flex items-center">
                                                        <div class="name"><a href="#">Fresh Oysters Dozen</a></div>
                                                        <div class="line"></div>
                                                        <div class="price">$35</div>
                                                    </div>
                                                    <p>Candied salmon, basil potato puree</p>
                                                </div>
                                                <div class="wg-menu-item">
                                                    <div class="flex items-center">
                                                        <div class="name"><a href="#">Wild Mushroom Arancini</a></div>
                                                        <div class="line"></div>
                                                        <div class="price">$23</div>
                                                    </div>
                                                    <p>Creamy saffron, sauce Vierge</p>
                                                </div>
                                                <div class="wg-menu-item mb-0">
                                                    <div class="flex items-center">
                                                        <div class="name"><a href="#">Crab & Prawn Bites</a></div>
                                                        <div class="line"></div>
                                                        <div class="price">$60</div>
                                                    </div>
                                                    <p>Pumpkin, endives with hazelnuts</p>
                                                </div>
                                            </div>
                                            <div class="widget-content-inner">
                                                <div class="wg-menu-item">
                                                    <div class="flex items-center">
                                                        <div class="name"><a href="#">Purple Corn Tostada</a></div>
                                                        <div class="line"></div>
                                                        <div class="price">$32</div>
                                                    </div>
                                                    <p>Candied Jerusalem artichokes, truffle</p>
                                                </div>
                                                <div class="wg-menu-item">
                                                    <div class="flex items-center">
                                                        <div class="name"><a href="#">Bruno's Scribble</a></div>
                                                        <div class="line"></div>
                                                        <div class="price">$25</div>
                                                    </div>
                                                    <p>Citrus, wild rocket condiment</p>
                                                </div>
                                                <div class="wg-menu-item">
                                                    <div class="flex items-center">
                                                        <div class="name"><a href="#">Fresh Oysters Dozen</a></div>
                                                        <div class="line"></div>
                                                        <div class="price">$35</div>
                                                    </div>
                                                    <p>Candied salmon, basil potato puree</p>
                                                </div>
                                                <div class="wg-menu-item">
                                                    <div class="flex items-center">
                                                        <div class="name"><a href="#">Wild Mushroom Arancini</a></div>
                                                        <div class="line"></div>
                                                        <div class="price">$23</div>
                                                    </div>
                                                    <p>Creamy saffron, sauce Vierge</p>
                                                </div>
                                                <div class="wg-menu-item mb-0">
                                                    <div class="flex items-center">
                                                        <div class="name"><a href="#">Crab & Prawn Bites</a></div>
                                                        <div class="line"></div>
                                                        <div class="price">$60</div>
                                                    </div>
                                                    <p>Pumpkin, endives with hazelnuts</p>
                                                </div>
                                            </div>
                                            <div class="widget-content-inner">
                                                <div class="wg-menu-item">
                                                    <div class="flex items-center">
                                                        <div class="name"><a href="#">Purple Corn Tostada</a></div>
                                                        <div class="line"></div>
                                                        <div class="price">$32</div>
                                                    </div>
                                                    <p>Candied Jerusalem artichokes, truffle</p>
                                                </div>
                                                <div class="wg-menu-item">
                                                    <div class="flex items-center">
                                                        <div class="name"><a href="#">Bruno's Scribble</a></div>
                                                        <div class="line"></div>
                                                        <div class="price">$25</div>
                                                    </div>
                                                    <p>Citrus, wild rocket condiment</p>
                                                </div>
                                                <div class="wg-menu-item">
                                                    <div class="flex items-center">
                                                        <div class="name"><a href="#">Fresh Oysters Dozen</a></div>
                                                        <div class="line"></div>
                                                        <div class="price">$35</div>
                                                    </div>
                                                    <p>Candied salmon, basil potato puree</p>
                                                </div>
                                                <div class="wg-menu-item">
                                                    <div class="flex items-center">
                                                        <div class="name"><a href="#">Wild Mushroom Arancini</a></div>
                                                        <div class="line"></div>
                                                        <div class="price">$23</div>
                                                    </div>
                                                    <p>Creamy saffron, sauce Vierge</p>
                                                </div>
                                                <div class="wg-menu-item mb-0">
                                                    <div class="flex items-center">
                                                        <div class="name"><a href="#">Crab & Prawn Bites</a></div>
                                                        <div class="line"></div>
                                                        <div class="price">$60</div>
                                                    </div>
                                                    <p>Pumpkin, endives with hazelnuts</p>
                                                </div>
                                            </div>
                                            <div class="widget-content-inner">
                                                <div class="wg-menu-item">
                                                    <div class="flex items-center">
                                                        <div class="name"><a href="#">Purple Corn Tostada</a></div>
                                                        <div class="line"></div>
                                                        <div class="price">$32</div>
                                                    </div>
                                                    <p>Candied Jerusalem artichokes, truffle</p>
                                                </div>
                                                <div class="wg-menu-item">
                                                    <div class="flex items-center">
                                                        <div class="name"><a href="#">Bruno's Scribble</a></div>
                                                        <div class="line"></div>
                                                        <div class="price">$25</div>
                                                    </div>
                                                    <p>Citrus, wild rocket condiment</p>
                                                </div>
                                                <div class="wg-menu-item">
                                                    <div class="flex items-center">
                                                        <div class="name"><a href="#">Fresh Oysters Dozen</a></div>
                                                        <div class="line"></div>
                                                        <div class="price">$35</div>
                                                    </div>
                                                    <p>Candied salmon, basil potato puree</p>
                                                </div>
                                                <div class="wg-menu-item">
                                                    <div class="flex items-center">
                                                        <div class="name"><a href="#">Wild Mushroom Arancini</a></div>
                                                        <div class="line"></div>
                                                        <div class="price">$23</div>
                                                    </div>
                                                    <p>Creamy saffron, sauce Vierge</p>
                                                </div>
                                                <div class="wg-menu-item mb-0">
                                                    <div class="flex items-center">
                                                        <div class="name"><a href="#">Crab & Prawn Bites</a></div>
                                                        <div class="line"></div>
                                                        <div class="price">$60</div>
                                                    </div>
                                                    <p>Pumpkin, endives with hazelnuts</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /wg-our-menu -->

            <!-- wg-reservations -->
            <div class="wg-reservations">
                <div class="themesflat-container">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="content">
                                <div class="heading-section text-center">
                                    <div class="sub wow fadeInUp">Reservations</div>
                                    <div class="main wow fadeInUp">booking a table</div>
                                    <div class="text wow fadeInUp">After booking we will call the customer to confirm,
                                        so please <br> enter your name and phone number is required</div>
                                    <div class="divider wow fadeInUp">
                                        <div></div>
                                    </div>
                                </div>
                                <form class="book-form">
                                    <fieldset class="name">
                                        <input type="text" placeholder="Name*" class="" name="name" tabindex="2"
                                            value="" aria-required="true" required="">
                                    </fieldset>
                                    <div class="columns">
                                        <fieldset class="phone">
                                            <input type="text" placeholder="Phone*" class="" name="text" tabindex="2"
                                                value="" aria-required="true" required="">
                                        </fieldset>
                                        <fieldset class="hour select">
                                            <input type="time" class="" name="time" tabindex="2" value="19:00"
                                                aria-required="true" required="">
                                        </fieldset>
                                    </div>
                                    <div class="columns">
                                        <fieldset class="select event-number">
                                            <select class="">
                                                <option value="Subject" selected="">People</option>
                                                <option value="Subject">5</option>
                                                <option value="Subject">10</option>
                                            </select>
                                        </fieldset>
                                        <fieldset class="time select">
                                            <input type="date" class="" name="date" tabindex="2" value="2023-06-18"
                                                aria-required="true" required="">
                                        </fieldset>
                                    </div>
                                    <div class="bot">
                                        <a href="#" class="button-two-line w-full " type="submit">BOOK NOW</a>
                                    </div>
                                </form>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="image wow fadeInRight">
                                <img src="assets/images/box-item/reservation-1.jpg" alt="">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /wg-reservations -->

            <!-- wg-location -->
            <div class="wg-location">
                <div class="themesflat-container">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="box-map">
                                <div id="map"></div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="content">
                                <div class="heading-section text-center">
                                    <div class="sub wow fadeInUp">Location</div>
                                    <div class="main wow fadeInUp">how to find us</div>
                                    <div class="text wow fadeInUp">It is inconvenient to not know the address, below is
                                        the address <br> and contact of the brochette restaurant</div>
                                    <div class="divider wow fadeInUp">
                                        <div></div>
                                    </div>
                                </div>
                                <div class="title wow fadeInUp">book a table & address:</div>
                                <div class="number wow fadeInUp">+39 055 123456</div>
                                <p class="wow fadeInUp">Savoria Restaurant 123 Passeig de Gràcia, Barcelona 10021, Spain
                                    <a href="https://themesflat.co/cdn-cgi/l/email-protection" class="__cf_email__"
                                        data-cfemail="195b786a7075707a766b7c6a6d786c6b78776d597e74787075377a7674">[email&#160;protected]</a>
                                </p>
                                <div class="title wow fadeInUp">Opening Hour:</div>
                                <p class="text wow fadeInUp">Mon - Fri : 9.00am - 22.00pm, Holidays : Close</p>
                                <a class="button-two-line wow fadeInUp m-auto" href="menu-1.html">GET DIRECTIONS</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /wg-location -->

            <!-- gallery -->
            <div class="gallery-wrap">
                <div class="themesflat-container full">
                    <div class="row">
                        <div class="col-xl-3 col-md-6">
                            <div class="gallery-item">
                                <img src="assets/images/box-item/gallery-1.jpg" alt="">
                                <div class="content">
                                    <div class="wrap">
                                        <a href="#" class="icon"></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-md-6">
                            <div class="gallery-item">
                                <img src="assets/images/box-item/gallery-2.jpg" alt="">
                                <div class="content">
                                    <div class="wrap">
                                        <a href="#" class="icon"></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-md-6">
                            <div class="gallery-item">
                                <img src="assets/images/box-item/gallery-3.jpg" alt="">
                                <div class="content">
                                    <div class="wrap">
                                        <a href="#" class="icon"></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-md-6">
                            <div class="gallery-item">
                                <img src="assets/images/box-item/gallery-4.jpg" alt="">
                                <div class="content">
                                    <div class="wrap">
                                        <a href="#" class="icon"></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /gallery -->

            <!-- wg-action -->
            <div class="wg-action t1">
                <div class="themesflat-container">
                    <div class="row">
                        <div class="col-12">
                            <div class="title wow fadeInUp">Sign up to receive news and offers from us!</div>
                            <form class="relative wow fadeInUp">
                                <fieldset class="email">
                                    <input type="email" placeholder="Email address*" class="" name="email" tabindex="2"
                                        value="" aria-required="true" required="">
                                </fieldset>
                                <a href="#" class="button-two-line">REGISTER NOW</a>
                            </form>
                            <p class="wow fadeInUp">* We promise not to spam your inbox in any way</p>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /wg-action -->

            <!-- footer -->
            <footer id="footer" class="footer">
                <div class="themesflat-container">
                    <div class="row">
                        <div class="col-md-4">
                            <div class="footer-left">
                                <div class="footer-title">WE ARE HERE</div>
                                <p>
                                    123 Passeig de Gràcia, Barcelona <br>
                                    <a href="https://themesflat.co/cdn-cgi/l/email-protection" class="__cf_email__"
                                        data-cfemail="febc8c919d969b8a8a9b8c9b8d8a9f8b8c9f908abe99939f9792d09d9193">[email&#160;protected]</a>
                                    <br>
                                    +39-055-123456
                                </p>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="footer-center">
                                <p>A distinctive, well-preserved and comfortable space, high-quality products, authentic
                                    cuisine, food and drinks are done flawlessly.</p>
                                <div class="widget-social-text">
                                    <ul class="flex-wrap">
                                        <li><a href="#">facebook</a></li>
                                        <li><a href="#">instagram</a></li>
                                        <li><a href="#">tripadvisor</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="footer-right">
                                <div class="footer-title">OPENING TIME</div>
                                <p>
                                    Mon - Fri: 08:00 am - 09:00pm <br>
                                    Sat - Sun: 10:00 am - 11:00pm <br>
                                    Holiday: Close
                                </p>
                            </div>
                        </div>
                        <div class="header-top">
                            <div class="left">
                                <div class="wg-information">
                                    <div class="icon">
                                        <svg xmlns="http://www.w3.org/2000/svg"
                                            xmlns:xlink="http://www.w3.org/1999/xlink" width="13" height="16"
                                            viewBox="0 0 13 16">
                                            <image id="_" data-name="" width="13" height="16"
                                                xlink:href="data:img/png;base64,iVBORw0KGgoAAAANSUhEUgAAABoAAAAgCAYAAAAMq2gFAAADaUlEQVRIia2We29UVRTFfx0uCC3TFtoCxUJRgwISCIjGQEz8xxg/l1/HT4CJPEQwCAIFlTdKQCmP1nagUx5TyE5+x1xO7p1pE3dy00nnzF577bX2Prfv9Hff0iUawGpgDTAADAJN//ccaAFzwDPgFfCiLlXRDcWkI8BG/24A1gsUSeeBx8CMfx9bwLKBgsk48BGwH9gNTAoc7PqAJcEeAXeAi8AF4FoVWBXQOmAb8CnwiUC7gK01RQXYXWACGJPxddnVAq0FdgJfAF8DH9uyobreyvA99dtmJ44BZ4AnVUANqz4CfAMcVpPlxCpgk+f7bW3oN6VhOmWgYWAf8BXw+QpAyhEm+VCNZnXiFeBpIZOg/z5wUE1GKpK0bEXLBGs9NyKjFO/Y/sOe/zt0LGzfiAAHbEEe81YWzroNtBU+OnAI2J6dD0336MZfY84So2GdtVP6KTpBW8seB05lQFHtS5+tOjbFmCMRhT9MjJrac0LqKRaBWwJ8r7jztu6RnxcF+tLfpwjQUZ+hQpcM2r6BCl2uAmdt3Uzpu7ZFYPX7MyDMHaba0BBk2EHLY8H23Bc0j9gOD2XXrvh+jd0aTEtztVrVxWuflcZ/+RuukAUrypP1K/KEzPNoKPZYZoQUr5yp54WumtPzz7IWNnXjtN//VroSoi1bgM8ci6oBbzu4s4VsIslfarGj5LwYyg9KTDcD93TaoLNyxEHPh7xtgZFzupBabNrfnaPxEtAqh2+Xn8czoFg3e4F33W8pOprohudnCmfgiVM/aZW5HgPeTVuy1g3p2L7sfIzBJeB8cmxhWxZdF1OulE3qU451NYLn0ZHFWcFCoxdlS/9r+352OKvmpldE0Q+Ay8AvwM3k5vI1EcP3D/CTrRutYNUrWoKc9pZ9ms7nN+yc936/18boCu+lO6XlO13+It8GSwo55VV8TbP0io7duKA2t/Lf1b0FhTV/dOLHdWO3mFGTU7ZsMT9bt99eyuaM7Ga77LolLRzanss2fE8gTB7uO+EtOVdxJrlsSkY3arZ4zzfVBzqo6fppZu8HLYs4KchCXaJeQC1ZrXfnbVSztAliTo4CP+QuWylQAvtDoTe7dmLZRuJgG0/YumssBygiWhhAsZpitoJhGCXeI9J1/r8AxRKNKzt0iMkPoDDAn3XivxXAG/709S6pPU+LAAAAAElFTkSuQmCC" />
                                        </svg>
                                    </div>
                                    <div class="content">
                                        <p class="tf-color">123 Passeig de Gràcia</p>
                                        <p>Barcelona, Spain</p>
                                    </div>
                                </div>
                                <div class="wg-information">
                                    <div class="icon">
                                        <svg xmlns="http://www.w3.org/2000/svg"
                                            xmlns:xlink="http://www.w3.org/1999/xlink" width="17" height="13"
                                            viewBox="0 0 17 13">
                                            <image id="_" data-name="" width="17" height="13"
                                                xlink:href="data:img/png;base64,iVBORw0KGgoAAAANSUhEUgAAACIAAAAaCAYAAADSbo4CAAADAElEQVRIic2WWWtTQRiGnzSnaWtbbN2tW4tYUay4XKgg6m/wL/lPvPY3eFkv3FBRUEFRbF3q1s1qkjbyhWdgCF0Sl+oHQybnnHnnnffbpjR54xqZFcBWYAewGxgASsA3YA6YAb4AXb4fAbYBPcCKI7eS82q2/oPzH/n3RcuiIDEGjAJ7gcGMyDwwDbwBvgJliR6WVN2RWxBuADU3/yjGlGOulUjJjU8Dl4GTgld8XxfsPfAQmARe+34COC9GqyLJVlTlu4rcB24CD1S4SaQf2C7YFeAicDQjkVuQOaArJv1dBno9SLEGkdziUPuAPqAbuBNqx8Jxx1XgHLBnDRK4cNx5uO058AzYAlxy7UYWex5TgF5VehEPzzhCiZE2gHoyxeoqE2AH2ySCBMaNvVeBGUQuAKeUtl2rGNQvgdsG8pxuKneAM+r+fUmmMYOtKuiSoMkavq/ohgHnO4FdwIKnW9BlDVVaNE2RYBo9xsgWg71UKOewH8/r92mBUh2om4rDnmJMoH6JNCTxWdkbZkdk1ifJlCTRp/qR9kO6dLbwZGnDJfP7qcDpeU2QETfPo37Yb4P4rCrhfEoyM7quqppnLIRDqtNbZJv9ihUCFar23d+UxmWVjAL42GI46OHPZjj1oqUa9nna0jqu2akSydI3DeNqRSJx2kNihsvvqhDG5WK2rlo4SRZsjwD7NwjWSva8sQqRbgkPWgCXraKPVqm+jSRtTqRilW3XciK5i8vGUr//T1inagbuhH2NRL6dkvwnbLc97KAbH8qKX3UziUScHDdl0/9e5/XNJNLtGFzlXdO1XZtEZEP7r4h00qT+Foeurpb0/RfWLAG/S2Qgy4DUBFcLyPUsgrgcRN7ll9gOrW5dWM4uz7UOMaJjf470vWWHjLKe0nkjlVIVjd7xBHirOjUbXLpWrIWT1jevidEMY+Prltu4V4TE693GW4Gi/ce9I5paYN2zvYeb1iOSQiKuHeGR5n0kLkLRyOJ0nRKJ8hxdNH7D4t4RWKk7t0NkFlj6CW2ly+DSZ9BoAAAAAElFTkSuQmCC" />
                                        </svg>
                                    </div>
                                    <div class="content">
                                        <p class="tf-color">Email Contact</p>
                                        <p><a href="https://themesflat.co/cdn-cgi/l/email-protection"
                                                class="__cf_email__"
                                                data-cfemail="571536243e3b3e34382532242336222536392317303a363e3b7934383a">[email&#160;protected]</a>
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="right">
                                <div class="wg-information">
                                    <div class="icon">
                                        <svg xmlns="http://www.w3.org/2000/svg"
                                            xmlns:xlink="http://www.w3.org/1999/xlink" width="17" height="15"
                                            viewBox="0 0 17 15">
                                            <image id="_" data-name="" width="17" height="15"
                                                xlink:href="data:img/png;base64,iVBORw0KGgoAAAANSUhEUgAAACIAAAAeCAYAAABJ/8wUAAAEFklEQVRYhbWXW2+UVRSGn6nTOqXnQk/WUFEpghIrFYmNh6gx3viv/DHeGK+81HiIEEXRKIkoRqFNtXUsWhjAocxYs+qzze7XmXYa05Xs5Jt9WOtdh3ftPaUL77zFHtIFlB3dQC8w4KgAJY9vAnWg5vgLuA80HH/vZqa8FwqgDxgGhoB+vwf3AHILWAduAzf9rv0fIEeAJ4CTwGPAw8CE4LpbnG8YhTvAb8Ay8BNwBfgeWNsPkPB8HJgEHgGecpwAjgqgEwlAS8APwOPAMeA6sApUjVRbIBHueeA54LSGA9BhYKRDAEm6jeIoMAssCOwycBH4Ik9XAOkx1xHySMHLwDngVGa8oRd/mvcNPa6bBkxXRQA91tOIQEaMSpyfAcZcv2IK62UnIvevAS8ZiQnnsQgXgW/M8wpwV1bUshAPGdFg1SFgyvp6GnjUoh7x96RznwAfRC2VZUAAeQF41d9kkQgQF4D3ge+MQDkrytvu7c+KuOH3qSxiM57rd4xJ6aihW2XDGd48VACBNIwofA58JQ3H9LY7YwkZi+4btVVTN5ClZzTTPajNsF0p27B6WoBAw98CV/UwmHPcIq64J+8jaDyK8kfpG2enbQGjBf2D2u4KIPc8HAVYlCULKrx8EXjFNA7ofakAZNMo1QTxIfClOpasi1w2tH2vnB06bxF2mbsN56oWV7Dp9X30kZPqWVbHeed7Mhtfu14rW/URxreBj9y44ajJgCdNSacgcO9xz34mOy6qP9lY0fbNlJqq7TdtSqmKSn/TBjeWGanL/zVpjLQ9IvVT/Yx5Ngr3PRmY+lZydusyzDtrTNQ1kiSKa84xlNVCKPzY/Fedj2vhWVM4a+0MeXbJFrCYAdgm7S69B/TmjA1u3PlQcMPmFn3l0wKQ9ex2Pqz34+o4Yyp+B5pFg11tgATnzwLPS9Ukd6XjJe+MFZU2/b7s2lX3JjmqrrPt7qxWQEo2mgVDPZyt1a3ya1kkcqm6tlxI8bC6FtRdKh5sBWTExjXvRdXbJmr7kV51zat7R1SKQCoemPMK72uxPu3bYpydMu7adMacJH3qnNPGtvVisU5It3M2saIckhEpBTcsPizu03o9696iTKp7RfovtgIS3+HJM4av6BGyYEqv1t1zzbVj3uBz7tlRB+4/4Z5L1lKzCCQ2TalwchdGlWTBG743Vp2ftAFOtAGBOtNbZEqbd4pAoiUP2IT2elRXNDpTeKF1IuXsSdDXCkjyop037aRTALlEw3zQVG9JHv646jdadb0DkKZdutEKSLpt1w4YTDO7ZNMzc1tqIiK/eH80zGFa39ypb1+S0h16//BZcD2/Boq378/Au24MIOkv5a7/WzuQiHz6SxpAfnX8p7fIjghVII2wbT1qDwBIPMTSf6N/BfgHi1YQplUrVPoAAAAASUVORK5CYII=" />
                                        </svg>
                                    </div>
                                    <div class="content">
                                        <p class="tf-color">Phone Call Us</p>
                                        <p class="number-phone">+39 055 123456</p>
                                    </div>
                                </div>
                                <div class="button-right">
                                    <a href="book-a-table.html" class="button-default">BOOK A TABLE</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-12">
                            <div class="footer-bottom">
                                <p>Copyright © 2023 savoria. All Rights Reserved.</p>
                            </div>
                        </div>
                    </div>
                </div>

            </footer>
            <!-- /footer -->

        </div>
        <!-- /#page -->
    </div>
    <!-- /#wrapper -->

    <!-- cusor -->
    <div class="tf-mouse tf-mouse-outer"></div>
    <div class="tf-mouse tf-mouse-inner"></div>

    <!-- go top button -->
    <div class="progress-wrap active-progress">
        <svg class="progress-circle svg-content" width="100%" height="100%" viewBox="-1 -1 102 102">
            <path d="M50,1 a49,49 0 0,1 0,98 a49,49 0 0,1 0,-98"
                style="transition: stroke-dashoffset 10ms linear 0s; stroke-dasharray: 307.919, 307.919; stroke-dashoffset: 286.138;">
            </path>
        </svg>
    </div>

    <!-- Javascript -->
    <script data-cfasync="false" src="../../../cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script>
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/swiper-bundle.min.js"></script>
    <script src="assets/js/swiper.js"></script>
    <script src="assets/js/map.min.js"></script>
    <script src="assets/js/map.js"></script>
    <script src="assets/js/countto.js"></script>
    <script src="assets/js/count-down.js"></script>
    <script src="assets/js/nouislider.min.js"></script>
    <script src="assets/js/magnific-popup.min.js"></script>
    <script src="assets/js/wow.min.js"></script>
    <script src="assets/js/main.js"></script>

</body>



</html>