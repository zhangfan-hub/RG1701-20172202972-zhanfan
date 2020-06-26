var out = document.querySelector(".out");
var myInfo = document.querySelector(".myInfo");
var showFrame = document.querySelector(".showFrame");
var choose = document.querySelectorAll(".choose");
out.onclick = function(){
    window.location.replace("menu.jsp");
}

myInfo.onclick = function(){
    showFrame.src = "contralInfo.jsp";
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
                        showFrame.src = "order.jsp";
                    }
                    if(i == 1){
                        showFrame.src = "chooseAlterFood.jsp";
                    }
                    if(i == 2){
                        showFrame.src = "Manager_Cust_Cost.action";
                    }
                    if(i == 3){
                        showFrame.src = "Manager_Menu_Sort.action";
                    }
                }else{
                    choose[j].style.color = "white";
                    choose[j].style.backgroundColor = "black";
                }
            }
        }
    }(i))
}

