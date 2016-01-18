class Enemy{
  int xVelE = 1;
  int pstart;
  int pend;
  int xPosE;
  int yPosE;
  boolean triggered;
  int HP = 5;
  int Turn=0;
  int walk=0;
  boolean shoot = false;
  int shottime = 60;
   int type = 0;
   Enemy(int ps,int pe, int h){
 
    pstart = ps;
    pend = pe;
    yPosE = h - 91;
    xPosE = pstart;
 
  }
  
  void display(){
   if (type == 0){
    if((Turn==0)&&(walk<20)&&(triggered==false)){
   image(Grunt,xPosE,yPosE,66,91);
    }
      if((Turn==0)&&(walk>19)&&(walk<40)&&(triggered==false)){
   image(GruntW,xPosE,yPosE,66,91);
    }
      if((Turn==0)&&(walk>39)&&(walk<60)&&(triggered==false)){
   image(GruntW2,xPosE,yPosE,66,91);
    }
      if((Turn==0)&&(walk>59)&&(walk<80)&&(triggered==false)){
   image(GruntW,xPosE,yPosE,66,91);
    }
     if((Turn==1)&&(walk<20)&&(triggered==false)){
   image(GruntR,xPosE,yPosE,66,91);
    }
      if((Turn==1)&&(walk>19)&&(walk<40)&&(triggered==false)){
   image(GruntWR,xPosE,yPosE,66,91);
    }
      if((Turn==1)&&(walk>39)&&(walk<60)&&(triggered==false)){
   image(GruntW2R,xPosE,yPosE,66,91);
    }
      if((Turn==1)&&(walk>59)&&(walk<80)&&(triggered==false)){
   image(GruntWR,xPosE,yPosE,66,91);
    }
   if((Turn==1)&&(triggered==true)){
     image(GruntR,xPosE,yPosE,66,91);
  }
    if((Turn==0)&&(triggered==true)){
     image(Grunt,xPosE,yPosE,66,91);
  }
  }
  if (type == 1) {
      image(GruntC, xPosE, yPosE, 66, 91);
    }
  }
  

     void move() {

        if (pstart == pend) {
      type = 1;
    }

       
         if (shoot == false){
        
        shottime--;
       if (shottime < 1){
        shoot = true;
        shottime = 60;
       } 
         
       }
      
      
      
      
     if (type == 0){ 
       walk=walk+1;
   if(walk>79){
     walk=0;
   }
       if ((plyr.xPos > pstart) && (plyr.xPos < pend) && (plyr.yPos <= yPosE + 60) && (plyr.yPos > yPosE - 200)) {
     // rect(xPosE - 15, yPosE - 10, 60, 5);
     triggered = true;
 if ((plyr.xPos > xPosE) && (xPosE > pstart)){
 
  Turn=0;
  
 }
 
  if ((plyr.xPos < xPosE) && (xPosE < pend)){

  Turn=1;
 }
 
  } else {

      xPosE= xPosE + xVelE;
      triggered = false;
     

      if ( xPosE > pend) {
        xVelE = -xVelE;
        Turn=1;
       
      }
      if ( xPosE < pstart) {
        xVelE = -xVelE;
        Turn=0;
      }
    }
  }

 if (type == 1) {
  
  triggered = true;

  }

}

}
      
    
