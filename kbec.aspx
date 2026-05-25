<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="kbec.aspx.cs" Inherits="KBEC.kbec" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <title>KBEC - KUET Business & Entrepreneurship Club</title>

    <!-- CSS -->
    <link href="Content/kbec.css" rel="stylesheet" />
</head>

<body>

    <form id="form1" runat="server">

        <!-- NAVBAR -->
        <header class="navbar">
            <div class="nav-left">
                <img src="Images/logo.jpg" alt="Logo" />
                <h2>KBEC</h2>
            </div>

            <div
                class="profile-menu"
                id="profileMenu"
                role="menu"
                aria-labelledby="profileMenuButton"
                hidden>

                <div class="profile-menu-title">Login as</div>

                <a href="login.aspx?type=admin"
                    class="profile-menu-item"
                    role="menuitem">
                    Admin Login
                </a>

                <a href="login.aspx?type=user"
                    class="profile-menu-item"
                    role="menuitem">
                    User Login
                </a>
            </div>

            <nav class="nav-links">
                <a href="kbec.aspx">Home</a>
                <a href="about.aspx">About</a>
                <a href="events.aspx">Events</a>
                <a href="#">Alumni</a>
            </nav>

            <div class="nav-right">
                <button
                    class="profile-btn"
                    id="profileMenuButton"
                    type="button"
                    aria-haspopup="true"
                    aria-expanded="false"
                    aria-controls="profileMenu">

                    <span class="sr-only">Open login options</span>

                    <svg
                        class="profile-icon"
                        viewBox="0 0 24 24"
                        aria-hidden="true"
                        focusable="false">

                        <path
                            d="M12 12a4 4 0 1 0-4-4 4 4 0 0 0 4 4Zm0 2c-4.42 0-8 2-8 4.5A1.5 1.5 0 0 0 5.5 20h13A1.5 1.5 0 0 0 20 18.5C20 16 16.42 14 12 14Z" />
                    </svg>
                </button>
            </div>
        </header>

        <!-- HERO -->
        <section class="hero">
            <div class="hero-text">
                <h1>KBEC</h1>

                <p>
                    Igniting innovation, leadership, and entrepreneurial excellence at
                    KUET. Empowering students to grow, lead, and succeed globally.
                </p>

                <div class="hero-buttons">
                    <button type="button" class="btn btn-outline">
                        Discover More
                    </button>

                    <a href="events.aspx" class="btn btn-primary">
                        View Events
                    </a>
                </div>
            </div>

            <div class="hero-media">
                <img class="hero-logo" src="Images/logo.jpg" alt="KBEC Logo" />
            </div>
        </section>

        <!-- WHAT'S NEXT -->
        <section class="what-next">

            <div class="section-heading">

                <h2>What's Next</h2>

            </div>

            <div class="what-next-marquee">

                <div class="what-next-track">

                    <asp:Repeater
                        ID="rptFeatured"
                        runat="server">

                        <ItemTemplate>

                            <a href='event-details.aspx?event=<%# Eval("EventKey") %>'
                                class="what-next-item">

                                <%# Eval("Title") %>

                            </a>

                            <div class="what-next-divider">
                                |
                            </div>

                        </ItemTemplate>

                    </asp:Repeater>

                    <!-- DUPLICATE FOR SMOOTH LOOP -->

                    <asp:Repeater
                        ID="rptFeatured2"
                        runat="server">

                        <ItemTemplate>

                            <a href='event-details.aspx?event=<%# Eval("EventKey") %>'
                                class="what-next-item">

                                <%# Eval("Title") %>

                            </a>

                            <div class="what-next-divider">
                                |
                            </div>

                        </ItemTemplate>

                    </asp:Repeater>

                </div>

            </div>

        </section>

        <!-- SPONSORS -->
        <section class="sponsors">

            <h2>Our Sponsors</h2>

            <div class="sponsor-marquee">

                <div class="sponsor-logos" aria-label="Sponsor logos">

                    <div>
                        <img src="Images/10 minute school.jpg"
                            alt="10 Minute School"
                            loading="lazy" />
                    </div>

                    <div>
                        <img src="Images/banglalink.jpg"
                            alt="Banglalink"
                            loading="lazy" />
                    </div>

                    <div>
                        <img src="Images/Bank asia.jpg"
                            alt="Bank Asia"
                            loading="lazy" />
                    </div>

                    <div>
                        <img src="Images/NCC bank.jpg"
                            alt="NCC Bank"
                            loading="lazy" />
                    </div>

                    <div>
                        <img src="Images/prime_bank.jpeg"
                            alt="Prime Bank"
                            loading="lazy" />
                    </div>

                    <div>
                        <img src="Images/Somoy tv.jpg"
                            alt="Somoy TV"
                            loading="lazy" />
                    </div>

                    <div>
                        <img src="Images/Walton.jpg"
                            alt="Walton"
                            loading="lazy" />
                    </div>

                    <div>
                        <img src="Images/Uniliver.jpg"
                            alt="Unilever"
                            loading="lazy" />
                    </div>

                    <div>
                        <img src="Images/Polar.jpeg"
                            alt="Polar"
                            loading="lazy" />
                    </div>

                    <div>
                        <img src="Images/Skino.jpg"
                            alt="Skino"
                            loading="lazy" />
                    </div>

                    <div>
                        <img src="Images/SR dream it.jpg"
                            alt="SR Dream IT"
                            loading="lazy" />
                    </div>

                    <div>
                        <img src="Images/Clemon.jpg"
                            alt="Clemon"
                            loading="lazy" />
                    </div>

                </div>
            </div>
        </section>

        <!-- FOOTER -->
        <footer class="footer">

            <div class="footer-container">

                <div class="footer-left">

                    <img src="Images/logo.jpg" alt="Logo" />

                    <h3>KUET Business & Entrepreneurship Club</h3>

                    <p>
                        The Premier Business And Entrepreneurship Club of KUET.
                    </p>

                    <div class="footer-contact">
                        <p>📍 SWC-302, Students Welfare Center, KUET</p>
                        <p>📞 +880 1822 076 101</p>
                        <p>✉ kbec.kuet@gmail.com</p>
                    </div>

                </div>

                <div class="footer-right">

                    <h4>Follow Us</h4>

                    <div class="footer-social">
                        <div>F</div>
                        <div>in</div>
                        <div>IG</div>
                    </div>

                    <h4 class="dev-title">Developed By</h4>

                    <p class="dev">AlgoOasis (IT Partner)</p>

                </div>

            </div>

            <div class="footer-bottom">
                © 2026 KBEC Official. All Rights Reserved.
            </div>

        </footer>

    </form>

    <!-- JS -->
    <script src="Scripts/kbec.js"></script>

</body>
</html>