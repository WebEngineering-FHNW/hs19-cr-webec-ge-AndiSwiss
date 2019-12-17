<!doctype html>
<html lang="en" class="no-js">
<head>
    <!-- Basic -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <!-- Mobile Metas  -->
    <meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">

    <!-- Site Metas -->
    <title>
        <g:layoutTitle default="Grails"/>
    </title>

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
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <asset:link rel="icon" href="favicon.ico" type="image/x-ico"/>

    <asset:stylesheet src="application.css"/>

    <g:layoutHead/>
</head>

<body>

<nav class="navbar navbar-expand-lg navbar-dark navbar-static-top" role="navigation">
    <!-- Maybe later: enter here a logo again:-->
%{--    <a class="navbar-brand" href="/#"><asset:image src="grails.svg" alt="Grails Logo"/></a>--}%
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarContent" aria-controls="navbarContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav text-uppercase ml-auto">
            <li class="nav-item">
                <g:link controller="home" fragment="home" class="nav-link js-scroll-trigger">Home</g:link>
            </li>
            <li class="nav-item">
                <g:link controller="home" fragment="about" class="nav-link js-scroll-trigger">About Me</g:link>
            </li>
            <li class="nav-item">
                <g:link controller="home" fragment="services" class="nav-link js-scroll-trigger">Focus areas</g:link>
            </li>
            <li class="nav-item">
                <g:link controller="home" fragment="portfolio" class="nav-link js-scroll-trigger">Portfolio</g:link>
            </li>
            <li class="nav-item nav-back-end">
                <g:link controller="project" class="nav-link js-scroll-trigger">Back-End</g:link>
            </li>

            <sec:ifLoggedIn>
                <li class="nav-item">
                    <g:link controller="logout" class="nav-link js-scroll-trigger">Logout</g:link>
                </li>
            </sec:ifLoggedIn>
        </ul>
    </div>

</nav>

<g:layoutBody/>

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



<div id="spinner" class="spinner" style="display:none;">
    <g:message code="spinner.alt" default="Loading&hellip;"/>
</div>

<asset:javascript src="application.js"/>

</body>
</html>
