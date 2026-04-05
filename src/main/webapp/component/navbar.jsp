<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<style>
.glass-nav {
    background: rgba(255, 255, 255, 0.8) !important;
    backdrop-filter: blur(12px);
    -webkit-backdrop-filter: blur(12px);
    border-bottom: 2px solid rgba(255, 255, 255, 0.4);
    box-shadow: 0 4px 6px -1px rgba(0, 0, 0, 0.1);
}

.nav-link {
    color: #334155 !important;
    font-weight: 600;
    font-family: 'Outfit', sans-serif;
    letter-spacing: 0.5px;
    margin: 0 10px;
    transition: all 0.3s ease;
}

.nav-link:hover {
    color: var(--primary-blue) !important;
    transform: translateY(-2px);
}

.navbar-brand {
    font-size: 1.6rem;
    color: var(--primary-blue) !important;
}
</style>

<nav class="navbar navbar-expand-lg navbar-light glass-nav sticky-top py-3">
	<div class="container">
		<a class="navbar-brand fw-bold" href="index.jsp">
			<i class="fas fa-bolt-lightning me-2"></i>DIABLO
		</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav me-auto mb-2 mb-lg-0">
				<li class="nav-item"><a class="nav-link" href="index.jsp">HOME</a></li>
				<li class="nav-item"><a class="nav-link" href="user_appointment.jsp">APPOINTMENT</a></li>
			</ul>

			<div class="d-flex align-items-center">
				<c:if test="${empty userObj }">
					<div class="dropdown me-2">
						<button class="btn btn-primary dropdown-toggle px-4 shadow-sm" type="button"
							id="dropdownMenuButton1" data-bs-toggle="dropdown"
							aria-expanded="false">LOGIN</button>
						<ul class="dropdown-menu dropdown-menu-end border-0 shadow-lg" aria-labelledby="dropdownMenuButton1">
							<li><a class="dropdown-item py-2 fw-semibold" href="admin_login.jsp">ADMIN</a></li>
							<li><a class="dropdown-item py-2 fw-semibold" href="doctor_login.jsp">DOCTOR</a></li>
							<li><a class="dropdown-item py-2 fw-semibold" href="login.jsp">USER</a></li>
						</ul>
					</div>
					<a class="btn btn-outline-primary px-4 fw-bold" href="signup.jsp">SIGNUP</a>
				</c:if>

				<c:if test="${not empty userObj }">
					<div class="dropdown">
						<button class="btn btn-primary dropdown-toggle px-4 shadow-sm" type="button"
							id="dropdownMenuButton1" data-bs-toggle="dropdown"
							aria-expanded="false"><i class="fas fa-user-circle me-1"></i> ${userObj.fullName}</button>
						<ul class="dropdown-menu dropdown-menu-end border-0 shadow-lg" aria-labelledby="dropdownMenuButton1">
							<li><a class="dropdown-item py-2 fw-semibold" href="view_appointment.jsp">VIEW APPOINTMENT</a></li>
							<li><a class="dropdown-item py-2 fw-semibold" href="change_password.jsp">CHANGE PASSWORD</a></li>
							<li><hr class="dropdown-divider"></li>
							<li><a class="dropdown-item py-2 fw-semibold text-danger" href="logout">LOGOUT</a></li>
						</ul>
					</div>
				</c:if>
			</div>
		</div>
	</div>
</nav>
