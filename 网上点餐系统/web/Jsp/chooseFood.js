var out = document.querySelector(".out");
var myFood = document.querySelector(".myFood");
var showFrame = document.querySelector(".showFrame");
var myInfo = document.querySelector(".myInfo");
var choose = document.querySelectorAll(".choose");

out.onclick = function(){
    window.location.replace("table.jsp");
}

myFood.onclick = function(){
    showFrame.src = "myFood.jsp";
    for(var i=0;i<choose.length;i++){
        choose[i].style.backgroundColor = "black";
        choose[i].style.color = "white";
    }
}

myInfo.onclick = function(){
    showFrame.src = "userInfo.jsp";
    for(var i=0;i<choose.length;i++){
        choose[i].style.backgroundColor = "black";
        choose[i].style.color = "white";
    }
}
for(var i=0;i<choose.length;i++){
    (function(i){
        choose[i].onclick = function(){
            for(var j=0;j<choose.length;j++){
                if(j == i){
                    choose[j].style.color = "black";
                    choose[j].style.backgroundColor = "white";
                    if(i == 0){
                        showFrame.src = "chuanFood.jsp";
                    }
                    if(i == 1){
                        showFrame.src = "seaFood.jsp";
                    }
                    if(i == 2){
                        showFrame.src = "sweetfood.jsp";
                    }
                    if(i == 3){
                        showFrame.src = "beverage.jsp";
                    }
                    if(i == 4){
                        showFrame.src = "stableFood.jsp";
                    }
                }else{
                    choose[j].style.color = "white";
                    choose[j].style.backgroundColor = "black";
                }
            }
        }
    }(i))
}

