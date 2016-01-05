class Enemy{
  int xPosE = 10;
  int yPosE = 540;
  int xVelE = 2;
  int pstart = 0;
  int pend = 629;
  
  Enemy(){
  }
  
  void display(){
    fill(#AD1111);
    rect(xPosE,yPosE,30,60);
  }

     void move() {
   
       if ((plyr.xPos > pstart) && (plyr.xPos < pend) && (plyr.yPos <= yPosE + 60) && (plyr.yPos > yPosE - 200)) {
      rect(xPosE - 15, yPosE - 10, 60, 5);
   
 if ((plyr.xPos > xPosE) && (xPosE > pstart)){
  xPosE--;
 }
 
  if ((plyr.xPos < xPosE) && (xPosE < pend)){
  xPosE++;
 }
 
  } else {

      xPosE= xPosE + xVelE;

      if ( xPosE > pend) {
        xVelE = -xVelE;
      }
      if ( xPosE < pstart) {
        xVelE = -xVelE;
      }
    }
  }
}

      
    
