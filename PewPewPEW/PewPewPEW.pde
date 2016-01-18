//VIOLET CYBORG GUNSLINGER
//Kwwwwwerfect 5/7 with rice
//Press Play ^


import ddf.minim.*;
Minim minim;
AudioPlayer player;
AudioPlayer thawk;
//music credit: T.Hawk Street Fighter 2 8-bit remix by bulby
Player plyr;
Platform[] Plat = new Platform[8];
ArrayList<Bullet> myBullets = new ArrayList<Bullet>();
int mag;
int magTime;
int Trans = 0;

Sand[] mySand = new Sand[500];

Enemy[] Enmy = new Enemy[5];
ArrayList<Bullet> myBulletsE = new ArrayList<Bullet>();
int magE;
int magTimeE;

color c = color(0, 255, 200);
PImage background;
PImage Purp;
PImage PurpC;
PImage Grunt;
PImage GruntR;
PImage PurpR;
PImage PurpCR; 
PImage GruntW;
PImage GruntW2;
PImage GruntW2R;
PImage GruntWR;
PImage PurpW;
PImage PurpW2;
PImage PurpWR;
PImage PurpW2R;
PImage GruntC;
PImage sun;
PImage text;
PImage controls;
PImage start;
PImage death;
int screen;
float texty = -500;
float alpha = 0;
float alphaChange  = 5;
PImage Town;
PImage Town2; 
PImage Town3;
PImage Sand;
PImage Saloon;
boolean saloon=false;
PImage heart;
PImage bullet;
int magH=6;
void setup() {
  
  minim = new Minim(this);
bullet= loadImage("8bitbullet.png");
heart= loadImage("8bitheart.png");
  background= loadImage("Background000.gif");
  Purp= loadImage("gunslinger000.gif");
  PurpC= loadImage("gunslingerCrouch000.gif");
  Grunt= loadImage("Grunt000.gif");
  GruntW= loadImage("Grunt001.gif");
  GruntW2= loadImage("Grunt002.gif");
  GruntWR= loadImage("Grunt001R.gif");
  GruntW2R= loadImage("Grunt002R.gif");
  GruntR= loadImage("Grunt000R.gif");
  PurpR= loadImage("gunslinger000R.gif");
  PurpCR= loadImage("gunslingerCrouch000R.gif");
  PurpWR= loadImage("gunslinger001R.gif");
  PurpW2R= loadImage("gunslinger002R.gif");
  PurpW= loadImage("gunslinger001.gif");
  PurpW2= loadImage("gunslinger002.gif");
  sun = loadImage("titlescreen000.gif");
  text = loadImage("titlescreen001.gif");
  controls = loadImage("titlescreen002.gif");
  start = loadImage("titlescreen003.gif");
  death = loadImage("RIPINPIP.gif");
  GruntC= loadImage("Grunt200.gif");
   Town= loadImage("Background001.gif");
  Town2= loadImage("Background002.gif"); 
  Town3= loadImage("Background003.gif");
  Sand= loadImage("Kylesmells.gif");
Saloon= loadImage("saloon.gif");
  player = minim.loadFile("shot.wav");
  thawk = minim.loadFile("THawksTheme8BitByBulby.mp3");
 
  size(1200, 800);
  plyr = new Player();
  for (int i = 0; i < Enmy.length; i++) {

    int ps_ = 0;
    int pe_ = 0;
    int h_ = 0;

    if ( i == 0 ) {
      ps_ = 0 ;
      pe_ = 1150;
      h_= height-180 ;
    }
    if ( i == 1 ) {
      ps_ = 800 ;
      pe_ = 1150;
      h_= 195 ;
    }
    if ( i == 2 ) {
      ps_ = 1600 ;
      pe_ = 2400;
      h_= height -180 ;
    }
 if ( i == 3 ) {
      ps_ = 2000 ;
      pe_ = 2000;
      h_= 195 ;
    }
     if ( i == 4 ) {
      ps_ = 2975 ;
      pe_ = 2975;
      h_= 450 ;
    }




    Enmy[i] = new Enemy(ps_, pe_, h_);
  }

  for (int i = 0; i < Plat.length; i++) {

    int x_ = 0;
    int y_ = 0; 
    int w_ = 0;
    int h_ = 0;

     if ( i == 0) {
      x_ = 803;
      y_ = 395; 
      w_ = 400;
      h_ = 5;
    }

    if ( i == 1) {
      x_ = 0;
      y_ = height - 180; 
      w_ = 10000;
      h_ = 5;
    }

    if ( i == 2) {
      x_ = 203;
      y_ =395; 
      w_ = 400;
      h_ = 5;
    }
    if ( i == 3) {
      x_ = 203;
      y_ =195; 
      w_ = 400;
      h_ = 5;
    }

    if ( i == 4) {
      x_ = 803;
      y_ = 195; 
      w_ = 400;
      h_ = 5;
    }
    if ( i == 5) {
      x_ = 2000;
      y_ = 395; 
      w_ = 400;
      h_ = 5;
    }
   
    if ( i == 6) {
      x_ = 2000;
      y_ = 195; 
      w_ = 400;
      h_ = 5;
    }
    if ( i == 7) {
      x_ = 2975;
      y_ = 450; 
      w_ = 250;
      h_ = 5;
    }

    Plat[i] = new Platform(x_, y_, w_, h_);
  }
  for (int i = 0; i < mySand.length; i++) {
    mySand[i] = new Sand(i);
    //float x, float y, float xV, float yV, int s, color c
  }
}
void draw() {
  thawk.play();
  //titlescreen
  if (screen == 0) {
    image(sun, 0, 0);
    image(text, 0, texty);
    tint(255, 255, 255, alpha);
    image(start, 0, 0);
    tint(255, 255, 255, 255);
    for (int i = 0; i < mySand.length; i++) {
      mySand[i].update();
      mySand[i].display();
    }
    if (texty < 0) {
      texty=texty + 5;
    }
    if (texty >= 0) {
      image(controls, 0, 0);
      alpha = alpha + alphaChange;
    }
    if (alpha <= -50) {
      alphaChange = 5;
    }
    if (alpha >= 255) {
      alphaChange = -5;
    }
    if(mousePressed){
      screen = 1;
    }
  }

  //game
  if (screen == 1) {
  if ((plyr.xPos>0)&&(plyr.xPos<2800)){
  Trans = (-1 * plyr.xPos) +  width/3;
  }
    if ((plyr.xPos>4000)&&(plyr.xPos<4005)){
  Trans = (-1 * plyr.xPos) +  width/3;
  }
  if (plyr.xPos< 100) {
    plyr.xPos=100;
  }
    if (plyr.xPos> 4600) {
    plyr.xPos=4600;
  }
  if (saloon==true){
     if (plyr.xPos< 3750) {
    plyr.xPos=3750;
  }
  }
 
 if(( plyr.xPos>3170)&&( plyr.xPos<3180)){
   plyr.xPos=4000;
   saloon=true;
 }

 
  translate(Trans, 0);
  background(background);
  image(Sand, -1159, 0, 1200, 800);
  image(Town, 0, 0, 1200, 800);
  image(Town2, 1200, 0, 1200, 800);
  image(Town3, 2400, 0, 1200, 800);
  image(Saloon,3605,0,1200,800);
   textSize(100);
  fill(0);
  text("Congladurations", 3750, 200);
   if ((plyr.xPos>0)&&(plyr.xPos<2800)){
  image(heart,plyr.xPos-250,height-100,50,50);
   image(bullet,plyr.xPos+500,height-110,75,75);
   textSize(50);
   fill(0);
   text(plyr.HP,plyr.xPos-180,height-60);
    text(magH,plyr.xPos+600,height-60);
   } 
   
   if((plyr.xPos>3600)&&( plyr.xPos<4800)){
      image(heart,3730,height-100,50,50);
   image(bullet,4450,height-110,75,75);
   textSize(50);
   fill(0);
   text(plyr.HP,3800,height-60);
    text(magH,4550,height-60);
   }
    if((plyr.xPos>2800)&&( plyr.xPos<3170)){
      image(heart,2530,height-100,50,50);
   image(bullet,3250,height-110,75,75);
   textSize(50);
   fill(0);
   text(plyr.HP,2600,height-60);
    text(magH,3350,height-60);
   }
   
   
    if (plyr.HP > 0) {
      plyr.update();
      for (int i = 0; i < Plat.length; i++) {
        Plat[i].display();
        Plat[i].check();
      }
      plyr.display();
    }else if (plyr.HP <= 0){
      screen = 2;
    }
    for (int i = 0; i < Enmy.length; i++) { 
      if (Enmy[i].HP > 0) {

        Enmy[i].display();
        Enmy[i].move();
      }

      if ((Enmy[i].triggered == true) && (Enmy[i].shoot == true)) {
        myBulletsE.add(new Bullet(i));
        Enmy[i].shoot = false;
      }
    }

    for (int i = 0; i < myBullets.size(); i++) {
      Bullet temp = myBullets.get(i);
      temp.update();
      temp.display();

      if ((temp.position.x< -4000) || (temp.position.x > 10000) || (temp.position.y < 0) || (temp.position.y > height)) {
        myBullets.remove(i);
      }

      for (int j = 0; j < Enmy.length; j++) { 
        if ((temp.position.x > Enmy[j].xPosE) && (temp.position.x < (Enmy[j].xPosE) + 66) && (temp.position.y > Enmy[j].yPosE) && (temp.position.y < (Enmy[j].yPosE) + 91)) {
          if ( Enmy[j].HP > 0) {
            myBullets.remove(i);

            Enmy[j].HP--;
          }
        }
      }
    }

    if (mag >= 6) {
      if (magTime > 60) {
        mag = 0;
        magTime = 0;
        magH=6;
      } else if (magTime <= 60) {
        magTime++;
      }
    }

    for (int i = 0; i < myBulletsE.size(); i++) {
      Bullet temp = myBulletsE.get(i);
      temp.update();
      temp.display();

      if ((temp.position.x < 0) || (temp.position.x > plyr.xPos + (width/3 * 2)) || (temp.position.y < 0) || (temp.position.y > height)) {
        myBulletsE.remove(i);
      }

      if ((temp.position.x > plyr.xPos) && (temp.position.x < (plyr.xPos) + 66) && (temp.position.y > plyr.yPos) && (temp.position.y < (plyr.yPos) + 91)) {
        myBulletsE.remove(i);
        plyr.HP--;
      }
    }
  }
  if (screen == 2){
    image(death,0,0);
  }
}


void mousePressed() {
  if (mag < 6) {
    myBullets.add(new Bullet(mouseX, mouseY));
    mag++;
    magH--;
    player.rewind();
    player.play();
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
