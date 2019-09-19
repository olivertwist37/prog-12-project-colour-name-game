
void gameOver(){
  background (255,200,200);
  textSize(40);
  if (t>0){
  text("you lost due to missclick with:"+p+" points",10,400);
  }else{
      text("you lost due slowness with:"+p+" points",10,400);
      
  }
  a=p;
  text("previous record:"+a,10,450);
  
}
