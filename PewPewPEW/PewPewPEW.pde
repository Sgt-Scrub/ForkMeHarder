Player plyr;
color c = color(0, 255, 200);
void setup(){
  size(1200, 800);
plyr = new Player();
}
void draw(){
 background(#f1f1f1);
  
 plyr.update();
 plyr.display();
  noStroke();
   fill(c);
  rect(height/2, width/2 , 200, 100);
  stroke(1);
  fill(get(plyr.xPos + 15, plyr.yPos + 32));
  rect(0, 0, 30, 30);
  
}

void keyPressed(){
  if (key == 'a') {
   plyr.state = 1;
   plyr.left = true;
  }
  
  if (key == 'd') {
   plyr.state = 2;
   plyr.right = true;
  }
  
   if (key == 'w') {
   plyr.state = 3;
   plyr.Jump = true;
  }
  
 
}
void keyReleased(){
  if (key == 'a'){
   plyr.state = 0;
    plyr.left = false;
  }
  if (key == 'd'){
   plyr.state = 0;
    plyr.right = false;
  }
}

