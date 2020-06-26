var choose = document.querySelectorAll(".choose");
var Frame = document.querySelector(".loginFrame");

choose[0].onclick = function(){
    window.location.replace("login.jsp");
}
choose[1].onclick = function(){
    window.location.replace("register.jsp");
}
choose[2].onclick = function(){
    window.location.replace("contralLogin.jsp");
}
choose[3].onclick = function(){
    window.location.replace("aboutUs.jsp");
}

