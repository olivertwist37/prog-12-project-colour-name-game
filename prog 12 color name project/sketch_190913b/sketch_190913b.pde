int mode,a,coin;
//declaring constants
final int intro = 0;
final int game = 1;
final int gameOver = 2;

//colour palet
color red     =#FF0000;
color orange  =#FF6600;
color yellow  =#FFCC00;
color green   =#00CC00;
color blue    =#2200CC;
color violet  =#A30EF7;

//array list
//ArrayList<String> words = new ArrayList<String>();
color[] colors={red,orange,yellow,green,blue,violet};//actual colors
String[]words={"  red" ,"orange","yellow"," green"," blue","violet"};//instead of words add this " new String[6];



//adding words
//words.add("red");
//words.add("orange");
//words.add("yellow");
//words.add("green");
//words.add("blue");
//words.add("violet");

int choice = int(random(0,6));
int x = int(random(0,6));

void setup() {

  size (800, 800);

  mode=intro;
}

void draw() {
  //mode framework
  if (mode == intro) {
    intro();
  } else if (mode==game) {
    game();
  } else if (mode==gameOver) {
    gameOver();
  } else {
    println("mode error"+mode);
  }
  
  println("p"+p);
  println("a"+a);
}

void mousePressed() {
  if (mode == intro) {
    mode = game;
  } else if (mode==game) {
    
     //game tab-=-=-=-=-=-=-=-=-=
   // mode = gameOver;
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
    coin = int(random(0,2));
    
    
    t=200-p;
    p++;
  } else {
    mode=gameOver;
  }
  if (coin==0){
 choice = int(random(0,6));
x=choice;
    

  }
  if (coin==1){
 choice = int(random(0,6));
 x = int(random(0,6));
    
    
  }
  while (coin==1&&choice==x){
 choice = int(random(0,6));
 x = int(random(0,6));
    
    
  }
  
  
  
  
  
  
 //game tab-=-=-=-=-=-=-=-=-=
   
   
  } else if (mode==gameOver) {
    mode = intro;
  } else {
    println("mode error"+mode);
  }
}
