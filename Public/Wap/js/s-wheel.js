function playAuto(){iNow++,startMove(imgList,-iNow*wheelImgs[0].offsetWidth),tab()}function tab(){for(var t=0;t<indicators.length;t++)indicators[t].className="";iNow>0?indicators[iNow%indicators.length].className="on":indicators[(iNow%indicators.length+indicators.length)%indicators.length].className="on"}function startMove(t,e){clearInterval(t.timer),t.timer=setInterval(function(){var i=(e-translateX)/3;i=i>0?Math.ceil(i):Math.floor(i),translateX+=i,t.style.WebkitTransform=0>translateX?"translateX("+translateX%imgListW+"px)":"translateX("+(translateX%imgListW-imgListW)%imgListW+"px)"},30)}var imgList=document.getElementById("wheel"),wheelImgs=imgList.children,indicatorList=document.getElementById("indicator"),indicators=indicatorList.children,iNow=0,isMove=!1;if(wheelImgs.length<=1)imgList.style.width="100%";else{imgList.innerHTML+=imgList.innerHTML,imgList.style.width=100*wheelImgs.length+"%";var imgListW=imgList.offsetWidth/2,translateX=0,playTimer=setInterval(playAuto,4e3);imgList.addEventListener("touchstart",function(t){function e(t){t.preventDefault(),translateX=t.targetTouches[0].pageX-a,imgList.style.WebkitTransform=0>translateX?"translateX("+translateX%imgListW+"px)":"translateX("+(translateX%imgListW-imgListW)%imgListW+"px)",isMove=!0}function i(t){t.preventDefault(),playTimer=setInterval(playAuto,2e3),imgList.removeEventListener("touchmove",e,!1),imgList.removeEventListener("touchend",i,!1),Math.abs(t.changedTouches[0].pageX-s)>10?s>t.changedTouches[0].pageX?(iNow++,startMove(imgList,-iNow*wheelImgs[0].offsetWidth),tab()):(iNow--,startMove(imgList,-iNow*wheelImgs[0].offsetWidth),tab()):startMove(imgList,-iNow*wheelImgs[0].offsetWidth)}t.preventDefault(),clearInterval(imgList.timer),clearInterval(playTimer);var a=t.targetTouches[0].pageX-translateX,s=t.targetTouches[0].pageX;isMove&&(isMove=!1),imgList.addEventListener("touchmove",e,!1),imgList.addEventListener("touchend",i,!1)},!1)}imgList.addEventListener("touchend",function(t){if(!isMove){t.preventDefault();var e=t.target;if("IMG"==e.nodeName){var i=new dd.dialog.Fn('<div class="loading-car"><div class="bg"></div><div class="loading-car-icon"></div></div>');i.show();var a=e.parentNode.getAttribute("href");location.href=a}}});