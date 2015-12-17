class Enemy{
  int xPosE = 10;
  int yPosE = 570;
  int xVelE =2;
  
  Enemy(){
  }
  
  void display(){
    fill(2,16,255);
    rect(xPosE,yPosE,30,30);
  }
  void move(){
    xPosE= xPosE + xVelE;
    
    if( xPosE > 629){
      xVelE = -xVelE;
    }
     if( xPosE < 0){
      xVelE = -xVelE;
    }
  }
}
      
    