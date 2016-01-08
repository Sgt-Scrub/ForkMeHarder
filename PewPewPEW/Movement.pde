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
boolean Duck;
int Size = 60;
int Tsize;
int Speed;
  
  
  
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
    xPos = xPos - Speed;
  }
  if (right == true) {
    xPos = xPos + Speed;
  }
  
  if(Duck == true){
   Tsize = Size/2;
   Speed = 2;
  }else{
    Tsize = Size;
    Speed =  4;
  }
  
  if (Jump == true){
  yVel = -20;
  Jump = false;
  
  }

  
  
 yVel = yVel + 1;
  if (yVel > 20){
   yVel = 20;
 }

 yPos = yPos + yVel;

 


 
 
 
  }
  
  void display(){

   
    fill(#9D17CE);
     rect(xPos, yPos, 30, Tsize);

 text(str(state),xPos, yPos);
    
  }
}
