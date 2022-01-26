<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="req" value="${pageContext.request}" />
<c:set var="uri" value="${req.requestURI}" />
<c:set var="url">${req.requestURL}</c:set>
<c:set var="locale">${pageContext.response.locale}</c:set>
<c:if test="${setProtocolToHttps}">
  <c:set var="url" value="${fn:replace(url, 'http:', 'https:')}"/>
</c:if>
<jsp:useBean id="listOfMapsOfItemsOfCategories3" scope="request" type="java.util.List<java.util.HashMap<java.lang.String, java.util.HashMap<java.lang.String, com.marsspiders.ukwa.controllers.data.CollectionDTO>>>"/>
<jsp:useBean id="alphabetSet" scope="request"  type="java.util.HashSet<java.lang.Character>"/>
<jsp:useBean id="listOfAlphabetical" scope="request"  type="java.util.List<java.util.HashSet<java.lang.Character>>"/>

<jsp:useBean id="random" class="java.util.Random" scope="application" />
<jsp:useBean id="collCountList" class="java.util.ArrayList"/>

<html lang="${locale}">
<head>
<base href="${fn:substring(url, 0, fn:length(url) - fn:length(uri))}${req.contextPath}/${locale}/ukwa/" />

<title>
    <spring:message code="coll.title" />
</title>
<%@include file="head.jsp" %>
</head>


<body>

<c:set var = "category" value = "true"/>

<%@include file="nav.jsp" %>
<div class="container-fluid">
  <header>
  <%@include file="header.jsp" %>
  </header>

<spring:message code='coll.main.heading' var="title"/>
<%@include file="title.jsp" %>


    <c:set var="categoryPlaceHolderVar" value="Filter within All Categories" />

    <%-- filter button for collections --%>
    <div class="row mb-1 center">
        <div class="col-sm-11 col-md-12 col-lg-offset-2 col-lg-11 ml-lg-3 ml-md-3 ml-sm-3  form-inline inline-block-items flex-nowrap">
            <input role="textbox" type="search" name="text" id="cat-search-input"
                   title="<spring:message code="search.main.input.title" />"
                   aria-label="<spring:message code="search.main.input.title" />"
                   placeholder="${categoryPlaceHolderVar}"
                   class="main-search-field-redesign" value="${originalSearchRequest}" required tabindex="0"
                   aria-required="true"/>
            <button role="button" type="submit" class="btn btn-lg main-search-button h-100 w-auto align-items-center mr-md-4"
                    title="<spring:message code="search.main.button.title" />">
                <span class="d-none d-md-block align-middle">Filter</span>
                <i class="fa fa-filter ml-2" aria-hidden="true"></i>
            </button>
        </div>

    </div>

    <%-- search results --%>
    <div class="row">
        <div class="p-lg-5 col-lg-12 col-md-12 col-sm-12 header-2-subtitle-redesign align-content-center text-wrap" id="cat-filter-results"></div>
    </div>

    <%-- category top level cards --%>
    <div class="row">

        <%-- All Collections --%>

        <c:forEach var="topLevelCategoriesList" items="${listOfMapsOfItemsOfCategories3}" varStatus="count">
            <c:forEach var="category" items="${topLevelCategoriesList.entrySet()}">

                <div class="col-lg-3 col-md-6 col-sm-12 pointer top-category-card">
                    <div id="id_${category.key}" class="card mb-4 ml-3 mr-3 top-category-card-v2">
                        <img class="card-img-top center" id="id_image_id_${category.key}" src="img/categories/<c:out value="${category.key}"/>.png" alt="<c:out value="${category.key}"/>">

                        <div class="card-img-overlay">
                            <div class="card-footer">
                                <div class="text-uppercase bold" style="color: white!important; text-shadow: 1px 1px 2px black, 3px 3px 25px black, 2px 2px 15px black;position:absolute;bottom:2px;left:5px;"><spring:message code="category.title.${category.key}" /></div>
                                <c:set var="categoryPlaceHolderVar">
                                    <spring:message code="category.title.${category.key}" />
                                </c:set>
                            </div>

<%--                                                            <a href="#" class="stretched-link" target="_blank"></a>--%>
                        </div>

                    </div>
                </div>

<%--                <div id="id_${category.key}" class="card col-lg-3 col-md-6 col-sm-12 container_foto top-category-card p-1">--%>
<%--                    <div class="card-block">--%>
<%--                        <img id="id_image_id_${category.key}" class="card-img-top img-fluid" src="img/categories/<c:out value="${category.key}"/>.png" alt="<c:out value="${category.key}"/>">--%>
<%--                        <article class="text-left pl-4">--%>
<%--                            <h2><spring:message code="category.title.${category.key}" /></h2>--%>
<%--                            <h4>Collection</h4>--%>
<%--                        </article>--%>
<%--                    </div>--%>
<%--                </div>--%>

            </c:forEach>
        </c:forEach>

    </div>

<%-- category collections list  --%>
    <div class="tab-content " id="nav-tabContent">

        <c:forEach var="topcategory" items="${listOfMapsOfItemsOfCategories3}" varStatus="theCount">
            <c:forEach var="category" items="${topcategory}" varStatus="theCount2">
                <c:set var="noUse" value="${collCountList.add(category.value.entrySet().size())}"/>
                <div class="tab-pane fade show top-collection-list mt-5" id="top-collection-list-2-id_${category.key}" role="tabpanel" aria-labelledby="list-home-list">

                    <ul id="cat-search-items-2" class="list-group">
                        <div class="row collections-items-2prow ml-0 mr-1" id="tabContent">

                            <c:forEach var="collection" items="${category.value}">

                                <li class="list-group-item col-lg-6 col-md-6 col-sm-12">

                                    <div class="media ">
                                        <svg class="bd-placeholder-img" width="160" height="120" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: 320x240" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#6c757d"/><text x="20%" y="50%" fill="#dee2e6" dy=".3em">160x120</text></svg>

                                        <div class="ml-1 media-body">
                                            <div class="row">
                                                <div class="col-12 category-collection-search-result-ul">
                                                    <a href="collection/<c:out value="${collection.key}"/>" class="collection-link">
                                                        <h5><c:out value="${collection.value.name}"/></h5>
                                                    </a>
                                                </div>
                                            </div>

                                            <div id="colmodule">
                                                <p id="collapseCollection-<c:out value="${collection.key}"/>" class="collapse text-justify text-muted small col-descr m-0" aria-expanded="false"><c:out value="${collection.value.description}"/></p>
                                                <a role="button" class="collapsed" data-toggle="collapse" href="#collapseCollection-<c:out value="${collection.key}"/>" aria-expanded="false" aria-controls="collapseCollection-<c:out value="${collection.key}"/>"></a>
                                            </div>

                                        </div>

                                    </div>
                                </li>

                            </c:forEach>
                        </div>

                    </ul>

                </div>



            </c:forEach>
        </c:forEach>

    </div>

    <%-- description --%>
    <div class="row my-3">
        <div class="p-lg-5 col-lg-12 col-md-12 col-sm-12 header-2-subtitle align-content-center text-wrap"><spring:message code="coll.subtitle" /></div>
    </div>

<footer class="footer-content">
  <%@include file="footer.jsp" %>
</footer>
</div>

<script>



    $(document).ready(function(e) {

// categories--------------
    let catlist = ["All Categories","History","Politics & Government","Arts & Culture","Places", "Society & Communities", "Science, Technology & Medicine", "Sport & Recreation"];

    let $menuItems = $('.header-menu-item');
    $menuItems.removeClass('active');
    $("#headermenu_categories").addClass('active');

    $("#cat-search-input").on("keyup", function() {
        let value = $(this).val().toLowerCase();
        $("#cat-search-items-2 li").filter(function() {
            $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1);
            if ($('ul#cat-search-items-2 li:visible').length > 0)
                $('#cat-filter-results').text("");
            else
                $('#cat-filter-results').text("No results");
        });
    });

    $('input[type=search]').on('search', function () {
        // search logic here
        // this function will be executed on click of X (clear button)
        let value = $(this).val().toLowerCase();
        $("#cat-search-items-2 li").filter(function() {
            $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
        });
    });

    $('.category-search-popover').popover({
        container: 'body'
    })

    //<c:set var="categoryListSize" value="${collCountList.get(2)}" />
    var array = new Array();
    <c:forEach items="${collCountList}" var="item">
    array.push("${item}");
    </c:forEach>

    var current_2_id = 'id_2222';
    var onclick_category = false;
    var previous_2_id = null;

    if (current_2_id !== null && current_2_id !== undefined && onclick_category !== true){
        $('#top-collection-list-2-'+previous_2_id).removeClass("active");
        $('#top-collection-list-2-'+current_2_id).addClass("active");

        $(".top-category-card-v2").addClass("w-75");

        $('#id_image_'+previous_2_id).removeClass('border border-danger border-3 card_hover');//.css({"filter":blur(35px)});//filter: grayscale(100%);
        $('#id_image_'+current_2_id).addClass('border border-danger border-3 card_hover');

        // console.log('new - test current ID = ', 'id_image_'+current_2_id);

        previous_2_id = current_2_id;
    }

    $(".top-category-card-v2").on('click', function(event) {

        $('#cat-filter-results').text("");
        $('#cat-search-input').val("");

        onclick_category = true;
        console.log('previous_2_id = ', previous_2_id);

        let current_2_id = $(this).attr('id');
        console.log('current_2_id = ', current_2_id);

        $('#top-collection-list-2-'+previous_2_id).removeClass("active");
        $('#top-collection-list-2-'+current_2_id).addClass("active");

        let listIndex=0;
        switch (current_2_id) {
            case 'id_2222': listIndex=0; break;
            case 'id_2940': listIndex=1; break;
            case 'id_2941': listIndex=2; break;
            case 'id_2942': listIndex=3; break;
            case 'id_2943': listIndex=4; break;
            case 'id_2944': listIndex=5; break;
            case 'id_2938': listIndex=6; break;
            case 'id_2939': listIndex=7; break;
        }
        $('#cat-search-input').attr("placeholder", "Filter within " + catlist[listIndex] + (current_2_id=="id_2222"?"":" category"));

        $(".top-category-card-v2").addClass("w-75");

        $('#id_image_'+previous_2_id).removeClass('border border-danger border-3 card_hover');//.css({"filter":blur(35px)});//filter: grayscale(100%);
        $('#id_image_'+current_2_id).addClass('border border-danger border-3 card_hover');

        // console.log('id image current = ', 'id_image_'+current_2_id);
        previous_2_id = current_2_id;
    });

});

</script>
</body>
</html>
