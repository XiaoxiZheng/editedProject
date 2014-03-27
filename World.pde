class World {
  Continents africa;
  Continents asia;
  Continents australia;
  Continents europe;
  Continents sAmerica;
  Continents nAmerica;


  World() {
    africa = new Continents ("Africa", 530, 240, 70,1033,30.22);
    asia = new Continents("Asia", 740, 130, 77,4299,44.58);
    australia = new Continents("Australia", 800, 310, 45,23,7.692);
    europe = new Continents("Europe", 500, 113, 34,739,10.18);
    sAmerica = new Continents("South America", 320, 280, 50,388,17.84);
    nAmerica = new Continents("North America", 200, 120, 66,529,24.71);
  }  
  void display() {
    africa.display();
    asia.display();
    australia.display();
    europe.display();
    sAmerica.display();
    nAmerica.display();
  } 

  void displayDensity() {
    africa.displayDensity();
    asia.displayDensity();
    australia.displayDensity();
    europe.displayDensity(); 
    sAmerica.displayDensity();
    nAmerica.displayDensity();
  }  

  void displayAgeChart() {
    africa.mousePressed();
    asia.mousePressed();
    australia.mousePressed();
    europe.mousePressed();
    nAmerica.mousePressed();
    sAmerica.mousePressed();
  }
}

