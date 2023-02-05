const iframe=document.querySelector("#imgswap");
let iframes=["creatine 1.png","creatine 2.jpg","creatine 3.jpeg"],i=0;
function swapimages()
{
i<iframes.length-1?i+=1:i=0;
iframe.src=iframes[i];
}
setInterval(swapimages,5000);