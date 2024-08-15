<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Coming Soon</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            color: #333;
            text-align: center;
            padding: 50px;
            margin: 0;
        }
        .container {
            max-width: 600px;
            margin: auto;
        }
        h1 {
            font-size: 3em;
            margin-bottom: 0.5em;
        }
        p {
            font-size: 1.2em;
            margin-bottom: 1em;
        }
        .countdown {
            font-size: 2em;
            margin-top: 1em;
        }
        footer {
            margin-top: 2em;
            font-size: 0.9em;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Website Launching Soon!</h1>
        <p>We're working hard to bring you our new website. Stay tuned!</p>
        <div class="countdown" id="countdown"></div>
        <footer>
            &copy; 2024 Your Company. All rights reserved.
        </footer>
    </div>

    <script>
        // Countdown timer
        function updateCountdown() {
            const launchDate = new Date("2024-12-31T23:59:59").getTime();
            const now = new Date().getTime();
            const distance = launchDate - now;

            const days = Math.floor(distance / (1000 * 60 * 60 * 24));
            const hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
            const minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
            const seconds = Math.floor((distance % (1000 * 60)) / 1000);

            document.getElementById("countdown").innerHTML = `
                ${days} Days ${hours} Hours ${minutes} Minutes ${seconds} Seconds
            `;

            if (distance < 0) {
                document.getElementById("countdown").innerHTML = "The website is now live!";
            }
        }

        setInterval(updateCountdown, 1000);
    </script>
</body>
</html>

