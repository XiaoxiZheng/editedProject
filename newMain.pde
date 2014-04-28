import ddf.minim.spi.*;
import ddf.minim.signals.*;
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.ugens.*;
import ddf.minim.effects.*;

Minim minim;
AudioPlayer bgMusic;
PImage imgBG;
PImage imgMyBG;
PImage nightBG;
import gifAnimation.*;
Gif loading;
PFont font;

Interactions myWorldInteraction;
Menu menu;


void setup() {
  size(960, 480);
  minim = new Minim(this);
  bgMusic = minim.loadFile("sAmerica.wav");
  bgMusic.play();
  bgMusic.loop();
  myWorldInteraction = new Interactions();
  menu = new Menu();
  loading = new Gif(this, "Earth-06-june.gif");
  loading.loop();
  font = loadFont("AGaramondPro-BoldItalic-48.vlw");
  textFont(font);
}
void draw() { 
  nightBG = loadImage("earthLights.jpg");
  image(nightBG, 0, 0);
  cursor(loading);
  tint(255, 206);
  myWorldInteraction.display();
  myWorldInteraction.reset();
  myWorldInteraction.changeBackground();
  //putting up instructions for users.
  menu.display();
}


