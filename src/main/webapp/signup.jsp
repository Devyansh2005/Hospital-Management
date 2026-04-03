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

	<div class="container p-5">
		<div class="row">
			<div class="col-md-5 offset-md-3">
				<div class="card paint-card border-0 shadow-lg" style="border-radius: 24px;">
					<div class="card-body p-5">
						<h2 class="text-center fw-bold mb-4" style="font-family: 'Outfit', sans-serif;">Create Account</h2>

						<c:if test="${not empty succMsg}">
							<div class="alert alert-success bg-success bg-opacity-10 text-success border-0 text-center mb-4"><%= session.getAttribute("succMsg") %></div>
							<c:remove var="succMsg" scope="session" />
						</c:if>

						<c:if test="${not empty errorMsg}">
							<div class="alert alert-danger bg-danger bg-opacity-10 text-danger border-0 text-center mb-4"><%= session.getAttribute("errorMsg") %></div>
							<c:remove var="errorMsg" scope="session" />
						</c:if>

						<form action="user_register" method="post">
							<div class="mb-4">
								<label class="form-label text-muted small fw-bold">Full Name</label> 
								<input required name="full_name" type="text" class="form-control form-control-lg border-0 bg-light px-4" style="border-radius: 12px;" placeholder="John Doe">
							</div>
							<div class="mb-4">
								<label class="form-label text-muted small fw-bold">Email address</label> 
								<input required name="email" type="email" class="form-control form-control-lg border-0 bg-light px-4" style="border-radius: 12px;" placeholder="name@example.com">
							</div>
							<div class="mb-4">
								<label class="form-label text-muted small fw-bold">Password</label> 
								<input required name="password" type="password" class="form-control form-control-lg border-0 bg-light px-4" style="border-radius: 12px;" placeholder="••••••••">
							</div>
							<div class="mb-4">
								<label class="form-label text-muted small fw-bold">Phone Number</label> 
								<input required name="phno" type="text" class="form-control form-control-lg border-0 bg-light px-4" style="border-radius: 12px;" placeholder="+1 234 567 890">
							</div>
							<div class="mt-5">
								<button type="submit" class="btn btn-primary btn-lg w-100 fw-bold py-3 shadow" style="border-radius: 12px;">Submit</button>
							</div>
						</form>
						<div class="mt-5 text-center">
							<span class="text-muted small">Already have an account? <a href="login.jsp" class="text-primary fw-bold text-decoration-none">Login here</a></span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<%@include file="component/footer.jsp"%>

</body>
</html>
