class Menu {
  float disMenu;
  Menu() {
    disMenu = 65/2; //this number derived from the Box's size
  }  
  //to detect if it's in the control info square
  boolean inSquareC() {
    if (dist(45, 140, mouseX, mouseY) <=disMenu) {
      return true;
    }
    else {
      return false;
    }
  }
  //to detect if its in data details.
  boolean inSquareD() {
    if (dist(45, 340, mouseX, mouseY)<=disMenu) {
      return true;
    }
    else {
      return false;
    }
  }  
  void rectSetup() {
    fill(11, 78, 150);
    rectMode(CENTER);
  } 
  void textSetup() {
    fill(255);
    //fill(18, 132, 255);
    textSize(17);
  
  }  
  void display() {  
    //display general menu
    fill(8,58,112);
    rectMode(CENTER);
    rect(45, 240, 50, 50, 10);//draw a box for menu
    //fill(18, 132, 255);
    fill(255);
    ellipseMode(CENTER);
    ellipse(45,240,37,37);
    //textSize(23);
    //text("Menu", 15, 245); 
    //if mouse X&Y is hovering around the general area of the menu selection, display all 3 boxes
    if ((mouseX >= 15 && mouseX <= 65 )&& (mouseY <= 340 && mouseY >= 140)) {
      rectSetup();
      rect(45, 140, 65, 65, 10);//draw a box for control info
      rect(45, 340, 65, 65, 10);//draw a box for data details
      textSetup();
      text("Control\nInfo", 15, 140);//output the texts
      text("Data\nDetails", 15, 340);
      //if mouse X&Y is specificallly inside of Control Info box then display relevant info to user
      if (inSquareC()) {
        textSize(20);
        text("1.Hover or click and hold on specific continents for DEMOGRAPHIC INFO!!", width/2-250, 340);
        text("2.Keypress left or right to CHANGE background", width/2 -250, 370);
        text("3.Keypress up or down arrow to CLEAR background and return to DEFAULT", width/2 -250, 400);
      }
      //else in Data details.
      if (inSquareD()) {
        textSize(20);
        text("1.Population density is represented by the density dots.", width/2-250, 340);
        text("   - Dot Opacity-->Population Density(Millions/million-km³)" , width/2 -250, 370);
        text("   - Dot Size---->A ratio of that continent's actual size(million-km³)", width/2 -250, 400);
        text("   - Dot Amount-->Determined by the total area of continent(million-km³)", width/2 -250, 430);
      }
    }
  }
}

