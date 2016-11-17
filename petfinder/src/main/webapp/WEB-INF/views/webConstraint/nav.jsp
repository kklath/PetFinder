<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<script type="text/javascript">
$(document).ready(function() {
	$("#preferences").click(function() {
		$(".preferences").toggleClass("hide");
	});
});
</script>
<body>
	<div class="asideHeader mobileHide">
		<a href="<c:url value='/main.do'/>"> PET-FINDER</a>
		<div class="headerNav">
			<c:choose>
				<c:when test="${id == null}">
					<a href="<c:url value='/login.do'/>"> <input type="button" id="pageFocusLogin" value="로그인"></a>
					<a href="<c:url value='/register.do'/>"> <input type="button" id="pageFocusSignup" value="회원가입"></a>
				</c:when>
				<c:otherwise>
					<p>${id}</p>
					<img id="preferences" src="../resources/img/preferences.png"/>
					<div class="preferences hide">
						<img src="../resources/img/preDiv.png"/>
						<a href="<c:url value='/mypage.do'/>"><input type="button" value="마이페이지"></a>
						<a href="<c:url value='/logout.do'/>"><input type="button" value="로그아웃"></a>
					</div>
				</c:otherwise>
			</c:choose>
					<ul>		
						<li><a href="<c:url value='/disappearance/list.do'/>"><input type="button" id="pageFocusDisList" value="실종게시판"></a></li>
						<li><a href="<c:url value='/finds/list.do'/>"><input type="button" id="pageFocusFindList" value="발견게시판"></a></li>
						<li><a href="<c:url value='/etc/about.do'/>"><input type="button" id="pageFocusAbout" value="ABOUT"></a></li>
					</ul>
		</div>
	</div>
</body>
</html>