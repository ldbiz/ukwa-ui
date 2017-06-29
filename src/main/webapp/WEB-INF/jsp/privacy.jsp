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


<html lang="en">
<head>
<base href="${fn:substring(url, 0, fn:length(url) - fn:length(uri))}${req.contextPath}/${locale}/ukwa/" />
<title>UKWA Privacy</title>
<%@include file="head.jsp" %>
</head>

<body>
<%@include file="nav.jsp" %>
<div class="container-fluid">
  <header>
	<%@include file="header.jsp" %>
  </header>
  <section id="noresults-header">
    <div class="row header-blue white">
      <div class="col-lg-8 offset-lg-2 col-md-10 offset-md-1 col-sm-12">
        <h2 class="uppercase">Privacy</h2>
      </div>
    </div>
  </section>
  <section id="content">
	<div class="row margin-0 padding-side-20 padding-top-80 padding-bottom-80 text-justify">
    <div class="col-lg-8 offset-lg-2 col-md-10 offset-md-1 col-sm-12">
      <p>This website uses Google Analytics, a web analytics service provided by Google, Inc. ("Google"). Google Analytics uses "cookies", which are text files placed on your computer, to help the website analyze how users use the site. The information generated by the cookie about your use of the website (including your IP address) will be transmitted to and stored by Google on servers in the United States . Google will use this information for the purpose of evaluating your use of the website, compiling reports on website activity for website operators and providing other services relating to website activity and internet usage. Google may also transfer this information to third parties where required to do so by law, or where such third parties process the information on Google's behalf. Google will not associate your IP address with any other data held by Google. You may refuse the use of cookies by selecting the appropriate settings on your browser, however please note that if you do this you may not be able to use the full functionality of this website. By using this website, you consent to the processing of data about you by Google in the manner and for the purposes set out above.</p>
      <p>You can use the Google Analytics Opt-out Browser Add-on to stop data from being sent to your computer when you visit the UK Web Archive which uses Google Analytics JavaScript (ga.js) to track usage. The beta version of the opt-out is available for Internet Explorer, Firefox, and Chrome, and can be downloaded here: <a href="http://tools.google.com/dlpage/gaoptout" target="_new">http://tools.google.com/dlpage/gaoptout</a>.</p>
      <p>We additionally use cookies for session tracking and storing site preferences, for which the sole purposes are to display the archived websites properly and improve user experience. The archived websites are faithful copies of the live websites, and therefore may also contain functional JavaScripts which set cookies on your computer. Cookies can be disabled by changing the privacy settings of your browsers.</p>
      <p>We request contact details on our <a href="contact" title="contact">contact</a> and <a href="nominate" title="nominate a site">nominate a site</a> forms. All personal information about you or any other living individuals recorded on the forms will be handled in accordance with the Data Protection Act 1998. This means that it will be held securely and used for responding to you, internal administrative and research purposes only, and will not be passed to any other party, unless obliged by law.</p>
    </div>
    </div>
  </section>
  <footer>
	<%@include file="footer.jsp" %>
  </footer>
</div>
</body>
</html>
