class Ball {
  float x = width/2;
  float y = height/2;
  float xspeed = 5;
  float yspeed = 2.3;
  int ballsize = 32;
  boolean sizechange = false;
  
  void display() {
   stroke(0);
   fill(127);
   ellipse(x,y,ballsize,ballsize);
  }

  void update() {
    x = x + xspeed;
    y = y + yspeed;
  }
  
  void checkedges() {
    if (x > width || x < 0) {
     sizechange = true;
     xspeed = xspeed * -1;
    }
    if (y > height || y < 0) {
      sizechange = true;
      yspeed = yspeed * -1;
    }
  }
  void sizechange() {
   if (sizechange==true) {
     ballsize+=2;
     sizechange=false;
   }
  }
}
