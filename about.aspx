<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="about.aspx.cs" Inherits="KBEC.about" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>About KBEC</title>

    <link rel="stylesheet" href="Content/kbec.css" />

    <style>

.about-page{
    padding-top:120px;
    min-height:100vh;

    background:
        radial-gradient(circle at top right, rgba(245,197,24,0.15), transparent 30%),
        #0b0f14;
}

.about-container{
    max-width:1200px;
    margin:auto;

    display:grid;
    grid-template-columns:1fr 1fr;
    gap:50px;
    align-items:center;
}

.about-text{
    animation: fadeUp 1s ease forwards;
}

.about-tag{
    display:inline-block;
    padding:8px 16px;
    border-radius:999px;

    background:rgba(245,197,24,0.1);
    border:1px solid rgba(245,197,24,0.3);

    color:#f5c518;
    font-size:13px;
    letter-spacing:1px;
    text-transform:uppercase;

    margin-bottom:20px;
}

.about-text h1{
    font-size:64px;
    margin-bottom:24px;
    line-height:1.1;
    color:white;
}

.about-text p{
    color:#b4b9c2;
    line-height:1.9;
    font-size:18px;
}

.about-highlight{
    color:#f5c518;
    font-weight:bold;
}

.about-video{
    position:relative;

    border-radius:24px;
    overflow:hidden;

    animation: fadeUp 1.2s ease forwards;

    border:1px solid rgba(245,197,24,0.2);

    box-shadow:0 30px 60px rgba(0,0,0,0.4);
}

.about-video video{
    width:100%;
    display:block;
    border-radius:24px;

    transition: transform 0.5s ease;
}

.about-video:hover video{
    transform:scale(1.03);
}

.video-overlay{
    position:absolute;
    inset:0;

    background:linear-gradient(to top,
        rgba(0,0,0,0.55),
        rgba(0,0,0,0.1)
    );

    pointer-events:none;
}

.video-title{
    position:absolute;
    bottom:24px;
    left:24px;

    z-index:2;
    color:white;
}

@keyframes fadeUp{
    from{
        opacity:0;
        transform:translateY(30px);
    }

    to{
        opacity:1;
        transform:translateY(0);
    }
}

@media(max-width:900px){

    .about-container{
        grid-template-columns:1fr;
    }

    .about-text h1{
        font-size:48px;
    }

}

    </style>

</head>

<body>

<form id="form1" runat="server">

<!-- NAVBAR -->
<header class="navbar">

    <div class="nav-left">
        <img src="Images/logo.jpg" alt="Logo" />
        <h2>KBEC</h2>
    </div>

    <nav class="nav-links">
        <a href="kbec.aspx">Home</a>
        <a href="about.aspx">About</a>
        <a href="events.aspx">Events</a>
    </nav>

</header>

<!-- ABOUT SECTION -->
<section class="about-page">

    <div class="about-container">

        <!-- LEFT -->
        <div class="about-text">

            <div class="about-tag">
                About KBEC
            </div>

            <h1>
                Building Future Entrepreneurs
            </h1>

            <p>
                <span class="about-highlight">KBEC</span>,
                the premier business and entrepreneurship club
                of Khulna University of Engineering & Technology,
                founded in 2019, bridges engineering excellence
                with entrepreneurial vision.

                Through <span class="about-highlight">KBEC Nexus</span>,
                Entrepreneurial Voice, Case Crack, workshops,
                seminars, startup programs, and
                <span class="about-highlight">TEDxKUET</span>,
                it empowers students from idea to launch,
                fostering leadership, innovation,
                and real-world impact.
            </p>

        </div>

        <!-- RIGHT -->
        <div class="about-video">

            <video autoplay muted loop playsinline>
                <source src="Videos/kbec-video.mp4" type="video/mp4" />
            </video>

            <div class="video-overlay"></div>

            <div class="video-title">
                <h3>Innovation Starts Here</h3>
                <p>Empowering Future Leaders</p>
            </div>

        </div>

    </div>

</section>

</form>

</body>
</html>