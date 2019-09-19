int z,b;
void intro(){
  background (200,200,255);
  fill(800,140,100);
  textSize(40);
  text("welcome to the colour game",10,200);
  
  x(150,500,z);
  check(580,550,b);
  p=0;
  
  t=400;
  if (dist(mouseX,mouseY,220,550)<75){
    z=5;
  }else{
    z=1;
  }
    if (dist(mouseX,mouseY,650,600)<75){
    b=5;
  }else{
    b=1;
  }
  
}
