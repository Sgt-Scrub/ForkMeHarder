Player plyr;
Platform[] Plat = new Platform[3];
Enemy Enmy;
ArrayList<Bullet> myBullets = new ArrayList<Bullet>();
int mag;
int magTime;

color c = color(0, 255, 200);
void setup() {

  size(1200, 800);
  plyr = new Player();
  Enmy = new Enemy();
  for (int i = 0; i < Plat.length; i++) {
   
    int x_ = 0;
    int y_ = 0; 
    int w_ = 0;
    int h_ = 0;
   
    if ( i == 0) {
      x_ = 0;
      y_ = height - 5; 
      w_ = width;
      h_ = 5;
    }
    
     if ( i == 1) {
      x_ = 0;
      y_ = height - 200; 
      w_ = width/2 + 50;
      h_ = 5;
     }
     
       if ( i == 2) {
      x_ = width/2;
      y_ = height - 400; 
      w_ = width/2 + 50;
      h_ = 5;
      
    }

    Plat[i] = new Platform(x_, y_, w_, h_);
  }
}
void draw() {
  background(#f1f1f1);
println(mouseX,mouseY);
  plyr.update();
  for (int i = 0; i < Plat.length; i++) {
    Plat[i].display();
    Plat[i].check();
  }
  plyr.display();
  Enmy.display();
  Enmy.move();
  
  
for (int i = 0; i < myBullets.size(); i++) {
    Bullet temp = myBullets.get(i);
    temp.update();
    temp.display();

    if ((temp.position.x < 0) || (temp.position.x > width) || (temp.position.y < 0) || (temp.position.y > height)) {
      myBullets.remove(i);
    }
  }
  if (mag >= 6) {
    if (magTime > 60) {
      mag = 0;
      magTime = 0;
    } else if (magTime <= 60) {
      magTime++;
    }
  }
  println(magTime);
}


void mousePressed() {
  if (mag < 6) {
    myBullets.add(new Bullet(mouseX, mouseY));
    mag++;
  }
}

void keyPressed() {
  if (key == 'a') {
    plyr.state = 1;
    plyr.left = true;
  }

  if (key == 'd') {
    plyr.state = 2;
    plyr.right = true;
  }

  if ((key == 'w') && (plyr.JumpCheck == true)) {
    plyr.state = 3;
    plyr.Jump = true;
  }
   if (key == 's') {
    plyr.state = 4;
    plyr.Duck = true;
  }
  
}
void keyReleased() {
  if (key == 'a') {
    plyr.state = 0;
    plyr.left = false;
  }
  if (key == 'd') {
    plyr.state = 0;
    plyr.right = false;
  }
  
   if (key == 's') {
    plyr.state = 0;
    plyr.Duck = false;
  }
  
}
