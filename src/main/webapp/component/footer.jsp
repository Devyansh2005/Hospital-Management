<style>
.premium-footer {
    background: #0f172a;
    color: #f8fafc;
    padding: 80px 0 30px;
    font-family: 'Outfit', sans-serif;
}

.footer-heading {
    font-size: 1.2rem;
    font-weight: 700;
    margin-bottom: 25px;
    letter-spacing: 1px;
    text-transform: uppercase;
    color: var(--primary-blue);
}

.footer-link {
    color: #94a3b8;
    text-decoration: none;
    transition: all 0.3s ease;
    display: block;
    margin-bottom: 12px;
}

.footer-link:hover {
    color: #fff;
    padding-left: 5px;
}

.social-icon {
    width: 40px;
    height: 40px;
    background: rgba(255, 255, 255, 0.05);
    display: inline-flex;
    align-items: center;
    justify-content: center;
    border-radius: 10px;
    margin-right: 10px;
    color: #fff;
    transition: all 0.3s ease;
}

.social-icon:hover {
    background: var(--primary-blue);
    transform: translateY(-5px);
}

.footer-bottom {
    border-top: 1px solid rgba(255, 255, 255, 0.05);
    margin-top: 50px;
    padding-top: 30px;
    text-align: center;
    color: #64748b;
    font-size: 0.9rem;
}
</style>

<footer class="premium-footer">
    <div class="container">
        <div class="row">
            <div class="col-md-4 mb-5">
                <div class="footer-heading"><i class="fas fa-hospital-symbol me-2"></i>HOSPITAL</div>
                <p class="pe-md-5 text-slate-400" style="color: #64748b;">
                    Providing world-class healthcare with modern technology and a human touch. Our mission is to combine medical excellence with a compassionate patient experience.
                </p>
                <div class="mt-4">
                    <a href="#" class="social-icon"><i class="fab fa-facebook-f"></i></a>
                    <a href="#" class="social-icon"><i class="fab fa-twitter"></i></a>
                    <a href="#" class="social-icon"><i class="fab fa-instagram"></i></a>
                    <a href="#" class="social-icon"><i class="fab fa-linkedin-in"></i></a>
                </div>
            </div>
            
            <div class="col-md-2 mb-4">
                <div class="footer-heading">LINKS</div>
                <a href="index.jsp" class="footer-link">Home</a>
                <a href="user_appointment.jsp" class="footer-link">Appointment</a>
                <a href="login.jsp" class="footer-link">Login</a>
                <a href="signup.jsp" class="footer-link">Register</a>
            </div>
            
            <div class="col-md-3 mb-4">
                <div class="footer-heading">SERVICES</div>
                <a href="#" class="footer-link">Diagnostic Suite</a>
                <a href="#" class="footer-link">Surgical Excellence</a>
                <a href="#" class="footer-link">Consultation Desk</a>
                <a href="#" class="footer-link">24/7 Emergency</a>
            </div>
            
            <div class="col-md-3">
                <div class="footer-heading">CONTACT</div>
                <p class="text-slate-400" style="color: #94a3b8;"><i class="fas fa-map-marker-alt me-2 text-primary"></i> 123 Health Ave, Medicity</p>
                <p class="text-slate-400" style="color: #94a3b8;"><i class="fas fa-phone-alt me-2 text-primary"></i> +1 (234) 567 890</p>
                <p class="text-slate-400" style="color: #94a3b8;"><i class="fas fa-envelope me-2 text-primary"></i> contact@hospital.com</p>
            </div>
        </div>
        
        <div class="footer-bottom">
            <p>&copy; 2026 HOSPITAL. ALL RIGHTS RESERVED. DESIGNED FOR EXCELLENCE.</p>
        </div>
    </div>
</footer>
