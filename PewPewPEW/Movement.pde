class Player {
  int xPos = width/2;
int yPos;
int yVel;
int xpos2= 10;
int xvel=2;
int jump = 4;
int state = 0;
boolean left, right;
int PJump;
boolean Jump;
boolean JumpCheck;
  
  
  
  Player(){
    
    
    
  }
  
  void update(){
  
     for (int i = 0; i < Plat.length; i++) {
    if (Plat[i].PlatCheck == true) {
     plyr.JumpCheck = true;
     break;
    }else{
       plyr.JumpCheck = false;
    }
    }
    
  if (left == true) {
    xPos = xPos - 4;
  }
  if (right == true) {
    xPos = xPos + 4;
  }
  
  if (Jump == true){
  yVel = -20;
  Jump = false;
  
  }
  if (xPos>width){
    xPos=0;
  }
  if (xPos<-5){
    xPos=width;
  }
  
  
 yVel = yVel + 1;
  if (yVel > 20){
   yVel = 20;
 }

 yPos = yPos + yVel;

 


 
 
 
  }
  
  void display(){

   
    fill(#FF0000);
     rect(xPos, yPos, 30, 30);

 text(str(state),xPos, yPos);
    
  }
}