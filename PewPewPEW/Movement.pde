class Player {
  int xPos;
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
 
 color g = get(xPos + 15, yPos + 32);
 println(g);
 if (color(c) == color(g)){
yPos--;
 }else{
   yPos++;
 }
 
 
  }
  
  void display(){
    fill(#FF0000);
     rect(xPos, yPos, 30, 30);

 text(str(state),xPos, yPos);
    
  }
}
