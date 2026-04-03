<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Signup</title>
<%@include file="component/all_css_js.jsp"%>
<style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
</style>
</head>
<body>
	<%@include file="component/navbar.jsp"%>

	<div class="container-fluid p-5">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card paint-card">
					<div class="card-body">
						<p class="fs-4 text-center">User Registration</p>

						<c:if test="${not empty succMsg}">
							<p class="fs-4 text-center text-success">${succMsg}</p>
							<c:remove var="succMsg" scope="session" />
						</c:if>

						<c:if test="${not empty errorMsg}">
							<p class="fs-4 text-center text-danger">${errorMsg}</p>
							<c:remove var="errorMsg" scope="session" />
						</c:if>

						<form action="user_register" method="post">
							<div class="mb-3">
								<label class="form-label">Full Name</label> <input required
									name="full_name" type="text" class="form-control">
							</div>
							<div class="mb-3">
								<label class="form-label">Email address</label> <input required
									name="email" type="email" class="form-control">
							</div>
							<div class="mb-3">
								<label class="form-label">Password</label> <input required
									name="password" type="password" class="form-control">
							</div>
							<div class="mb-3">
								<label class="form-label">Phone Number</label> <input required
									name="phno" type="text" class="form-control">
							</div>
							<button type="submit" class="btn btn-primary col-md-12">Submit</button>
						</form>
						<br> Already have an account? <a href="login.jsp"
							class="text-decoration-none">Login here</a>
					</div>
				</div>
			</div>
		</div>
	</div>

	<%@include file="component/footer.jsp"%>

</body>
</html>
