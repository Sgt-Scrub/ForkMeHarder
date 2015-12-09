Player plyr;
void setup(){
  size(1200, 800);
plyr = new Player();
}
void draw(){
 background(255);
  
 plyr.update();
 plyr.display();
   
  
  
  
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

