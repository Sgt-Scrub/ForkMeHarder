class Sand {
  float xPos, yPos, xVel, yVel;
  float size;
  float bsize;
  color col; 
  float Sp;
  boolean  yes;



  Sand (float Sp_) {
    xVel = .75;
    yVel = 5;
    bsize = 10;
    col = #FFFFFF;
    Sp = Sp_;

    if (Sp >= mySand.length/2) {
      xPos = random(width);
      yPos = random(530);
    }
  }




  void update() {
    yPos = yPos + yVel;
    size = bsize + (yPos - (height/2 + height/5))/45;

    if (yPos > height + height/5) {
      yPos = 530;
      yes = true;

      if (Sp >= mySand.length/2) {
        xPos = random(width);
      }
    }
  }
  void display() {
    if (yPos > 503) {
      noStroke();
      fill(#D38C1A);
      rect(xPos, yPos, 3, 3);
    }
  }
}