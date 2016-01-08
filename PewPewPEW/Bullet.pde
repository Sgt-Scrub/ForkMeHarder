class Bullet {
  PVector position, direction;

  Bullet(int mx, int my) {
    position = new PVector(plyr.xPos+15, plyr.yPos+15);
    direction = new PVector((mx + (plyr.xPos - width/3))-(plyr.xPos+15), my-(plyr.yPos+15));
    direction.div(10); //slow down a little
  }

  void display() {
    fill(0);
    ellipse(position.x, position.y, 5, 5);
  }

  void update() {
    position.add(direction);
  }
}
