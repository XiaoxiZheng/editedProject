class World {
  Continents africa;
  Continents asia;
  Continents australia;
  Continents europe;
  Continents sAmerica;
  Continents nAmerica;
  String contName;


  World() {
    africa = new Continents ("Africa", 530, 240, 70, 1033, 30.22);
    asia = new Continents("Asia", 740, 130, 77, 4299, 44.58);
    australia = new Continents("Australia", 820, 310, 22, 23, 7.692);
    europe = new Continents("Europe", 500, 113, 40, 739, 10.18);
    sAmerica = new Continents("South America", 315, 290, 50, 388, 17.84);
    nAmerica = new Continents("North America", 200, 120, 66, 529, 24.71);
    contName = "";
  }  
  boolean contDetection1() {
    if (asia.detect()<= asia.getSize()/2) {
      return true;
    }
    else if (africa.detect()<= africa.getSize()/2) {
      return true;
    }  
    else if (europe.detect()<= europe.getSize()/2) {
      return true;
    }
    else if (nAmerica.detect()<= nAmerica.getSize()/2) {
      return true;
    }  
    else if (sAmerica.detect()<= sAmerica.getSize()/2) {
      return true;
    }
    else if (australia.detect()<= australia.getSize()/2) {
      return true;
    }  
    else {
      return false;
    }
  }  
  String contDetection() {
    if (asia.detect()<= asia.getSize()/2) {
      contName = "Asia";
    }
    else if (africa.detect()<= africa.getSize()/2) {
      contName = "Africa";
    }  
    else if (europe.detect()<= europe.getSize()/2) {
      contName = "Europe";
    }
    else if (nAmerica.detect()<= nAmerica.getSize()/2) {
      contName = "North America";
    }  
    else if (sAmerica.detect()<= sAmerica.getSize()/2) {
      contName = "South America";
    }
    else if (australia.detect()<= australia.getSize()/2) {
      contName = "Australia";
    }  
    return contName;
  }    
  void display() {  
    if (contDetection().equals("Asia")) {
      displayAsia();
    }
    else if (contDetection().equals("Africa")) {
      displayAfrica();
    }
    else if (contDetection().equals("Europe")) {
      displayEurope();
    }
    else if (contDetection().equals("North America")) {
      displayNAmerica();
    }
    else if (contDetection().equals("South America")) {
      displaySAmerica();
    }
    else if (contDetection().equals("Australia")) {
      displayAustralia();
    }
    else {
      displaySmall();
    }
  } 
  void displaySmall() {
    africa.displaySmall();
    asia.displaySmall();
    australia.displaySmall();
    europe.displaySmall();
    sAmerica.displaySmall();
    nAmerica.displaySmall();
  }  
  void displayAsia() {
    asia.display();
    asia.displayDensity();
    asia.mousePressed();
  }

  void displayAfrica() {
    africa.display();
    africa.displayDensity();
    africa.mousePressed();
  }
  void displayEurope() {
    europe.display();
    europe.displayDensity();
    europe.mousePressed();
  }
  void displayNAmerica() {
    nAmerica.display();
    nAmerica.displayDensity();
    nAmerica.mousePressed();
  }

  void displaySAmerica() {
    sAmerica.display();
    sAmerica.displayDensity();
    sAmerica.mousePressed();
  }
  void displayAustralia() {
    australia.display();
    australia.displayDensity();
    australia.mousePressed();
  }
}

