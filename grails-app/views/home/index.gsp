<%--
  Created by IntelliJ IDEA.
  User: aambuehl
  Date: 09.12.19
  Time: 17:01
--%>

<!DOCTYPE html>
<%@  page import="exercise.Project" %>
<html lang="en">
<head>
    <!-- Basic -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <!-- Mobile Metas -->
    <meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">

    <!-- Site Metas -->
    <title>Andreas Ambühl - Application Developer</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Site Icons -->
    <link rel="shortcut icon" href="${resource(dir: "images", file: "favicon.ico")}" type="image/x-icon"/>
    <link rel="apple-touch-icon" href="${resource(dir: "images", file: "apple-touch-icon.png")}">

    <!-- Bootstrap CSS -->
    <asset:stylesheet src="bootstrap.min.css"/>
    <!-- Site CSS -->
    <asset:stylesheet src="style.css"/>

    <!-- Responsive CSS -->
    <asset:stylesheet src="responsive.css"/>
    <!-- Custom CSS -->
    <asset:stylesheet src="custom.css"/>

    <!-- Modernizr -->
    <asset:javascript src="modernizr.js"/>

</head>

<body id="page-top" class="politics_version">

<!-- LOADER -->
<div id="preloader">
    <div id="main-ld">
        <div id="loader"></div>
    </div>
</div><!-- end loader -->
<!-- END LOADER -->

<!-- Navigation -->
<nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">
    <div class="container">
        <a class="navbar-brand js-scroll-trigger" href="#page-top">
        </a>
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse"
                data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false"
                aria-label="Toggle navigation">
            Menu
            <i class="fa fa-bars"></i>
        </button>

        <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav text-uppercase ml-auto">
                <li class="nav-item">
                    <a class="nav-link js-scroll-trigger active" href="#home">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link js-scroll-trigger" href="#about">About Me</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link js-scroll-trigger" href="#services">Focus areas</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link js-scroll-trigger" href="#portfolio">Portfolio</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<!-- First section with picture and title and clouds -->
<section id="home" class="main-banner parallaxie"
         style="background: url('${resource(dir: "images", file: "spark_uetliberg.jpg")}')">
    <div class="heading">
        <h1>hello, I'm Andreas.</h1>

        <p>"I'm still studying hard for finishing my bachelor's degree in computer science,
            <br>soon ready to start working in <b>your</b> company."</p>

        <h3 class="cd-headline clip is-full-width">
            <span>I love:</span>
            <span class="cd-words-wrapper">
                <b class="is-visible">Application Development</b>
                <b>Web Programming</b>
                <b>UX/UI Design</b>
                <b>A Great Team</b>
            </span>
        </h3>

        <p id="foto-spark">Photo created in summer 2019 with my DJI spark drone <br>(view from Uetliberg towards Zürich, Switzerland)
        </p>
    </div>
</section>

<svg id="clouds" class="hidden-xs" xmlns="http://www.w3.org/2000/svg" version="1.1" width="100%" height="100"
     viewBox="0 0 85 100" preserveAspectRatio="none">
    <path d="M-5 100 Q 0 20 5 100 Z
            M0 100 Q 5 0 10 100
            M5 100 Q 10 30 15 100
            M10 100 Q 15 10 20 100
            M15 100 Q 20 30 25 100
            M20 100 Q 25 -10 30 100
            M25 100 Q 30 10 35 100
            M30 100 Q 35 30 40 100
            M35 100 Q 40 10 45 100
            M40 100 Q 45 50 50 100
            M45 100 Q 50 20 55 100
            M50 100 Q 55 40 60 100
            M55 100 Q 60 60 65 100
            M60 100 Q 65 50 70 100
            M65 100 Q 70 20 75 100
            M70 100 Q 75 45 80 100
            M75 100 Q 80 30 85 100
            M80 100 Q 85 20 90 100
            M85 100 Q 90 50 95 100
            M90 100 Q 95 25 100 100
            M95 100 Q 100 15 105 100 Z">
    </path>
</svg>

<!-- About-section -->
<div id="about" class="section wb">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <div class="message-box">
                    <h2>About Me</h2>

                    <p>Having gained experience in many different fields of working, I would consider myself a highly versatile
                    and skilled person. Here are my <b>two core</b> skills:</p>

                    <p>
                        My many years as a professional performing artist playing bass clarinet and other musical instruments
                        in over 17 countries worldwide has boosted and shaped my creativity
                        and capability to contribute to a band, or more general to a team.
                        <br><i>More about my music career: <a href="https://andreasmusic.ch"
                                                              target="_blank">andreasmusic.ch</a></i></p>

                    <p>Working for many years as an IT supporter has enhanced my problem solving skills and the ability to understand the users
                    problems, questions and needs.</p>

                </div><!-- end messagebox -->
            </div><!-- end col -->

            <div class="col-md-6">
                <div class="right-box-pro wow fadeIn">
                    <asset:image src="andreas_ambuehl.jpg" alt="" class="img-fluid img-rounded"/>
                </div><!-- end media -->
            </div><!-- end col -->
        </div><!-- end row -->
    </div><!-- end container -->
</div><!-- end section -->

<!-- Services-section -->
<div id="services" class="section lb">
    <div class="container">
        <div class="section-title text-left">
            <h3>Focus Areas</h3>

            <p>I like to focus on the following areas in the field of information technology:</p>
        </div><!-- end title -->

        <div class="row">
            <div class="col-md-4">
                <div class="services-inner-box">
                    <div class="ser-icon">
                        <i class="flaticon-process"></i>
                    </div>

                    <h2>Application Development</h2>

                    <p>Solving a large problem by creating a full software solution really fulfills me, especially when working
                    together with great teammates.</p>
                </div>
            </div><!-- end col -->
            <div class="col-md-4">
                <div class="services-inner-box">
                    <div class="ser-icon">
                        <i class="flaticon-seo"></i>
                    </div>

                    <h2>Web Development</h2>

                    <p>This is not just about developing yet another web page, but trying to create something that catches the
                    attention of the visitors.</p>
                </div>
            </div><!-- end col -->
            <div class="col-md-4">
                <div class="services-inner-box">
                    <div class="ser-icon">
                        <i class="flaticon-development"></i>
                    </div>

                    <h2>Responsive Design</h2>

                    <p>Mobile devices are important in our every day life. So our websites should be fully responsive with a great
                    user experience.</p>
                </div>
            </div><!-- end col -->
            <div class="col-md-4">
                <div class="services-inner-box">
                    <div class="ser-icon">
                        <i class="flaticon-discuss-issue"></i>
                    </div>

                    <h2>Support</h2>

                    <p>Once an application is 'finished', the work is not done. Questions may arise and I will be there to answer
                    them and provide solutions.</p>
                </div>
            </div><!-- end col -->
            <div class="col-md-4">
                <div class="services-inner-box">
                    <div class="ser-icon">
                        <i class="flaticon-idea"></i>
                    </div>

                    <h2>Ideas</h2>

                    <p>You have a problem, but you don't know how to tackle the problem? Let's create together ideas for a
                    solution.</p>
                </div>
            </div><!-- end col -->
        </div><!-- end row -->
    </div><!-- end container -->
</div><!-- end section -->

<!-- Portfolio-section -->
<div id="portfolio" class="section lb">
    <div class="container">
        <div class="section-title text-left">
            <h3>Portfolio</h3>

            <p>Here are some projects I was working on:</p>
        </div><!-- end title -->

        <div class="gallery-menu row">
            <div class="col-md-12">
                <div class="button-group filter-button-group text-left">
                    <button class="active" data-filter="*">All</button>
                    <button data-filter=".gal_a">Web Development</button>
                    <button data-filter=".gal_b">Category 2 (tbd)</button>
                    <button data-filter=".gal_c">Category 3 (tbd)</button>
                </div>
            </div>
        </div>

        <div class="gallery-list row">

            <!-- One portfolio item -->
            <g:each in="${Project.list()}" var="project">
                <div class="col-md-4 col-sm-6 gallery-grid gal_a gal_b">
                    <div class="post-box">
                        <div class="post-thumb">
                            <asset:image src="portfolioPics/gallery_img-01.jpg" class="img-fluid" alt="Image"/>

                            <div class="date">
                            <!-- TODO: get month and year from the project date -->
                                <span>12</span> -
                                <span>2019</span>
                            </div>
                        </div>

                        <div class="post-info">
                            <h4>${project.title}</h4>
                            <ul>
                                <li>by Andreas</li>
                                <li>- ${project.date}</li>
                                <li><a href="#"><b>Projekt-Link</b></a></li>
                            </ul>

                            <p>${project.description}</p>
                        </div>
                    </div>
                </div>
            </g:each>
        </div>
    </div>
</div>
</div>

<!-- Copyrights-section -->
<div class="copyrights">
    <div class="container">
        <div class="footer-distributed">
            <div class="footer-left">
                <p class="footer-links">
                </p>

                <p class="footer-company-name">All Rights Reserved. &copy; 2019 <a href="#">Andreas Ambühl</a></p>
            </div>
        </div>
    </div><!-- end container -->
</div><!-- end copyrights -->

<a href="#" id="scroll-to-top" class="dmtop global-radius"><i class="fa fa-angle-up"></i></a>

<!-- ALL JS FILES -->
<asset:javascript src="all.js"/>
<!-- Camera Slider -->
<asset:javascript src="jquery.mobile.customized.min.js"/>
<asset:javascript src="jquery.easing.1.3.js"/>
<asset:javascript src="parallaxie.js"/>
<asset:javascript src="headline.js"/>
<!-- Contact form JavaScript -->
<asset:javascript src="jqBootstrapValidation.js"/>
<asset:javascript src="contact_me.js"/>
<!-- ALL PLUGINS -->
<asset:javascript src="custom.js"/>
<asset:javascript src="jquery.vide.js"/>

</body>
</html>
