var add = document.querySelectorAll(".add");
var reduce = document.querySelectorAll(".reduce");
var num = document.querySelectorAll(".num");

for(var i=0;i<num.length;i++){
    (function(i){
        add[i].onclick = function(){
            num[i].value = eval(parseInt(num[i].value) + 1);
        }
    }(i))
}
for(var i=0;i<num.length;i++){
    (function(i){
        reduce[i].onclick = function(){
            if(num[i].value != "0"){
                num[i].value -= 1;
            }
        }
    }(i))
}








