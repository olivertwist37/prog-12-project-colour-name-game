boolean here=true;
boolean truth, guess;
int t=400;
int p=0;
int c=260;

void game() {
  if(mouseX>400){
    b=5;
  }else{
   b=1; 
  }
  if(mouseX<400){
    z=5;
  }else{
   z=1; 
  }
  
  t=t-2;
   if (t<=0) {
    mode=gameOver;
  }
  background(200, 255, 200);
  if (here==false) {
    mode = gameOver;
  }
  
  fill(0);
  rect(0, 0, 400, 1000);
  fill(255);
  rect(400, 0, 400, 1000);

  textSize(100);
  fill(colors[choice]);
  text(""+words[x], 250, 400);
  
  fill(200,50,50);
  rect(800,700,t*-4,100);
  textSize(50);
  text("points"+p,50,50);
  x(150,300,z);
  check(580,350,b);
 
 
   strokeWeight(0);
  fill(127.5);
 rect(k,700,5,100);
  rect(k,700,800,5);
  
  fill(0,c);
  rect(0,0,800,800);
  if(c>0){c=c-2;}
 
}


//void mouseClicked() {
//  if (choice==x) {
//    truth=true;
//  } else {
//    truth=false;
//  }
//  if (mode == game&& mouseX >400 ) {
//    guess=true;
//  }
//    if (mode == game&& mouseX <400 ){
//    guess=false;
//  }
//  if (truth==guess) {
//    choice = int(random(0, 6));
//     x = int(random(0, 6));
//    t=200;
//    p++;
//  } else {
//    mode=gameOver;
//  }
 
//}
