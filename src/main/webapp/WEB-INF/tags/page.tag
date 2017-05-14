<%@ tag pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ attribute name="title" %>
<%@ attribute name="intro" %>
<%@ attribute name="write" type="java.lang.Boolean" %>


<c:set var="title" value="${title == null ? '이태원 스포츠' : title}"/>
<c:set var="write" value="${write == null ? true: write}"/>


<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <%--< title>${title}</title>--%>
    <title>${title}</title>


    <!-- Bootstrap Core CSS -->
    <link href="/vendor/bootstrap/css/bootstrap.css" rel="stylesheet">

    <!-- Theme CSS -->
    <link href="/css/clean-blog.css" rel="stylesheet">

    <!-- Material Design Bootstrap -->
    <link href="/css/mdb.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href='https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic' rel='stylesheet'
          type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800'
          rel='stylesheet' type='text/css'>

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->


    <!-- jQuery -->
    <script src="/vendor/jquery/jquery.js"></script>

</head>

<body>

<!-- Navigation -->
<nav class="navbar navbar-default navbar-custom navbar-fixed-top">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header page-scroll">
            <button type="button" class="navbar-toggle" data-toggle="collapse"
                    data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                Menu <i class="fa fa-bars"></i>
            </button>
            <a class="navbar-brand" href="/">Start Bootstrap</a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav navbar-right">
                <li>
                    <a href="/">Home</a>
                </li>
                <li>
                    <a href="/about.abc">About</a>
                </li>
                <li>
                    <a href="/contact">Contact</a>
                </li>
            </ul>
        </div>
        <!-- /.navbar-collapse -->
    </div>
    <!-- /.container -->
</nav>

<!-- Page Header -->
<!-- Set your background image for this header on the line below. -->
<header class="intro-header" style="background-image: url('/img/home-bg.jpg')">
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
                <div class="site-heading">
                    <h1>${title}</h1>
                    <hr class="small">
                    <c:if test="${intro != null}">
                        <span class="subheading">${intro}</span>
                    </c:if>
                </div>
            </div>
        </div>
    </div>
</header>

<!-- Main Content -->
<div class="container">

    <jsp:doBody/>

</div>

<hr>

<%--<c:if test="${sessionScope.get('user') != null}">--%>
<c:if test="${login && write}">

    <div class="fixed-action-btn" style="bottom: 45px; right: 24px;">
        <a class="btn-floating btn-large red" href="/write">
            <i class="fa fa-pencil"></i>
        </a>

            <%--<ul>--%>
            <%--<li><a class="btn-floating red"><i class="fa fa-star"></i></a></li>--%>
            <%--<li><a class="btn-floating yellow darken-1"><i class="fa fa-user"></i></a></li>--%>
            <%--<li><a class="btn-floating green"><i class="fa fa-envelope"></i></a></li>--%>
            <%--<li><a class="btn-floating blue"><i class="fa fa-shopping-cart"></i></a></li>--%>
            <%--</ul>--%>
    </div>
</c:if>

<!-- Footer -->
<footer>
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
                <ul class="list-inline text-center">
                    <li>
                        <a href="#">
                                <span class="fa-stack fa-lg">
                                    <i class="fa fa-circle fa-stack-2x"></i>
                                    <i class="fa fa-twitter fa-stack-1x fa-inverse"></i>
                                </span>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                                <span class="fa-stack fa-lg">
                                    <i class="fa fa-circle fa-stack-2x"></i>
                                    <i class="fa fa-facebook fa-stack-1x fa-inverse"></i>
                                </span>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                                <span class="fa-stack fa-lg">
                                    <i class="fa fa-circle fa-stack-2x"></i>
                                    <i class="fa fa-github fa-stack-1x fa-inverse"></i>
                                </span>
                        </a>
                    </li>
                </ul>
                <p class="copyright text-muted">Copyright &copy; Your Website 2016</p>
            </div>
        </div>
    </div>
</footer>
<!-- Bootstrap Core JavaScript -->
<script src="/vendor/bootstrap/js/bootstrap.js"></script>

<!-- Bootstrap tooltips -->
<script type="text/javascript" src="/js/tether.js"></script>

<!-- Contact Form JavaScript -->
<script src="/js/jqBootstrapValidation.js"></script>
<script src="/js/contact_me.js"></script>

<!-- Theme JavaScript -->
<script src="/js/clean-blog.js"></script>

<!-- MDB core JavaScript -->
<script type="text/javascript" src="/js/mdb.js"></script>

</body>

</html>