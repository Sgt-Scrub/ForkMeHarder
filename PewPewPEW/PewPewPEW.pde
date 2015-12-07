int xPos;
int yPos;
int jump = 4;
int state = 0;
boolean left, right;
int PJump;
boolean Jump;
void setup(){
  size(1200, 800);
}

void draw(){
 background(255);
  fill(#FF0000);
  rect(xPos, yPos, 30, 30);

 text(str(state),xPos, yPos);
  if (left == true) {
    xPos = xPos - 4;
  }
  if (right == true) {
    xPos = xPos + 4;
  }
   
  
}

void keyPressed(){
  if (key == 'a') {
   state = 1;
   left = true;
  }
  
  if (key == 'd') {
   state = 2;
   right = true;
  }
  
   if (key == 'w') {
   state = 3;
   Jump = true;
  }
  
 
}
void keyReleased(){
  if (key == 'a'){
    state = 0;
    left = false;
  }
  if (key == 'd'){
    state = 0;
    right = false;
  }
}
