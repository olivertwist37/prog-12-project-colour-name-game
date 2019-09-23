void x(int x,int y,int t){
  stroke(255);
  strokeWeight(t);
  line(x,y,x+120,y+120);
  line(x+120,y,x,y+120);
  
  noStroke();
  
}
