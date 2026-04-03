<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Change Password</title>
<%@include file="component/all_css_js.jsp"%>
<style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
</style>
</head>
<body>
	<c:if test="${empty userObj }">
		<c:redirect url="login.jsp"></c:redirect>
	</c:if>
	<%@include file="component/navbar.jsp"%>

	<div class="container p-4">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card paint-card">
					<div class="card-body">
						<p class="fs-3 text-center">Change Password</p>
						<c:if test="${not empty errorMsg}">
							<p class="fs-4 text-center text-danger">${errorMsg}</p>
							<c:remove var="errorMsg" scope="session" />
						</c:if>
						<c:if test="${not empty succMsg}">
							<p class="fs-4 text-center text-success">${succMsg}</p>
							<c:remove var="succMsg" scope="session" />
						</c:if>
						<form action="changePassword" method="post">
							<div class="mb-3">
								<label class="form-label">Old Password</label> <input required
									name="oldPassword" type="password" class="form-control">
							</div>
							<div class="mb-3">
								<label class="form-label">New Password</label> <input required
									name="newPassword" type="password" class="form-control">
							</div>
							<input type="hidden" value="${userObj.id }" name="uid">
							<button type="submit" class="btn btn-primary col-md-12">Change
								Password</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

	<%@include file="component/footer.jsp"%>
</body>
</html>
