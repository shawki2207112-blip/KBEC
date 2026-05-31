<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="discover.aspx.cs" Inherits="KBEC.discover" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title>Discover KBEC</title>

    <link rel="stylesheet" href="Content/kbec.css" />

    <style>

        body {
            margin: 0;
            font-family: Arial;
            background: radial-gradient(circle at top, #1b1f2a, #0b0f14);
            color: white;
        }

        .hero {
            height: 70vh;
            display: flex;
            align-items: center;
            justify-content: center;
            text-align: center;
            flex-direction: column;
            background: linear-gradient(135deg, #f5c518, #ff6b6b);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            animation: fadeIn 2s ease-in-out;
        }

        .hero h1 {
            font-size: 60px;
            margin: 0;
        }

        .hero p {
            font-size: 18px;
            color: #ddd;
            margin-top: 10px;
            -webkit-text-fill-color: white;
            max-width: 700px;
        }

        .grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 25px;
            width: 90%;
            margin: 50px auto;
        }

        .card {
            background: rgba(255,255,255,0.05);
            border: 1px solid rgba(255,255,255,0.1);
            padding: 25px;
            border-radius: 15px;
            backdrop-filter: blur(10px);
            transition: 0.3s;
            cursor: pointer;
        }

        .card:hover {
            transform: translateY(-10px);
            background: rgba(245,197,24,0.1);
            border-color: #f5c518;
        }

        .card h3 {
            color: #f5c518;
        }

        .card p {
            color: #ccc;
            font-size: 14px;
            line-height: 1.5;
        }

        .btn {
            display: inline-block;
            margin-top: 15px;
            padding: 10px 15px;
            background: #f5c518;
            color: black;
            text-decoration: none;
            border-radius: 8px;
            font-weight: bold;
        }

        .btn:hover {
            background: white;
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(30px); }
            to { opacity: 1; transform: translateY(0); }
        }

    </style>

</head>

<body>

<form id="form1" runat="server">

    <!-- HERO -->
    <div class="hero">

        <h1>Discover KBEC</h1>

        <p>
            Explore innovation, entrepreneurship, and leadership opportunities at KUET Business & Entrepreneurship Club.
            Build your future through real-world exposure, events, and skill development.
        </p>

    </div>

    <!-- FEATURE CARDS -->
    <div class="grid">

        <div class="card">
            <h3>🚀 Startup Culture</h3>
            <p>
                Experience real startup environments, incubation programs, and entrepreneurship challenges
                that help you turn ideas into real ventures.
            </p>
            <a href="events.aspx" class="btn">Explore</a>
        </div>

        <div class="card">
            <h3>🎤 Events & Seminars</h3>
            <p>
                Participate in hackathons, workshops, business competitions, and expert sessions
                led by industry professionals and alumni mentors.
            </p>
            <a href="events.aspx" class="btn">View Events</a>
        </div>

        <div class="card">
            <h3>📈 Career Growth</h3>
            <p>
                Enhance your technical, leadership, and communication skills through structured programs
                designed to prepare you for the industry.
            </p>
            <a href="signup.aspx" class="btn">Join Now</a>
        </div>

        <div class="card">
            <h3>🏆 Leadership & Skills Development</h3>
            <p>
                Build confidence, leadership ability, teamwork, and problem-solving skills through
                KBEC training sessions, group activities, and real project exposure.
            </p>
            <a href="about.aspx" class="btn">Learn More</a>
        </div>

    </div>

</form>

</body>
</html>