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
int Size = 90;
int Tsize;
int Speed;
 int HP = 10;
  int walk=0;
  int thing=0;
  
  
  Player(){
    
    
    
  }
  
  void update(){
  if (walk>80){
    walk=0;
  }
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
    walk=walk+1;
  }
  if (right == true) {
    xPos = xPos + Speed;
    walk=walk+1;
  }
  
  if(Duck == true){
   Tsize = 72;
   Speed = 2;
 
   
  }else{
    Tsize = Size;
    Speed =  4;
  }
  
  if (Jump == true){
  yVel = -20;
  Jump = false;
  Duck= false;
  
  }

  
 yVel = yVel + 1;
  if (yVel > 20){
   yVel = 20;
 }

 yPos = yPos + yVel;

 


 
 
 
  }
  
  void display(){
if((mouseX < width/2-130) && (Duck ==false)&&(left==true)&&(right==false)&&(walk<20)&&(thing==0)){
  image(PurpR,xPos,yPos,70,91);
}
if((mouseX < width/2-130) && (Duck ==false)&&(left==true)&&(right==false)&&(walk>19)&&(walk<40)&&(thing==0)){
  image(PurpWR,xPos,yPos,70,91);
}
if((mouseX < width/2-130) && (Duck ==false)&&(left==true)&&(right==false)&&(walk>59)&&(walk<80)&&(thing==0)){
  image(PurpWR,xPos,yPos,70,91);
}
if((mouseX < width/2-130) && (Duck ==false)&&(left==true)&&(right==false)&&(walk>39)&&(walk<60)&&(thing==0)){
  image(PurpW2R,xPos,yPos,70,91);
}
//going left looking left
if((mouseX > width/2-130) && (Duck ==false)&&(right==true)&&(left==false)&&(walk<20)&&(thing==0)){
  image(Purp,xPos,yPos,70,91);
}
if((mouseX > width/2-130) && (Duck ==false)&&(right==true)&&(left==false)&&(walk>19)&&(walk<40)&&(thing==0)){
  image(PurpW,xPos,yPos,70,91);
}
if((mouseX > width/2-130) && (Duck ==false)&&(right==true)&&(left==false)&&(walk>59)&&(walk<80)&&(thing==0)){
  image(PurpW,xPos,yPos,70,91);
}
if((mouseX > width/2-130) && (Duck ==false)&&(right==true)&&(left==false)&&(walk>39)&&(walk<60)&&(thing==0)){
  image(PurpW2,xPos,yPos,70,91);
}
//going right looking right
if((mouseX < width/2-130) && (Duck ==false)&&(right==true)&&(left==false)&&(walk<20)&&(thing==0)){
  image(PurpR,xPos,yPos,70,91);
}
if((mouseX < width/2-130) && (Duck ==false)&&(right==true)&&(left==false)&&(walk>19)&&(walk<40)&&(thing==0)){
  image(PurpWR,xPos,yPos,70,91);
}
if((mouseX < width/2-130) && (Duck ==false)&&(right==true)&&(left==false)&&(walk>59)&&(walk<80)&&(thing==0)){
  image(PurpWR,xPos,yPos,70,91);
}
if((mouseX < width/2-130) && (Duck ==false)&&(right==true)&&(left==false)&&(walk>39)&&(walk<60)&&(thing==0)){
  image(PurpW2R,xPos,yPos,70,91);
}
   //going right looking left
   if((mouseX > width/2-130) && (Duck ==false)&&(right==false)&&(left==true)&&(walk<20)&&(thing==0)){
  image(Purp,xPos,yPos,70,91);
}
if((mouseX > width/2-130) && (Duck ==false)&&(right==false)&&(left==true)&&(walk>19)&&(walk<40)&&(thing==0)){
  image(PurpW,xPos,yPos,70,91);
}
if((mouseX > width/2-130) && (Duck ==false)&&(right==false)&&(left==true)&&(walk>59)&&(walk<80)&&(thing==0)){
  image(PurpW,xPos,yPos,70,91);
}
if((mouseX > width/2-130) && (Duck ==false)&&(right==false)&&(left==true)&&(walk>39)&&(walk<60)&&(thing==0)){
  image(PurpW2,xPos,yPos,70,91);
}
//going left looking right
if((mouseX > width/2-130) && (Duck ==false)&&(right==false)&&(left==false)&&(thing==0)){
  image(Purp,xPos,yPos,70,91);
}
if((mouseX < width/2-130) && (Duck ==false)&&(right==false)&&(left==false)&&(thing==0)){
  image(PurpR,xPos,yPos,70,91);
}
if((yVel<0)&&(right==false)&&(left==false)){
  thing=1;
    image(PurpC,xPos,yPos,70,68);
}
if((yVel<0)&&(right==true)&&(left==false)&&(mouseX>width/2-130)){
  thing=1;
    image(PurpC,xPos,yPos,70,68);
}
if((yVel<0)&&(left==true)&&(right==false)&&(mouseX<width/2-130)){
  thing=1;
    image(PurpCR,xPos,yPos,70,68);
}
if((yVel<0)&&(right==true)&&(left==false)&&(mouseX<width/2-130)){
  thing=1;
    image(PurpCR,xPos,yPos,70,68);
}
if((yVel<0)&&(right==false)&&(left==true)&&(mouseX>width/2-130)){
  thing=1;
    image(PurpC,xPos,yPos,70,68);
}
if(yVel>=0){
  thing=0;
}
  if ((left == true) && (right == true)){
    
   image(Purp, xPos, yPos, 70, 91); 
    
    
  }
    if ((Duck==true) &&(mouseX < width/2-130)){
      image(PurpCR,xPos,yPos,68,76);
  } 
    if ((Duck==true) &&(mouseX > width/2-130)){
      image(PurpC,xPos,yPos,68,76);
  }
}
}
