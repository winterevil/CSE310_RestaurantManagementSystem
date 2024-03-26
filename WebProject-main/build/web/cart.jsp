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

                            <div class="header-left type-1">
                                <div class="header-clock ">
                                    <a href="javascript:void(0);"><span class="badge hours"></span></a>
                                    <span>:</span>
                                    <a href="javascript:void(0);"><span class="badge min"></span></a>
                                </div>
                            </div>
                        </div>
                        <nav class="main-nav">
                            <ul class="menu-primary-menu">
                                <li class="menu-item menu-item-has-children">
                                    <a href="index.jsp">Home</a>

                                </li>
                                <li class="menu-item menu-item-has-children">
                                    <a href="#">Pages</a>


                                </li>
                                <li class="menu-item ">
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
                        <div class="header-right type-1">
                            <% citprog.restaurantweb.login.Account account=(citprog.restaurantweb.login.Account)
                                session.getAttribute("account"); if (account !=null) { %>
                                <a href="Logout" style="font-size: 24px;">Welcome back, <%= account.getName() %>
                                        !</a>
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

                                        <a class="icon-button" href="">
                                            <span class="material-symbols-outlined"
                                                style="color:#c6ac83; font-size:39px;">
                                                local_mall
                                            </span>
                                            <span class="icon-button__badge">
                                                <%@ page import="java.util.HashMap" %>
                                                        <%@ page import="citprog.restaurantweb.resourcesmanagement.Menu"
                                                            %>
                                                            <%@ page import="citprog.restaurantweb.order.Order" %>

                                                                <%@ page
                                                                    import="citprog.restaurantweb.order.OrderManager" %>
                                                                   
                                                                        <% String name=account.getName(); %>
                                                                            <% String email=account.getEmail(); %>
                                                                                <%= OrderManager.getCartMapSize(name,
                                                                                    email)%>
                                                                                   
                                            </span>

                                        </a>
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
                                <li class="menu-item">
                                    <a class="item-menu-mobile" href="index.jsp">Home</a>

                                </li>
                                <li class="menu-item">
                                    <a class="item-menu-mobile" href="#">Pages</a>



                                </li>
                                <li class="menu-item">
                                    <a class="item-menu-mobile" href="Menu">Menu</a>

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

            <!-- banner-page -->
            <div class="banner-page inner-page shop-page">
                <div class="content">
                    <div class="banner-text">cart</div>
                    <p class="t1">Fusce ut bibendum sem. Proin hendrerit ante vel nibh gravida ultrices. Sed <br> vitae
                        pharetra eros, morbi at ipsum non.</p>
                </div>
            </div>
            <!-- /banner-page -->

            <!-- wg-shop -->


            <div class="col-md-4 col-12">
                <div class="sidebar-item cart">
                    <div class="heading-top">cart</div>
                    <div class="content">
                        <% double total=0; var cartItems=OrderManager.getCartMap(name, email); %>
                            <% if (cartItems==null) { %>
                                <div class="cart-item">
                                    <div class="image">
                                        <img src="" alt="" style="width: 50px; height: 50px;">
                                    </div>
                                    <div class="content">
                                        <div class="price">
                                        </div>
                                        <div class="name"><a href="">
                                            </a></div>
                                    </div>
                                    <!-- <div class="close-button"><i class="icon-close"></i></div> -->
                                </div>
                                <% } else { %>
                                    <% for (Menu item : cartItems.keySet()) { %>
                                        <div class="cart-item">
                                            <div class="image">
                                                <img src="assets/images/box-item/<%= item.getImage() %>" alt=""
                                                    style="width: 50px; height: 50px;">
                                            </div>
                                            <div class="content">
                                                <div class="price">$<%=item.getPrice()*cartItems.get(item) %>
                                                        <% total +=item.getPrice()*cartItems.get(item); %>
                                                </div>
                                                <div class="name"><a href="">
                                                        <%=item.getName() %>
                                                    </a></div>
                                            </div>
                                            <!-- <div class="close-button"><i class="icon-close"></i></div> -->
                                        </div>
                                        <% } %>
                                            <% } %>
                    </div>

                    <div class="subtotal">
                        <div class="title">Subtotal:</div><span class="price">$<%=total%></span><br>
                    </div>
                    <div class="subtotal">
                        <div class="title">Shipping:</div><span class="price">$5.00</span><br>
                    </div>
                    <div class="subtotal">
                        <div class="title">Total:</div><span class="price">$<%=total+5%></span><br>
                    </div>
                    <div class="bottom">
                        <a class="" href="CheckOut">check out <i class="icon-arrow-right"></i></a>
                    </div>

                </div>
            </div>

            <!-- /wg-shop -->

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


<!-- Mirrored from themesflat.co/html/restaurant/luxury/shop.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 17 Jan 2024 09:02:20 GMT -->

</html>