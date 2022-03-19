Button button3 = new Button(50, 100, 40, 40, #37ADB7, #3A858B, #397E68, false);

int textR =63, textG =192, textB = 216;
int text1R =35, text1G =103, text1B = 63;

void showPart2() {
  boolean button=false;
  
//soleil et lune
  int x=400;
  int y=60;
  int w=400;
  int h=400;

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
//terrain
  fill(#F9FCAB);
  noStroke();
  ellipse(x, y, w, h);

  fill(#678673);
  arc(311, 770, 1100, 570, PI, TWO_PI);

  fill(#551B10);
  arc (381, 800, 888, 290, PI, TWO_PI);

  fill(#892E1E);
  arc(300, 670, 120, 50, PI, TWO_PI);

  fill(#794E47);
  arc(302, 660, 60, 20, PI, TWO_PI);

  fill (#2E479D);
  noStroke();
  
//Sapins
  fill (#346242);
  noStroke();
  beginShape(TRIANGLES);
  vertex(0, 200);
  vertex(0, 600);
  vertex(100, 600);
  endShape();

  fill (#3F764F);
  noStroke();
  beginShape(TRIANGLES);
  vertex(600, 200);
  vertex(500, 600);
  vertex(600, 600);
  endShape();
  
  stroke (#F7F714);
  strokeWeight(3);
  point(260,625);
  point(250,619); 
  point(240,600);
  point(245,570);
  point(250,590);
  point(270,545);
  point(275,535);
  point(280,520);
  point(290,525);
  point(320,600);
  point(336,605);
  point(339,618);
  point(342,585);
  point(270,620);
 
  
//texte dynamique
  fill (color(textR, textG, textB));
  if (textR>35) textR--;
  if (textG>103) textG --;
  if (textB>63) textB --;

  text ("passe ta souris sur la motte de terre", 25, 45);

  fill (color(text1R, text1G, text1B));
  if (text1R<63) text1R ++;
  if (text1G<192) text1G ++;
  if (text1B<216) text1B ++;

  text ("voilà la plante!", 400, 755);
  
  button3.draw_button();
  fill(#1D2E67);
  text ("3", 62, 129);


  if (mouseX<360 && mouseX>240 && mouseY<690 && mouseY>640) {
    animationplante.display(245, 550);
  }
}
