//menu est Écran d'accueil
//Bouton
Button button1 = new Button(50, 100, 40, 40, #37ADB7, #3A858B, #397E68, false);


void menu() {
  switch(state) {
  case "menu":
    showMenu();
    break;
  case "part1":
    showPart1();
    break;
  case "part2":
    showPart2();
    break;
  default:
    exit();
    break;
  }
}
//menu
void showMenu() {
  boolean button=false;
  
 //soleil et lune
  int x=500;
  int y=140;
  int w=100;
  int h=100;
  
  if (sqrt(sq(x - mouseX) + sq(y - mouseY)) < w/2 && mousePressed) {
    button=true;
  }
  if (button) {
    background (#122E34);
    stroke(0);
  } else {
    background (#3FC0D8);
    stroke (0);
  }
  fill (#1D2E67);
  //texte
  font = loadFont ("MshtakanOblique-30.vlw");
  textFont (font);
  text ("Le mystère de la vie", 25, 45);
   font1 = loadFont ("HiraginoSans-W2-20.vlw");
  textFont (font1);
  text ("appuie sur la touche e pour eau", 25, 225);
  text ("clique sur le soleil", 25, 275);

//formes
  fill(#F9FCAB);
  noStroke();
  ellipse(x, y, w, h);

  fill(#044348);
  arc(311, 400, 1100, 170, PI, TWO_PI);

  fill(#551B10);
  arc(381, 430, 888, 90, PI, TWO_PI);

  fill (#2E479D);
  noStroke();

  rect(0, 400, 625, 400);
  if (button) {
    tint(#49595A);
  } else {
    noTint();
  }
  image (lake, 0, 400);

  //Bouton partie 1
  button1.draw_button();
  fill (#1D2E67);
  text ("1", 62, 129);
}

void keyPressed() {
  if (key == 'e') {
    soundwater.play();
  }
  if (key == 'f' && state == "part1" && !mousePressed) {
    soundlightning.play();
  }
}
void mousePressed() {
  if (button1.over) {
    state = "part1";
    button1.over = false;
  }
  if (button2.over) {
    state = "part2";
    button2.over = false;
  }
  if (button3.over) {
    state = "menu";
    button3.over = false;
  }
}
