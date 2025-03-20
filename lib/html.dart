const String birthdayHtml = '''
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Happy Birthday!</title>
    <style>
        /* General Styles */
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            background: linear-gradient(135deg, #f06, #4a90e2);
            color: white;
            text-align: center;
            overflow: hidden;
        }

        /* Card Design */
        .card {
            margin: 20% auto;
            padding: 20px;
            background: rgba(255, 255, 255, 0.1);
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
            animation: fadeIn 2s ease-in-out;
        }

        /* Animations */
        @keyframes fadeIn {
            0% { opacity: 0; transform: translateY(30px); }
            100% { opacity: 1; transform: translateY(0); }
        }

        @keyframes confetti-fall {
            0% { transform: translateY(-100vh) rotateZ(0deg); }
            100% { transform: translateY(100vh) rotateZ(720deg); }
        }

        /* Confetti */
        .confetti {
            width: 10px;
            height: 10px;
            background: #ff0;
            position: fixed;
            top: 0;
            left: 50%;
            opacity: 0.7;
            animation: confetti-fall 5s linear infinite;
        }
        
        /* Custom Colors */
        .confetti:nth-child(2n) { background: #f06; }
        .confetti:nth-child(3n) { background: #4a90e2; }
        .confetti:nth-child(4n) { background: #00ffcc; }
        .confetti:nth-child(5n) { background: #ffcc00; }

        h1 {
            font-size: 36px;
            animation: fadeIn 2s ease-in-out;
        }
        p {
            font-size: 20px;
            margin: 20px 0;
            animation: fadeIn 3s ease-in-out;
        }
    </style>
</head>
<body onload="playMusic()">
    <!-- Background Music -->
    <audio id="birthdayMusic" autoplay loop>
        <source src="https://www.bensound.com/bensound-music/bensound-creativeminds.mp3" type="audio/mp3">
    </audio>

    <!-- Card Content -->
    <div class="card">
        <h1>🎉 Happy Birthday, Sayang! 🎉</h1>
        <p>You’re the most amazing person in my life. I’m so grateful for you. 🥰</p>
        <p>May your day be filled with love, laughter, and happiness. 💕</p>
        <p>I love you! 🌟</p>
    </div>

    <!-- Confetti -->
    <script>
        function createConfetti() {
            for (let i = 0; i < 100; i++) {
                const confetti = document.createElement('div');
                confetti.className = 'confetti';
                confetti.style.left = Math.random() * 100 + 'vw';
                confetti.style.animationDuration = (Math.random() * 3 + 2) + 's';
                document.body.appendChild(confetti);
            }
        }
        function playMusic() {
            const music = document.getElementById('birthdayMusic');
            music.play();
            createConfetti();
        }
    </script>
</body>
</html>
''';
