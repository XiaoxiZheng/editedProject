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
  //Minim minim;
  //AudioPlayer bgMusic;

  Continents(String name, float x, float y, float size, float popSize, float totalArea) {
    this.name = name;
    this.x = x;
    this.y = y;
    this.size = size;
    this.popSize = popSize;
    this.totalArea = totalArea;
    contPop = new Population(popSize, totalArea);
    dots = new DensityDot[(int)totalArea];
    // minim = new Minim(this);
    for (int i =0; i<dots.length; i++) {
      dots[i] = new DensityDot(random(getX() - getSize(), getX() + getSize()), random(getY() - getSize(), getY() + getSize()), getSize()/7, contPop.calcDensity(popSize, totalArea)*10);
    }
    if (name.equals("Australia")) { 
      light = color(20, 165, 204);
      dark = color(13, 103, 127);
      smallF = 20;
      bigF = 30;
    }
    else if (name.equals("Asia")) {
      light = color(204, 189, 20);
      dark = color(160, 150, 35);
      smallF = 25;
      bigF =  65;
    }
    else if (name.equals("Africa")) {
      light = color(59, 196, 173);
      dark = color(38, 127, 112);
      smallF = 25;
      bigF =   55;
    }
    else if (name.equals("Europe")) {
      light = color(207, 229, 249);
      dark = color(181, 202, 298);
      smallF = 21;
      bigF = 43;
    } 
    else if (name.equals("North America")) {
      light = color(211, 40, 179);
      dark = color(202, 51, 124);
      smallF = 21;
      bigF = 40;
    } 
    else if (name.equals("South America")) {
      light = color(72, 204, 127);
      dark = color(82, 153, 38);  
      smallF = 20;
      bigF =   30;
    }
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

  void displaySmall() {
    fill(dark);
    textSize(smallF);
    text(name, getX(), getY());
  }

  void display() {
    detect();
    if (detect()<getSize()/2) {
      fill(light);//lightY for selection
      textSize(bigF);
     
    }
    else {
      fill(dark);
      textSize(smallF);
    }
    text(name, getX(), getY());
  }   

  void displayDensity() {
    detect();
    if (mouseDist< size/2) { 
      for (int i=0; i<dots.length; i++) {
        //dots[i].detect();
        dots[i].displayDensityDot();
      }
    }
  }
  void mousePressed() {
    if (detect()<getSize()/2) {
      if (mousePressed == true) {  
        contImg = loadImage(name +".jpg");
        image(contImg, 0, 0);
      }
    }
  }
}

