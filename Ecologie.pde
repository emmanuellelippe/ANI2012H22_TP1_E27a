Animation animationplante;
PFont font;
PFont font1;
PImage lake;

//audio foudre
import processing.sound.*;
SoundFile soundwater;
SoundFile soundlightning;

// visuel foudre
ArrayList<strike> s = new ArrayList<strike>();

//initialisation du menu
String state="menu";

void setup() {
  size(600, 800);
  font = loadFont ("MshtakanOblique-30.vlw");
  textFont (font);
  
  //lac
  lake= loadImage ("lake.png");
  
  //animation plante
  animationplante = new Animation("Plante", 6);
  soundwater = new SoundFile(this, "eauLac.wav");
  soundlightning = new SoundFile(this, "foudre21.wav");
}
void draw() {
  menu();
}
