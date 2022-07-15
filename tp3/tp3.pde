bloque[] fila, fila2, fila3, fila4, fila5, fila6, fila7;
int puntos, vidas, pant;
float Px, Py, Rx, Ry, RxAncho, RyAlto, Vx, Vy, Vrx;
boolean jugar;
String pts = "0000";
PImage lose, win, logo;
PFont fuente;
void setup() {
  lose = loadImage("loser.jpg");
  win = loadImage("winner.jpg");
  logo = loadImage("Arkanoid.png");
  size(400, 500);
  Px = width/2;
  Py = 300;
  Rx = 150;
  Ry = 450;
  RxAncho = 70;
  RyAlto = 15;
  Vx = 4;
  Vy = 4;
  pant = 1;
  vidas = 3;
  puntos = 0;
  Vrx = 0;
  jugar = false;
  fila = new bloque [11];   
  fila[0] = new bloque(5, 250, 1);
  fila[1] = new bloque(40, 250, 1);
  fila[2] = new bloque(75, 250, 1);
  fila[3] = new bloque(110, 250, 1);
  fila[4] = new bloque(145, 250, 1);
  fila[5] = new bloque(180, 250, 1);
  fila[6] = new bloque(215, 250, 1);
  fila[7] = new bloque(250, 250, 1);
  fila[8] = new bloque(285, 250, 1);
  fila[9] = new bloque(320, 250, 1);
  fila[10] = new bloque(355, 250, 1);
  fila2 = new bloque [11];   
  fila2[0] = new bloque(5, 235, 2);
  fila2[1] = new bloque(40, 235, 2);
  fila2[2] = new bloque(75, 235, 2);
  fila2[3] = new bloque(110, 235, 2);
  fila2[4] = new bloque(145, 235, 2);
  fila2[5] = new bloque(180, 235, 2);
  fila2[6] = new bloque(215, 235, 2);
  fila2[7] = new bloque(250, 235, 2);
  fila2[8] = new bloque(285, 235, 2);
  fila2[9] = new bloque(320, 235, 2);
  fila2[10] = new bloque(355, 235, 2);
  fila3 = new bloque [11];   
  fila3[0] = new bloque(5, 220, 3);
  fila3[1] = new bloque(40, 220, 3);
  fila3[2] = new bloque(75, 220, 3);
  fila3[3] = new bloque(110, 220, 3);
  fila3[4] = new bloque(145, 220, 3);
  fila3[5] = new bloque(180, 220, 3);
  fila3[6] = new bloque(215, 220, 3);
  fila3[7] = new bloque(250, 220, 3);
  fila3[8] = new bloque(285, 220, 3);
  fila3[9] = new bloque(320, 220, 3);
  fila3[10] = new bloque(355, 220, 3);
  fila4 = new bloque [11];   
  fila4[0] = new bloque(5, 205, 4);
  fila4[1] = new bloque(40, 205, 4);
  fila4[2] = new bloque(75, 205, 4);
  fila4[3] = new bloque(110, 205, 4);
  fila4[4] = new bloque(145, 205, 4);
  fila4[5] = new bloque(180, 205, 4);
  fila4[6] = new bloque(215, 205, 4);
  fila4[7] = new bloque(250, 205, 4);
  fila4[8] = new bloque(285, 205, 4);
  fila4[9] = new bloque(320, 205, 4);
  fila4[10] = new bloque(355, 205, 4);
  fila5 = new bloque [11];   
  fila5[0] = new bloque(5, 190, 5);
  fila5[1] = new bloque(40, 190, 5);
  fila5[2] = new bloque(75, 190, 5);
  fila5[3] = new bloque(110, 190, 5);
  fila5[4] = new bloque(145, 190, 5);
  fila5[5] = new bloque(180, 190, 5);
  fila5[6] = new bloque(215, 190, 5);
  fila5[7] = new bloque(250, 190, 5);
  fila5[8] = new bloque(285, 190, 5);
  fila5[9] = new bloque(320, 190, 5);
  fila5[10] = new bloque(355, 190, 5);
  fila6 = new bloque [11];   
  fila6[0] = new bloque(5, 175, 6);
  fila6[1] = new bloque(40, 175, 6);
  fila6[2] = new bloque(75, 175, 6);
  fila6[3] = new bloque(110, 175, 6);
  fila6[4] = new bloque(145, 175, 6);
  fila6[5] = new bloque(180, 175, 6);
  fila6[6] = new bloque(215, 175, 6);
  fila6[7] = new bloque(250, 175, 6);
  fila6[8] = new bloque(285, 175, 6);
  fila6[9] = new bloque(320, 175, 6);
  fila6[10] = new bloque(355, 175, 6);
  fila7 = new bloque [11];   
  fila7[0] = new bloque(5, 160, 7);
  fila7[1] = new bloque(40, 160, 7);
  fila7[2] = new bloque(75, 160, 7);
  fila7[3] = new bloque(110, 160, 7);
  fila7[4] = new bloque(145, 160, 7);
  fila7[5] = new bloque(180, 160, 7);
  fila7[6] = new bloque(215, 160, 7);
  fila7[7] = new bloque(250, 160, 7);
  fila7[8] = new bloque(285, 160, 7);
  fila7[9] = new bloque(320, 160, 7);
  fila7[10] = new bloque(355, 160, 7);
}
void reinicio() {
  fila = new bloque [11];   
  fila[0] = new bloque(5, 250, 1);
  fila[1] = new bloque(40, 250, 1);
  fila[2] = new bloque(75, 250, 1);
  fila[3] = new bloque(110, 250, 1);
  fila[4] = new bloque(145, 250, 1);
  fila[5] = new bloque(180, 250, 1);
  fila[6] = new bloque(215, 250, 1);
  fila[7] = new bloque(250, 250, 1);
  fila[8] = new bloque(285, 250, 1);
  fila[9] = new bloque(320, 250, 1);
  fila[10] = new bloque(355, 250, 1);
  fila2 = new bloque [11];   
  fila2[0] = new bloque(5, 235, 2);
  fila2[1] = new bloque(40, 235, 2);
  fila2[2] = new bloque(75, 235, 2);
  fila2[3] = new bloque(110, 235, 2);
  fila2[4] = new bloque(145, 235, 2);
  fila2[5] = new bloque(180, 235, 2);
  fila2[6] = new bloque(215, 235, 2);
  fila2[7] = new bloque(250, 235, 2);
  fila2[8] = new bloque(285, 235, 2);
  fila2[9] = new bloque(320, 235, 2);
  fila2[10] = new bloque(355, 235, 2);
  fila3 = new bloque [11];   
  fila3[0] = new bloque(5, 220, 3);
  fila3[1] = new bloque(40, 220, 3);
  fila3[2] = new bloque(75, 220, 3);
  fila3[3] = new bloque(110, 220, 3);
  fila3[4] = new bloque(145, 220, 3);
  fila3[5] = new bloque(180, 220, 3);
  fila3[6] = new bloque(215, 220, 3);
  fila3[7] = new bloque(250, 220, 3);
  fila3[8] = new bloque(285, 220, 3);
  fila3[9] = new bloque(320, 220, 3);
  fila3[10] = new bloque(355, 220, 3);
  fila4 = new bloque [11];   
  fila4[0] = new bloque(5, 205, 4);
  fila4[1] = new bloque(40, 205, 4);
  fila4[2] = new bloque(75, 205, 4);
  fila4[3] = new bloque(110, 205, 4);
  fila4[4] = new bloque(145, 205, 4);
  fila4[5] = new bloque(180, 205, 4);
  fila4[6] = new bloque(215, 205, 4);
  fila4[7] = new bloque(250, 205, 4);
  fila4[8] = new bloque(285, 205, 4);
  fila4[9] = new bloque(320, 205, 4);
  fila4[10] = new bloque(355, 205, 4);
  fila5 = new bloque [11];   
  fila5[0] = new bloque(5, 190, 5);
  fila5[1] = new bloque(40, 190, 5);
  fila5[2] = new bloque(75, 190, 5);
  fila5[3] = new bloque(110, 190, 5);
  fila5[4] = new bloque(145, 190, 5);
  fila5[5] = new bloque(180, 190, 5);
  fila5[6] = new bloque(215, 190, 5);
  fila5[7] = new bloque(250, 190, 5);
  fila5[8] = new bloque(285, 190, 5);
  fila5[9] = new bloque(320, 190, 5);
  fila5[10] = new bloque(355, 190, 5);
  fila6 = new bloque [11];   
  fila6[0] = new bloque(5, 175, 6);
  fila6[1] = new bloque(40, 175, 6);
  fila6[2] = new bloque(75, 175, 6);
  fila6[3] = new bloque(110, 175, 6);
  fila6[4] = new bloque(145, 175, 6);
  fila6[5] = new bloque(180, 175, 6);
  fila6[6] = new bloque(215, 175, 6);
  fila6[7] = new bloque(250, 175, 6);
  fila6[8] = new bloque(285, 175, 6);
  fila6[9] = new bloque(320, 175, 6);
  fila6[10] = new bloque(355, 175, 6);
  fila7 = new bloque [11];   
  fila7[0] = new bloque(5, 160, 7);
  fila7[1] = new bloque(40, 160, 7);
  fila7[2] = new bloque(75, 160, 7);
  fila7[3] = new bloque(110, 160, 7);
  fila7[4] = new bloque(145, 160, 7);
  fila7[5] = new bloque(180, 160, 7);
  fila7[6] = new bloque(215, 160, 7);
  fila7[7] = new bloque(250, 160, 7);
  fila7[8] = new bloque(285, 160, 7);
  fila7[9] = new bloque(320, 160, 7);
  fila7[10] = new bloque(355, 160, 7);
  jugar = false;
  if (Vx < 0)
    Vx = Vx * -1;
  if (Vy < 0)
    Vy = Vy * -1;
  puntos = 0;
  Px = width/2;
  Py = 300;
  Rx = 150;
  RxAncho = 70;
  Ry = 450;
  RyAlto = 15;
  Vrx = 0;
}
void colision(float Rx, float RxAncho, float Px, float Py, float Ry) {
  if (Px >= (Rx - 8) && Px <= (Rx + RxAncho + 8) && Py > Ry && Py < Ry + 15)
    Vy = Vy * -1;
}
void creditos() {
  background(150);
  stroke(150, 150, 0);
  strokeWeight(4);
  fill(0);
  rect(0, 30, 400, 470);
  fill(255);
  textSize(30);
  text("Hecho por: \n Luciano Testa \n \n Profesor a cargo: \n Matias Jauregui Lorda", width/2, 160);
}
void draw() { 
  background(150);
  stroke(150, 150, 0);
  strokeWeight(4);
  fill(0);
  rect(0, 30, 400, 470);
  image(logo,25,45,350,170);
  fill(255);
  textSize(22);
  textAlign(CENTER);
  text("Presione < y > para mover el palo \n Destruya todos los bloques \n para ganar \n \n \n Presione ^ para comenzar", width/2, height/2);
  if (keyCode == UP)
    pant = 2;
  if (pant == 2) {
    background(150);
    stroke(150, 150, 0);
    strokeWeight(4);
    fill(0);
    rect(0, 30, 400, 470);
    fill(255, 255, 0);
    noStroke();
    ellipse(Px, Py, 15, 15);
    if (vidas > 2)
      ellipse(50, 15, 15, 15);
    if (vidas > 1)
      ellipse (30, 15, 15, 15);
    if (vidas > 0)
      ellipse(10, 15, 15, 15);
    fill(255, 0, 0);
    rect(Rx, Ry, RxAncho, RyAlto);
    fill(255);
    textAlign(CENTER);
    textSize(20);
    text(puntos, 195, 20);
    if (jugar) {
      Px = Px + Vx;
      Py = Py + Vy;
    }
    if (keyPressed) {
      if (keyCode == LEFT || keyCode == RIGHT)
        jugar = true;
      Vrx = 6;
    }
    if (keyPressed) {
      if (keyCode == LEFT) {
        if (Rx > 6) {
          Rx = Rx - Vrx;
        }
      }
      if (keyCode == RIGHT) {
        if (Rx + RxAncho < width - 8)
          Rx = Rx + Vrx;
      }
    }
    for (int i = 0; i < fila.length; i++) {
      if (fila[i]!= null) {
        fila[i].mostrar();
        if (fila[i].colision(Px, Py)) {
          Vy = Vy * -1;
          puntos = puntos + 100;
          pts = ""+ nf(puntos, 4);
          if (fila[i].toque == 0)
            fila[i] = null;
        }
      }
    }
    for (int i = 0; i < fila2.length; i++) {
      if (fila2[i]!= null) {
        fila2[i].mostrar();
        if (fila2[i].colision(Px, Py)) {
          Vy = Vy * -1;
          puntos = puntos + 100;
          pts = ""+ nf(puntos, 4);
          if (fila2[i].toque == 0)
            fila2[i] = null;
        }
      }
    }
    for (int i = 0; i < fila3.length; i++) {
      if (fila3[i]!= null) {
        fila3[i].mostrar();
        if (fila3[i].colision(Px, Py)) {
          Vy = Vy * -1;
          puntos = puntos + 100;
          pts = ""+ nf(puntos, 4);
          if (fila3[i].toque == 0)
            fila3[i] = null;
        }
      }
    }
    for (int i = 0; i < fila4.length; i++) {
      if (fila4[i]!= null) {
        fila4[i].mostrar();
        if (fila4[i].colision(Px, Py)) {
          Vy = Vy * -1;
          puntos = puntos + 100;
          pts = ""+ nf(puntos, 4);
          if (fila4[i].toque == 0)
            fila4[i] = null;
        }
      }
    }
    for (int i = 0; i < fila5.length; i++) {
      if (fila5[i]!= null) {
        fila5[i].mostrar();
        if (fila5[i].colision(Px, Py)) {
          Vy = Vy * -1;
          puntos = puntos + 100;
          pts = ""+ nf(puntos, 4);
          if (fila5[i].toque == 0)
            fila5[i] = null;
        }
      }
    }
    for (int i = 0; i < fila6.length; i++) {
      if (fila6[i]!= null) {
        fila6[i].mostrar();
        if (fila6[i].colision(Px, Py)) {
          Vy = Vy * -1;
          puntos = puntos + 100;
          pts = ""+ nf(puntos, 4);
          if (fila6[i].toque == 0)
            fila6[i] = null;
        }
      }
    }
    for (int i = 0; i < fila7.length; i++) {
      if (fila7[i]!= null) {
        fila7[i].mostrar();
        if (fila7[i].colision(Px, Py)) {
          Vy = Vy * -1;
          puntos = puntos + 100;
          pts = ""+ nf(puntos, 4);
          if (fila7[i].toque < 1 )
            fila7[i] = null;
        }
      }
    }
    colision(Rx, RxAncho, Px, Py, Ry);
    if (Py < 40)
      Vy = Vy * -1;
    if (Px < 5 )
      Vx = Vx * -1;
    if (Px > (width - 5))
      Vx = Vx * -1;
    if (Py > height) {
      vidas = vidas - 1;
      Px = width/2;
      Py = 300;
    }
    if (puntos == 30800) {
      jugar = false;
      background(150);
      stroke(150, 150, 0);
      strokeWeight(4);
      fill(0);
      rect(0, 30, 400, 470);
      image(win, 10, 100);
      fill(255);
      textSize(20);
      text("Mantenga mouse1 para creditos \n Presione mouse2 para jugar de vuelta", width/2, 350);
      if (mousePressed == true && (mouseButton == LEFT)) {
        creditos();
      }
      if (mousePressed == true && (mouseButton == RIGHT)) {
        reinicio();
        vidas = 3;
        draw();
      }
    }
    if (vidas < 1) {
      jugar = false;
      background(150);
      stroke(150, 150, 0);
      strokeWeight(4);
      fill(0);
      rect(0, 30, 400, 470);
      image(lose, 55, 50);
      fill(255);
      textSize(20);
      text("Mantenga mouse1 para creditos \n Presione mouse2 para jugar de vuelta", width/2, 350);
      if (mousePressed == true && (mouseButton == LEFT))
        creditos();
      if (mousePressed == true && (mouseButton == RIGHT)) {
        reinicio();
        vidas = 3;
        draw();
      }
    }
  }
}
