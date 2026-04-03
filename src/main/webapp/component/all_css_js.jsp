<!-- Google Fonts: Outfit and Inter -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&family=Outfit:wght@300;400;500;600;700;800&display=swap" rel="stylesheet">

<!-- Bootstrap 5 CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- Font Awesome -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

<!-- AOS (Animate On Scroll) -->
<link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">

<!-- Custom Premium Styles -->
<style>
:root {
    --primary-blue: #0ea5e9;
    --primary-dark: #0369a1;
    --secondary-slate: #64748b;
    --accent-teal: #14b8a6;
    --bg-light: #f8fafc;
    --glass-bg: rgba(255, 255, 255, 0.8);
    --glass-border: rgba(255, 255, 255, 0.2);
    --shadow-premium: 0 10px 15px -3px rgba(0, 0, 0, 0.1), 0 4px 6px -2px rgba(0, 0, 0, 0.05);
}

body {
    font-family: 'Inter', sans-serif;
    background-color: var(--bg-light);
    color: #1e293b;
    overflow-x: hidden;
}

h1, h2, h3, h4, h5, h6, .navbar-brand {
    font-family: 'Outfit', sans-serif;
    font-weight: 700;
}

.paint-card {
    background: #fff;
    border: none;
    border-radius: 12px;
    box-shadow: var(--shadow-premium);
    transition: all 0.3s cubic-bezier(0.4, 0, 0.2, 1);
}

.paint-card:hover {
    transform: translateY(-5px);
    box-shadow: 0 20px 25px -5px rgba(0, 0, 0, 0.1), 0 10px 10px -5px rgba(0, 0, 0, 0.04);
}

.btn-primary {
    background-color: var(--primary-blue);
    border: none;
    padding: 10px 24px;
    border-radius: 8px;
    font-weight: 600;
    transition: all 0.3s ease;
}

.btn-primary:hover {
    background-color: var(--primary-dark);
    transform: scale(1.05);
}

.glass-nav {
    background: var(--glass-bg);
    backdrop-filter: blur(12px);
    -webkit-backdrop-filter: blur(12px);
    border-bottom: 1px solid var(--glass-border);
}

/* Bento Grid Styles */
.bento-grid {
    display: grid;
    grid-template-columns: repeat(4, 1fr);
    grid-auto-rows: 240px;
    gap: 20px;
}

.bento-item {
    background: #fff;
    border-radius: 24px;
    padding: 30px;
    position: relative;
    overflow: hidden;
    transition: all 0.4s ease;
}

.bento-item:hover {
    transform: scale(1.02);
}

.bento-1 { grid-column: span 2; grid-row: span 2; }
.bento-2 { grid-column: span 2; grid-row: span 1; }
.bento-3 { grid-column: span 1; grid-row: span 1; }
.bento-4 { grid-column: span 1; grid-row: span 1; }

</style>

<!-- Bootstrap JS Bundle -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
<!-- AOS JS -->
<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
<script>
  document.addEventListener('DOMContentLoaded', function() {
    AOS.init({
      duration: 1000,
      once: true,
      easing: 'ease-out-cubic'
    });
  });
</script>
