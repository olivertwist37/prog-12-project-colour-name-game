boolean here=true;
boolean truth, guess;
int t=1000;
int p=0;
void game() {
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
}


void mouseClicked() {
  if (choice==x) {
    truth=true;
  } else {
    truth=false;
  }
  if (mode == game&& mouseX >400 ) {
    guess=true;
  }
    if (mode == game&& mouseX <400 ){
    guess=false;
  }
  if (truth==guess) {
    choice = int(random(0, 6));
     x = int(random(0, 6));
    t=200;
    p++;
  } else {
    mode=gameOver;
  }
 
}
