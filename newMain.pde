PImage imgBG;
PImage nightBG;
import gifAnimation.*;
Gif loading;
initialScreen theInitialScreen; 


World myWorld;

void setup() {
  size(960, 480);
  myWorld = new World();
  loading = new Gif(this, "Earth-06-june.gif");
  loading.loop();
  theInitialScreen = new initialScreen();
  theInitialScreen.display();
}
void draw() { 
  cursor(loading);
  myWorld.displayDensity();
  myWorld.display();
}

void mousePressed() {
  if (mouseButton == LEFT) { 
    nightBG = loadImage("earthLights.jpg");
    image(nightBG, 0, 0);
    myWorld.display();
    myWorld.display();
    myWorld.displayAgeChart();
  }
}  
void keyPressed() {
  if (key == CODED) {
    if (keyCode == RIGHT) {
       background(0);
    }
    if (keyCode == LEFT) {
      imgBG = loadImage("map.jpg");
      image(imgBG, 0, 0);
    }
    myWorld.display();
    myWorld.displayAgeChart();
  }
}

