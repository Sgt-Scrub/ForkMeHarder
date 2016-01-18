class Bullet {
  PVector position, direction;

  Bullet(int mx, int my) {
    position = new PVector(plyr.xPos+15, plyr.yPos+15);
    direction = new PVector((mx + (plyr.xPos - width/3))-(plyr.xPos+15), my-(plyr.yPos+15));
    direction.div(10); //slow down a little
  }
  
  
  
  Bullet(int j) {
         
      position = new PVector((Enmy[j].xPosE) +33, (Enmy[j].yPosE )+15);
      direction = new PVector(plyr.xPos - (Enmy[j].xPosE+33), plyr.yPos-(Enmy[j].yPosE - 15));
      direction.div(30); //slow down a little
        
    }

  void display() {
    fill(0);
    /*    if(mouseX > width/2-130){
    ellipse(position.x+56, position.y+20, 5, 5);
        }
    if(mouseX < width/2-130){
         ellipse(position.x-6, position.y+20, 5, 5);
  }
 */
 ellipse(position.x, position.y, 5, 5);
  }

  void update() {
    position.add(direction);
  }
}
