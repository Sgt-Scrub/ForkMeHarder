class Player {
  int xPos;
int yPos;
int jump = 4;
int state = 0;
boolean left, right;
int PJump;
boolean Jump;
color c = color(0, 255, 200);
  
  
  
  Player(){
    
    
    
  }
  
  void update(){
  
  if (left == true) {
    xPos = xPos - 4;
  }
  if (right == true) {
    xPos = xPos + 4;
  }
  }
  
  void display(){
    fill(#FF0000);
     rect(xPos, yPos, 30, 30);

 text(str(state),xPos, yPos);
    
  }
}
