var choose = document.querySelectorAll(".choose");
var show = document.querySelector(".show");
for(var i=0;i<choose.length;i++){
    (function(i){
        choose[i].onclick = function(){
            for(var j=0;j<choose.length;j++){
                if(j == i){
                    choose[j].style.color = "white";
                    choose[j].style.backgroundColor = "#f40";
                    if(i == 0){
                        show.src = "aboutUs2.jsp";
                    }
                    if(i == 1){
                        show.src = "aboutUs3.jsp";
                    }
                }else{
                    choose[j].style.color = "#f40";
                    choose[j].style.backgroundColor = "white";
                }
            }
        }
    }(i))
}