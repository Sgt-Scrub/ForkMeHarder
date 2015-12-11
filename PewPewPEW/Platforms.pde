class Platform{
  
 int Xpos;
 int Ypos;
 int Rwidth;
 int Hwidth;
 
  
  Platform(int x_, int _y, int _w, int _h){
    
 Xpos = x_;
 Ypos = _y;
 Rwidth = _w;
 Hwidth = _h;
 
  }
  
  void display(){
  // noStroke();
    rect(Xpos, Ypos, Rwidth, Hwidth); 
    
  }
  
  void check(){
   
   if (((plyr.xPos + 30) > Xpos) && (plyr.xPos < (Xpos + Rwidth)) &&((plyr.yPos + 31) >= Ypos) && (plyr.yPos < Ypos) ){
     
    plyr.yPos = Ypos - 31;

   }

}

}
