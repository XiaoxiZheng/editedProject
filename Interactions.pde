
class Interactions {
  World myWorld;

  Interactions() {
    myWorld = new World();
  }
  void display() {
    if (myWorld.contDetection1()) {
      myWorld.display();
    }
    else {
      myWorld.displaySmall();
    }
  }    
  void reset() {
    mousePressed();
    if (mouseButton == LEFT) { 
      nightBG = loadImage("earthLights.jpg");
      image(nightBG, 0, 0);
      if (myWorld.contDetection1()) {
        myWorld.display();
      }
      else {
        myWorld.displaySmall();
      }
    }
  }  

    void changeBackground() {
      keyPressed();
      if (key == CODED) {
        if (keyCode == RIGHT) {
          imgMyBG = loadImage("_DSC0658.jpg");
          image(imgMyBG, 0, 0);
          if (myWorld.contDetection1()) {
            myWorld.display();
          }
          else {
            myWorld.displaySmall();
          }
        }
        else if (keyCode == LEFT) {
          imgBG = loadImage("_DSC0619.jpg");
          image(imgBG, 0, 0);
          if (myWorld.contDetection1()) {
            myWorld.display();
          }
          else {
            myWorld.displaySmall();
          }
        }
      }
    }
}      

