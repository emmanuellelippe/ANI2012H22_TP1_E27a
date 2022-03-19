//bouton 2
Button button2 = new Button(50, 100, 40, 40, #29595D, #3A858B, #397E68, false);

void showPart1() {
  boolean button=false;
  
  //soleil et lune
  int x=400;
  int y=160;
  int w=300;
  int h=300;

  if (sqrt(sq(x - mouseX) + sq(y - mouseY)) < w/2 && mousePressed) {
    button=true;
  }
  if (button) {
    background (#3FC0D8);
    stroke(0);
  } else {
    background (#122E34);
    stroke (0);
  }
  
  //foudre
  if (keyPressed && !mousePressed) {
    if (key == 'f') {
      for (int i = s.size() - 1; i >= 0; i --) {
        s.get(i).update(20);
        s.get(i).show();
        if (s.get(i).dead) s.remove(i);
      }
      if (s.size() < 5) {
        s.add(new strike(new PVector(random(width), 50), 100, 0, 5));
      }
    }
  }
  fill (#8CD6D1);
  text ("appuie sur la touche f pour foudre",25, 365);
 
  fill(#F9FCAB);
  noStroke();
  ellipse(x, y, w, h);

  fill(#044348);
  arc(311, 600, 1100, 270, PI, TWO_PI);

  fill(#551B10);
  arc (381, 630, 888, 190, PI, TWO_PI);

  fill (#2E479D);
  noStroke();

  rect(0, 600, 625, 400);
  if (button) {
    noTint();
  } else {
    tint(#49595A);
  }
  image (lake, 0, 600);

  fill (#346242);
  noStroke();
  beginShape(TRIANGLES);
  vertex(80, 500);
  vertex(100, 420);
  vertex(120, 500);
  endShape();

  fill (#3F764F);
  noStroke();
  beginShape(TRIANGLES);
  vertex(100, 500);
  vertex(120, 420);
  vertex(140, 500);
  endShape();

  fill (#346242);
  noStroke();
  beginShape(TRIANGLES);
  vertex(180, 500);
  vertex(200, 420);
  vertex(220, 500);
  endShape();

  fill (#3F764F);
  noStroke();
  beginShape(TRIANGLES);
  vertex(200, 500);
  vertex(220, 420);
  vertex(240, 500);
  endShape();

  fill (#346242);
  noStroke();
  beginShape(TRIANGLES);
  vertex(400, 500);
  vertex(420, 420);
  vertex(440, 500);
  endShape();

  fill (#3F764F);
  noStroke();
  beginShape(TRIANGLES);
  vertex(420, 500);
  vertex(440, 420);
  vertex(460, 500);
  endShape();

  //Bouton partie 2
  button2.draw_button();
  fill(#1D2E67);
  text ("2", 62, 129);
}
