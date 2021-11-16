<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="locale">${pageContext.response.locale}</c:set>
<c:set var="req" value="${pageContext.request}" />
<c:set var="uri" value="${req.requestURI}" />
<c:set var="url">${req.requestURL}</c:set>
<c:if test="${setProtocolToHttps}">
    <c:set var="url" value="${fn:replace(url, 'http:', 'https:')}"/>
</c:if>
<jsp:useBean id="listOfMapsOfItemsOfCategories3" scope="request" type="java.util.List<java.util.HashMap<java.lang.String, java.util.HashMap<java.lang.String, com.marsspiders.ukwa.controllers.data.CollectionDTO>>>"/>




<html>
<head>
    <base href="${fn:substring(url, 0, fn:length(url) - fn:length(uri))}${req.contextPath}/${locale}/ukwa/" />
    <title>
        <spring:message code="categories.header.title" />
    </title>
    <%@include file="head.jsp" %>
</head>

<body data-spy="scroll" data-target="#myScrollspy" data-offset="50">
<%@include file="nav.jsp" %>
<div class="container-fluid">
    <header>
        <%@include file="header.jsp" %>
    </header>

    <spring:message code='main.menu.categories' var="title"/>
    <%@include file="title.jsp" %>




<div class="row margin-0 padding-side-20">
    <div class="col-lg-6 col-md-8 offset-md-1 col-md-offset-1 col-sm-12 header-2-subtitle padding-side-10"><spring:message code="coll.subtitle" /></div>

    <div class="col-lg-2 offset-lg-3 col-lg-offset-3 col-md-2 offset-md-1 col-md-offset-1 col-sm-12 right padding-top-mobile-20">
        <img title="coll.thumbs" alt="coll.thumbs" class="collections-display" id="btn_thumbs" src="img/icons/icn_grid.png" tabindex="0"/>
        <img title="coll.list" alt="coll.list" class="collections-display" id="btn_list" src="img/icons/icn_list.png" tabindex="0"/>
    </div>
</div>


    <!--Grid row-->
    <div class="row">

    </div>





<div class="text-center categories-cards">
    <h1 class="text-center">Browse Categories</h1>

        <div class="container">
            <div class="row hidden-md-up justify-content-start">
                    <c:forEach var="topLevelCategoriesList" items="${listOfMapsOfItemsOfCategories3}" varStatus="count">
                        <c:forEach var="category" items="${topLevelCategoriesList.entrySet()}" >
                        <div class="col-md-4">

                        <div id="${category.key}" class="card mb-2 col-lg-4 col-md-4 col-sm-6 container_foto top-category-card">
                            <div class="card-block">
                                <div class="ver_mas text-center">
                                    <span  class="lnr lnr-eye"></span>
                                </div>
                                <img class="card-img-top img-fluid" src="img/categories/<c:out value="${category.key}"/>.png" alt="<c:out value="${category.key}"/>">
                                <article class="text-left">
                                    <h2><spring:message code="category.title.${category.key}" /></h2>
                                    <h4>Description...<spring:message code="category.title.${category.key}" /> </h4>
                                </article>
                            </div>
                        </div>
                        </div>

                    </c:forEach>
                    </c:forEach>
        </div>


        </div>
</div>


<div class="container category-items" style="display:none;">
    <h2 class="text-center">Browse Category </h2>

    <div class="row justify-content-end">
        <!--Grid row-->
        <nav aria-label="Page navigation example">
            <ul class="pagination justify-content-end">

                <li class="page-item"><a class="page-link" href="#">A</a></li>
                <li class="page-item"><a class="page-link" href="#">B</a></li>

                <li class="page-item"><a class="page-link" href="#">C</a></li>
                <li class="page-item"><a class="page-link" href="#">D</a></li>
                <li class="page-item"><a class="page-link" href="#">E</a></li>
                <li class="page-item"><a class="page-link" href="#">F</a></li>
                <li class="page-item"><a class="page-link" href="#">G</a></li>
                <li class="page-item"><a class="page-link" href="#">H</a></li>
                <li class="page-item"><a class="page-link" href="#">I</a></li>
                <li class="page-item"><a class="page-link" href="#">J</a></li>
                <li class="page-item"><a class="page-link" href="#">K</a></li>

                <li class="page-item"><a class="page-link" href="#">L</a></li>
                <li class="page-item"><a class="page-link" href="#">M</a></li>
                <li class="page-item"><a class="page-link" href="#">N</a></li>
                <li class="page-item"><a class="page-link" href="#">O</a></li>
                <li class="page-item"><a class="page-link" href="#">P</a></li>
                <li class="page-item"><a class="page-link" href="#">Q</a></li>
                <li class="page-item"><a class="page-link" href="#">R</a></li>
                <li class="page-item"><a class="page-link" href="#">S</a></li>
                <li class="page-item"><a class="page-link" href="#">T</a></li>
                <li class="page-item"><a class="page-link" href="#">U</a></li>
                <li class="page-item"><a class="page-link" href="#">V</a></li>
                <li class="page-item"><a class="page-link" href="#">W</a></li>
                <li class="page-item"><a class="page-link" href="#">X</a></li>
                <li class="page-item"><a class="page-link" href="#">Y</a></li>
                <li class="page-item"><a class="page-link" href="#">Z</a></li>

            </ul>
        </nav>
    </div>
    <div class="row justify-content-end">

        <!--Grid column-->
        <div class="col-md-6 mb-4">

            <div class="table-responsive shadow p-3 mb-5 bg-light rounded">
                <table id="grid2" class="table table-hover sortable">
                    <thead class="thead-dark">
                    <tr>
                        <th data-type="string">Sort by:</th>
                        <th data-type="string"></i>Name:<i class="fas fa-sort text-right"/></th>
                        <th data-type="number"></i>Sub collections size<i class="fas fa-sort text-right"/>:</th>
                    </tr>

                    </thead>
                </table>
            </div>

        </div>
        <!--Grid column-->
        <!--Grid column-->
        <div class="col-md-6 mb-4 align-baseline">

            <!-- Search form -->
            <form class="form-inline">
                <i class="fas fa-search" aria-hidden="true"></i>
                <input class="form-control form-control-sm ml-3 w-75" type="text" placeholder="Search" aria-label="Search">
            </form>

        </div>
        <!--Grid column-->
    </div>

    <div class="row">
        <div class="col-4">
            <div class="list-group" id="list-tab" role="tablist">

                <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12 container_foto list-group-item list-group-item-action category-item-card-frame" id="list-profile-list" data-toggle="list" href="#list-profile" role="tab" aria-controls="profile">

                    <article class="text-left">
                        <h2 id="current_top_coll_h2">Category Title</h2>
                        <h4 id="current_top_coll_h4">Category: Description</h4>
                    </article>
                    <img id="current_top_coll_image" src="img/categories/2941.png" alt="">
                </div>


            </div>
        </div>
        <div class="col-8">
            <div class="tab-content" id="nav-tabContent">




                <c:forEach var="topcategory" items="${listOfMapsOfItemsOfCategories3}" varStatus="theCount">
                    <c:forEach var="category" items="${topcategory}" varStatus="theCount2">
                        <div class="tab-pane fade show top-collection-list" id="top-collection-list-${category.key}" role="tabpanel" aria-labelledby="list-home-list">

                            <c:forEach var="collection" items="${category.value}">
                            <li class="padding-bottom-10">
                                <a href="collection/<c:out value="${collection.key}"/>" class="collection-link" >
                                    <c:out value="${collection.value.name}"/>
                                </a>
                            </li>
                            </c:forEach>

                        </div>
                    </c:forEach>
                </c:forEach>

            </div>
        </div>
    </div>

</div>



<div class="container p-4">
    <div class="row">
        <div class="col-12">
            <div class="btn-group float-right">
                <div class="btn-group btn-group-toggle" data-toggle="buttons">
                    <label id="list" class="btn btn-outline-dark active">
                        <input type="radio" name="layout" id="layout1" checked> List
                    </label>
                    <label id="grid" class="btn btn-outline-dark">
                        <input type="radio" name="layout" id="layout2"> Grid
                    </label>
                </div>
            </div>
        </div>
    </div>
    <div id="posts" class="row mt-4">
        <div class="item col-12 mb-3">
            <div class="card rounded shadow border-0">
                <a href="#">
                    <img class="w-100 d-none" style="height: 300px; object-fit: cover; border-top-right-radius: 5px; border-top-left-radius: 5px;" src="https://images.unsplash.com/photo-1572376313139-2d2c6ff7de20?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=648&q=80" alt="" />
                </a>
                <div class="card-body p-3">
                    <a href="#" class="text-dark"><h4>Blog post title</h4></a>
                    <p class="text-muted small">By Author Title on January 28, 2020</p>
                    <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit,
                        sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>
                    <a class="btn btn-dark" href="#">Read more</a>
                </div>
            </div>
        </div>
        <div class="item col-12 mb-3">
            <div class="card rounded shadow border-0">
                <a href="#">
                    <img class="w-100 d-none" style="height: 300px; object-fit: cover; border-top-right-radius: 5px; border-top-left-radius: 5px;" src="https://images.unsplash.com/photo-1572376313139-2d2c6ff7de20?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=648&q=80" alt="" />
                </a>
                <div class="card-body p-3">
                    <a href="#" class="text-dark"><h4>Blog post title</h4></a>
                    <p class="text-muted small">By Author Title on January 28, 2020</p>
                    <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit,
                        sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>
                    <a class="btn btn-dark" href="#">Read more</a>
                </div>
            </div>
        </div>
        <div class="item col-12 mb-3">
            <div class="card rounded shadow border-0">
                <a href="#">
                    <img class="w-100 d-none" style="height: 300px; object-fit: cover; border-top-right-radius: 5px; border-top-left-radius: 5px;" src="https://images.unsplash.com/photo-1572376313139-2d2c6ff7de20?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=648&q=80" alt="" />
                </a>
                <div class="card-body p-3">
                    <a href="#" class="text-dark"><h4>Blog post title</h4></a>
                    <p class="text-muted small">By Author Title on January 28, 2020</p>
                    <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit,
                        sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>
                    <a class="btn btn-dark" href="#">Read more</a>
                </div>
            </div>
        </div>
    </div>
</div>
</div>


<!-- Option 1: jQuery and Bootstrap Bundle (includes Popper) -->
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>

<script>
    $(document).ready(function(e) {

        var previous_id = null;

        $(".top-category-card").on('click', function(event){

            console.log('previous_id = ', previous_id);

            var current_id = $(this).attr('id');
            console.log('current_id = ', current_id);

            $('#current_top_coll_image').attr('src','img/categories/'+current_id+'.png');

            //var cat_id = $(this).data("pid");

            var text_h2 = 'Title';

            //TODO: make dynamic
            switch(current_id) {
                case '2940':
                    text_h2 = "History";
                    break;
                case '2941':
                    text_h2 = "Politics & Government";
                    break;
                case '2942':
                    text_h2 = "Arts & Culture";
                    break;
                case '2943':
                    text_h2 = "Places";
                    break;
                case '2944':
                    text_h2 = "Society & Communities";
                    break;
                case '2945':
                    text_h2 = "Currently Working On";
                    break;
                case '2938':
                    text_h2 = "Science, Technology & Medicine";
                    break;
                case '2939':
                    text_h2 = "Sport & Recreation";
                    break;
                default:
                    text_h2 = 'Category'
            }

            $("#current_top_coll_h2").html(text_h2);

<%--            <c:if test="${ current_id  == '2938'}">--%>
<%--            $("#current_top_coll_h2").html(<spring:message code='category.title.2938' var="title"/>);--%>
<%--            </c:if>--%>
<%--            <c:if test="${ current_id  == '2939'}">--%>
<%--            $("#current_top_coll_h2").html('Sport & Recreation');--%>
<%--            </c:if>--%>




            $("#current_top_coll_h4").html('Description');
//            $("#current_top_coll_h2").html(<c:out value="${categoriesHashMap.get(identifier).value}"/>);
//            $("#current_top_coll_h4").html(<c:out value="${categoriesHashMap.get(identifier).value}"/>);

            $('#top-collection-list-'+previous_id).removeClass("active");
            $('#top-collection-list-'+current_id).addClass("active");

            //$("#top-collection-list-"+event.target.id).removeClass("active");
            //$("#top-collection-list-2941").addClass("active");
            $(".categories-cards").toggle();
            $(".category-items").toggle();

            previous_id = current_id;

        });

        $(".category-item-card-frame").on('click', function(event){
            $(".categories-cards").toggle();
            $(".category-items").toggle();
        });


        $('#list').click(function(event){
            event.preventDefault();
            $('#posts .item').addClass('col-12');
            $('#posts img').addClass('d-none');
            $('#grid').removeClass('active');
            $('#list').addClass('active');
        });

        $('#grid').click(function(event){
            event.preventDefault();
            $('#posts .item').removeClass('col-12');
            $('#posts .item').addClass('col-4');
            $('#posts img').removeClass('d-none');
            $('#list').removeClass('active');
            $('#grid').addClass('active');
        });
    });



</script>

</body>


</html>
