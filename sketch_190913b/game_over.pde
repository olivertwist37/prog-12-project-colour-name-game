
void gameOver(){
  k=800;
  background (255,200,200);
  textSize(40);
  println("go");
  if (t>0){
     println("fail");
     fill(0);
  text("you lost due to missclick with:"+p+" points",10,400);
  }else{
    fill(0);
      text("you lost due slowness with:"+p+" points",10,400);
       println("time");
  }
  if (a<p){
  a=p;
  }
  fill(0);
  text("previous record:"+a,10,450);
   println("record");
}
