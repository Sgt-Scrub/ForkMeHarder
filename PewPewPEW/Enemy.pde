class Enemy{
  int xVelE = 2;
  int pstart;
  int pend;
  int xPosE;
  int yPosE;
  boolean triggered;
  int HP = 5;
  
  Enemy(int ps,int pe, int h){
 
    pstart = ps;
    pend = pe;
    yPosE = h - 60;
    xPosE = pstart;
 
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
  triggered = true;
 }
 
  if ((plyr.xPos < xPosE) && (xPosE < pend)){
  xPosE++;
  triggered = true;
 }
 
  } else {

      xPosE= xPosE + xVelE;
      triggered = false;

      if ( xPosE > pend) {
        xVelE = -xVelE;
      }
      if ( xPosE < pstart) {
        xVelE = -xVelE;
      }
    }
  }
}

      
    
