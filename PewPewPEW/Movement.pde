class Player {
  int xPos = width/2;
int yPos;

int jump = 4;
int state = 0;
boolean left, right;
int PJump;
boolean Jump;

  
  
  
  Player(){
    
    
    
  }
  
  void update(){
  
  if (left == true) {
    xPos = xPos - 4;
  }
  if (right == true) {
    xPos = xPos + 4;
  }
 
 yPos = yPos + 2;

 


 
 
 
  }
  
  void display(){
    fill(#FF0000);
     rect(xPos, yPos, 30, 30);

 text(str(state),xPos, yPos);
    
  }
}
