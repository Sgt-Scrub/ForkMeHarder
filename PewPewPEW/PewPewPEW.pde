Player plyr;
Platform[] Plat = new Platform[3];
ArrayList<Bullet> myBullets = new ArrayList<Bullet>();
int mag;
int magTime;
int Trans = 0;


Enemy[] Enmy = new Enemy[2];
ArrayList<Bullet> myBulletsE = new ArrayList<Bullet>();
int magE;
int magTimeE;

color c = color(0, 255, 200);
void setup() {



  size(1200, 800);
  plyr = new Player();
  for (int i = 0; i < Enmy.length; i++) {

    int ps_ = 0;
    int pe_ = 0;
    int h_ = 0;

    if ( i == 0 ) {
      ps_ = 0 ;
      pe_ = 629 ;
      h_= 600 ;
    }

    if ( i == 1 ) {
      ps_ = width/2 ;
      pe_ = ps_ + width/2 + 50;
      h_= height - 400 ;
    }




    Enmy[i] = new Enemy(ps_, pe_, h_);
  }

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
  Trans = (-1 * plyr.xPos) +  width/3;
  translate(Trans, 0);
  background(#f1f1f1);
  println(mouseX, mouseY);
  plyr.update();
  for (int i = 0; i < Plat.length; i++) {
    Plat[i].display();
    Plat[i].check();
  }
  plyr.display();
  for (int i = 0; i < Enmy.length; i++) { 
   
    if (Enmy[i].HP > 0){
   
    Enmy[i].display();
    Enmy[i].move();
    }
  }

  for (int i = 0; i < myBullets.size(); i++) {
    Bullet temp = myBullets.get(i);
    temp.update();
    temp.display();

    if ((temp.position.x < 0) || (temp.position.x > plyr.xPos + (width/3 * 2)) || (temp.position.y < 0) || (temp.position.y > height)) {
      myBullets.remove(i);
    }


    for (int j = 0; j < Enmy.length; j++) { 
      if ((temp.position.x > Enmy[j].xPosE) && (temp.position.x < (Enmy[j].xPosE) + 30) && (temp.position.y > Enmy[j].yPosE) && (temp.position.y < (Enmy[j].yPosE) + 60)) {
        myBullets.remove(i);
     
     Enmy[j].HP--;
    }
    }
  }
  if (mag >= 6) {
    if (magTime > 60) {
      mag = 0;
      magTime = 0;
    } 
    else if (magTime <= 60) {
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

  if (key == 'r') {
    mag = 6;
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

