<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<nav class="navbar navbar-expand-lg navbar-dark bg-info p-3 shadow-sm">
	<div class="container-fluid">
		<a class="navbar-brand fw-bold" href="index.jsp"><i class="fas fa-bolt-lightning"></i> DIABLO ADMIN</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav me-auto mb-2 mb-lg-0">
				<li class="nav-item"><a class="nav-link active" href="index.jsp">HOME</a></li>
				<li class="nav-item"><a class="nav-link" href="doctor.jsp">DOCTOR</a></li>
				<li class="nav-item"><a class="nav-link" href="view_appointment.jsp">APPOINTMENT</a></li>
				<li class="nav-item"><a class="nav-link" href="specialist.jsp">SPECIALIST</a></li>
			</ul>

			<form class="d-flex">
				<div class="dropdown">
					<button class="btn btn-light dropdown-toggle" type="button"
						id="dropdownMenuButton1" data-bs-toggle="dropdown"
						aria-expanded="false">Admin</button>
					<ul class="dropdown-menu dropdown-menu-end" aria-labelledby="dropdownMenuButton1">
						<li><a class="dropdown-item" href="../logout">Logout</a></li>
					</ul>
				</div>
			</form>
		</div>
	</div>
</nav>
