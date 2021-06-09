function checkExist()
{
    var xmlhttp = new XMLHttpRequest();
    var username = document.forms["regF"]["username"].value;
    var url = "checkexist.jsp?username=" + username;
    xmlhttp.onreadystatechange = function ()
    {
        document.getElementById("isE").style.color = "red";
        document.getElementById("isE").innerHTML = xmlhttp.responseText;
    };
    try
    {
        xmlhttp.open("GET", url, true);
        xmlhttp.send();
    } catch (e)
    {
        alert("unable to connect to server");
    }
}
function g1s(score)
{

    $.ajax({
        url: "save.jsp",
        type: "POST",
        data: {'score': score},
        success: function ()
        {
            alert("Score updated! New scores will be updated at next login.");
        }
    });
}

function tryagain()
{
    alert("Try again next time to beat your own high score :)");
}
function validate()
{
    if (regF.password.value === regF.confirm_Password.value)
    {
        if (document.getElementById("isE").innerText === "User already exists")
        {
            alert("User Already exixts! Try another username!");
            return false;
        } else
            return true;
    } else
    {
        alert("Password and Confirm Password must be same!");
        return false;
    }
}