class Continents {
  String name;
  float x, y;
  float size;
  float mouseDist;
  Population contPop;
  float totalArea;
  float popSize;
  color dark;
  color light;
  int smallF;
  int bigF;
  DensityDot [] dots;
  PImage contImg;

  Continents(String name, float x, float y, float size, float popSize, float totalArea) {
    this.name = name;
    this.x = x;
    this.y = y;
    this.size = size;
    this.popSize = popSize;
    this.totalArea = totalArea;
    contPop = new Population(popSize, totalArea);
    dots = new DensityDot[(int)totalArea];
    for (int i =0; i<dots.length; i++) {
      dots[i] = new DensityDot(random(getX() - getSize(), getX() + getSize()), random(getY() - getSize(), getY() + getSize()), getSize()/8, contPop.calcDensity(popSize, totalArea));
    }
  }
  String returnName() {
    return name;
  }  
  float getX() {
    return x;
  }
  float getY() {
    return y;
  }
  float getSize() {
    return size;
  }
  float detect() {
    mouseDist = dist(x, y, mouseX, mouseY);
    return mouseDist;
  }

  void color_font_Decisions() {
    // write a series of if statements, pass in name of continent to determine RGB color scheme for that continent. 
    if (returnName()==("Australia")) { //wrote this after .equals has failed..surprised compilier didn't scream at me...
      light = color(20, 165, 204);
      dark = color(13, 103, 127);
      smallF = 15;
      bigF = 30;
    }
   if (returnName().equals("Asia")) {
      light = color(204, 189, 20);
      dark = color(160, 150, 35);
      smallF = 20;
      bigF =  60;
    }
    if (returnName().equals("Africa")) {
      light = color(59, 196, 173);
      dark = color(38, 127, 112);
      smallF = 20;
      bigF =   50;
    }
    if (returnName().equals("Europe")) {
      light = color(207, 229, 249);
      dark = color(181, 202, 298);
      smallF = 16;
      bigF = 38;
    } 
    if (returnName().equals("North America")) {
      light = color(211, 34, 169);
      dark = color(202, 51, 124);
      smallF = 16;
      bigF = 35;
    } 
    if (returnName().equals("South America")) {
      light = color(72, 204, 127);
      dark = color(82, 153, 38);  
      smallF = 12;
      bigF =   30;
    }
  }   

  void display() {
    if (detect()<getSize()/2) {
      //  displayDensity();
      fill(light);//lightY for selection
      textSize(bigF);
    }
    else {
      fill(dark);
      textSize(smallF);
    }
    //noStroke();
    //ellipse(australia.getX(), australia.getY(), australia.getSize(), australia.getSize());
    text(returnName(), getX(), getY());
  }

  void displayDensity() {
    if (detect()<getSize()/2) { 
      for (int i=0; i<dots.length; i++) {
        //dots[i].detect();
        dots[i].displayDensityDot();
      }
    }
  }
  void mousePressed() {
    if (detect()<getSize()/2) {
      contImg = loadImage(returnName() + ".jpg");
      image(contImg, 0, 0);
    }
  }
}

