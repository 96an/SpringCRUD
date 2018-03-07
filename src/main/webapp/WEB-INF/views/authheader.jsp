<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<div class="authbar">
		<span>Dear <strong>${loggedinuser}</strong>, Welcome to SpringMVCCRUD System.</span>
		<span class="floatRight"><a class="btn btn-danger" href="<c:url value="/logout" />">Logout</a></span>
		<sec:authorize access="hasRole('ADMIN')">
			<span class="floatRight"><a class="btn btn-primary" href="<c:url value='/newuser' />">+ Add New User</a></span>
		</sec:authorize>
	</div>
