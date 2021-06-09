<%-- 
    Document   : g1
    Created on : Sep 25, 2019, 2:20:26 AM
    Author     : Sankalp
--%>
<!DOCTYPE html>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="login.jsp" %>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Game:1</title>
        <link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="vendor/style.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="vendor/customjs.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.min.js"></script>    
    </head>
    <body id="grad1">
        <%@include file="navbar.jsp"%> 
    <center><hr size="2" width="80%" noshade style="color:#000000"></center>
    <a class="nav-link js-scroll-trigger" style="color: whitesmoke; font-family: cursive; margin-left: 30%;">
        <%  String highscore;
            if (session.getAttribute("hs") != null) {
                highscore = (String) session.getAttribute("hs");
                out.println("High score is: " + highscore);
            } else {
                out.println("Login to save your high score ;)");
            }
            session.setAttribute("pag", "score");
        %>
    </a>
    <div class="wrapper">
        <hr>
        <p style="font-family: cursive">Type as many words as you can until time runs out!</p>
        <hr>
        <button class="btn btn-secondary btn-lg" style="" onclick="countdown(); random();">START</button>
        <hr>
        <div class="outerWrap">
            <div class="scoreWrap">
                <p>Score</p>
                <span class="score">0</span>
            </div>
            <div class="timeWrap">
                <p>Time left</p>
                <span class="time">60</span>
            </div>
        </div>
        <div class="wordsWrap">
            <p class="words"></p>
        </div>
    </div>                   
    <script>
        var temp = document.querySelector('.time');
        var button = document.querySelector("button");
        var words = document.querySelector(".words");
        var timerDiv = document.querySelector(".time");
        var scoreDiv = document.querySelector(".score");
        var points = 0;
        var spans;
        var typed;
        var seconds = 60;
        var temp1;

        function countdown() {
            points = 0;
            var timer = setInterval(function () {
                button.disabled = true;
                seconds--;
                temp.innerHTML = seconds;
                if (seconds === 0) {
                    alert("Game over! Your score is " + points);
                    scoreDiv.innerHTML = "0";
                    words.innerHTML = "";
                    button.disabled = false;
                    clearInterval(timer);
                    seconds = 60;
                    timerDiv.innerHTML = "60";
                    button.disabled = false;
                    temp1 = '<%= session.getAttribute("hs")%>';
                    if (points > temp1)
                    {
                        g1s(points);
                    } else if (session.getAttribute("nm") !== null)
                    {
                        tryagain();
                    }
                }
            }, 1000);
        }

        function random() {
            words.innerHTML = "";
            var random = Math.floor(Math.random() * (26));
            var wordArray = list[random].split("");
            for (var i = 0; i < wordArray.length; i++) { //building the words with spans around the letters
                var span = document.createElement("span");
                span.classList.add("span");
                span.innerHTML = wordArray[i];
                words.appendChild(span);
            }
            spans = document.querySelectorAll(".span");
        }


        const list = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'];

        button.addEventListener("click", function (e) {
            countdown();
            random();
            button.disabled = true;
        });


        function typing(e) {
            typed = String.fromCharCode(e.which);
            for (var i = 0; i < spans.length; i++) {
                if (spans[i].innerHTML === typed) { // if typed letter is the one from the word
                    if (spans[i].classList.contains("bg")) { // if it already has class with the bacground color then check the next one
                        continue;
                    } else if (spans[i].classList.contains("bg") === false && spans[i - 1] === undefined || spans[i - 1].classList.contains("bg") !== false) { // if it dont have class, if it is not first letter or if the letter before it dont have class (this is done to avoid marking the letters who are not in order for being checked, for example if you have two "A"s so to avoid marking both of them if the first one is at the index 0 and second at index 5 for example)
                        spans[i].classList.add("bg");
                        break;
                    }
                }
            }
            var checker = 0;
            for (var j = 0; j < spans.length; j++) { //checking if all the letters are typed
                if (spans[j].className === "span bg") {
                    checker++;
                }
                if (checker === spans.length) { // if so, animate the words with animate.css class
                    words.classList.add("animated");
                    words.classList.add("fadeOut");
                    points++; // increment the points
                    scoreDiv.innerHTML = points; //add points to the points div
                    document.removeEventListener("keydown", typing, false);
                    setTimeout(function () {
                        words.className = "words"; // restart the classes
                        random(); // give another word
                        document.addEventListener("keydown", typing, false);
                    }, 400);
                }

            }
        }
        document.addEventListener("keydown", typing, false);
    </script>
</body>
</html>