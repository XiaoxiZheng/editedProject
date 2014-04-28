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
      text("Control\n  Info", 15, 140);//output the texts
      text("Over-\n  view", 15, 340);
      //if mouse X&Y is specificallly inside of Control Info box then display relevant info to user
      if (inSquareC()) {
        textSize(18);
        text("1.Hover or click and hold on specific continents for DEMOGRAPHIC INFO!\n    Dot Opacity--Population Density(Millions/million-km³)\n    Dot Size--A ratio of that continent's actual size\n    Dot Amount--Determined by the total area of continent(million-km³)", width/2-250, 340);
        
        text("2.Keypress left or right to CHANGE background", width/2 -250, 427);
        text("3.Keypress up or down arrow to CLEAR background and return to DEFAULT", width/2 -250, 450);
      }
      //else in Data details.
      if (inSquareD()) {
        textSize(18);
        text("My project presents a generalized demographic information directly to end users.\nInformation regarding population density, size, and age distribution are presented through\na more visually compelling means. Often demographic information such as these are\npresented in a mundane and static tables. My program strived to give an intuitive impression\nto users about the unbalanced distribution of resources per population density across different\ncontinents, and present the characteristics of a dominating age group of that continent. As we\nknow,these valuable informations are often what drive our social-economic world.", width/2-250, 340);
      }
    }
  }
}

