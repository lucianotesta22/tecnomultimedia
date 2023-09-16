
//pelota
var pelotaX;
var pelotaY;
var pelotaW = 10;
var pelotaH = 10;
var pelotaVelX = 2;
var pelotaVelY = 2;

//boton
var cuadX;
var cuadY;

//palo
var paloX;
var paloY;
var paloVel = 5;

//vidas
var vidas = 3;
//pantallas
var pant = 0;

//puntaje
 var puntaje = 0;


function setup(){
 cuadX = 300;
 cuadY = 450;
 textAlign(CENTER);
 createCanvas(600,600);
 rectMode(CENTER);
 pelotaX = width/2;
 pelotaY = height - 100;
 paloX = width/2;
 paloY = height - 50;
}

function draw(){
 keyPressed(); 
 background(0);
 fill(255);
 if(pant == 0){
  textSize(90);
  text("PONG",width/2,height/2);
  textSize(15);
  text("Hecho por Luciano Testa",width/2,330);
  textSize(35);
  text("Presione mouse para empezar",width/2,450);
 
 }
 if(pant == 1){
  background(0);
  text("Presione 'a' y 'd' para mover el palo. \n Llegue a 10 puntos para ganar. \n Una vez que la pelota rebote en el palo, \n la pelota ira mas rapido.",width/2,150)
  textSize(30);
  text("Cuando este listo presione  \n boton para comenzar",width/2,370);
  rect(cuadX,cuadY,20,20);
 }
 if(pant == 2){
 rect(pelotaX,pelotaY,pelotaW,pelotaH);
 rect(paloX,paloY,150,15);
 pelotaX = pelotaX + pelotaVelX;
 pelotaY = pelotaY - pelotaVelY; 
 colisiones();
 displayVidas();
 textSize(30);
 text("Puntaje:",510,30);
 text(puntaje,580,30);
 if(puntaje == 10){
  pant = 4;
 }
 }
 if(pant == 3){
  textSize(40);
  text("Has Perdido",width/2,70);
  textSize(35);
  text("Juego originalmente creado por: \n Allan Alcorn \n Profesor de la materia: \n David Bedoian",width/2,150);
  textSize(30);
  text("Presione el boton para \n volver al inicio",width/2,370);
  rect(cuadX,cuadY,20,20);
  reinicioVidasyPunt();
 }
 if(pant == 4){
  textSize(40);
  text("Has Ganado",width/2,70);
  textSize(35);
  text("Juego originalmente creado por: \n Allan Alcorn \n Profesor de la materia: \n David Bedoian",width/2,150);
  textSize(30);
  text("Presione el boton para \n volver al inicio",width/2,370);
  rect(cuadX,cuadY,20,20);
  reinicioVidasyPunt();
 }
}

//mover palo
function keyPressed(){
  if(key == 'a' && keyIsPressed){
   paloX = paloX - paloVel;
  }
 else if( key == 'd' && keyIsPressed){
  paloX = paloX + paloVel;
 }
}

function colisiones(){
 if(pelotaX >= width){
  pelotaVelX = pelotaVelX * -1;
 }
 if(pelotaX <= 0){
  pelotaVelX = pelotaVelX * -1;
 }
 if(pelotaY <= 0){
  pelotaVelY = pelotaVelY * -1;
 }
 if(pelotaY >= height){
  vidas--;
  reinicio();
 }
 if(pelotaX >= (paloX - 75) && pelotaX <= (paloX + 75) && pelotaY >= (paloY - 7.5)){
  pelotaVelY = pelotaVelY * -1;
  puntaje++;
  if(pelotaVelX > 0){
  pelotaVelX+=2;
  }
  if(pelotaVelY < 0){
   pelotaVelY-=2;
  }
  if(pelotaVelX < 0){
   pelotaVelX-=2;
  }
  if(pelotaVelY > 0){
   pelotaVelY+=2;
  }
}
}
function mousePressed(){
 if(mousePressed && pant == 0){
  pant++;
 }
 if(mousePressed && pant == 1 && mouseX >= (cuadX - 10) && mouseX <= (cuadX + 10) && mouseY >= (cuadY - 10) && mouseY <= (cuadY + 10)){
  pant++;
 }
 if(mousePressed && pant == 3 && mouseX >= (cuadX - 10) && mouseX <= (cuadX + 10) && mouseY >= (cuadY - 10) && mouseY <= (cuadY + 10)){
  pant = 0;
 }
 if(mousePressed && pant == 4 && mouseX >= (cuadX - 10) && mouseX <= (cuadX + 10) && mouseY >= (cuadY - 10) && mouseY <= (cuadY + 10)){
  pant = 0;
 }
}

function reinicio(){
 pelotaX = width/2;
 pelotaY = 500;
 if(pelotaVelY < 0){
  pelotaVelY = pelotaVelY * -1;
 }
}
function displayVidas(){
 if(vidas == 3){
  rect(10,10,10,10);
  rect(30,10,10,10);
  rect(50,10,10,10);
 }
 if(vidas == 2){
 rect(10,10,10,10);
 rect(30,10,10,10);
 }
 if(vidas == 1){
 rect(10,10,10,10);
 }
  if(vidas == 0){
   pant++;
 }
}
function reinicioVidasyPunt(){
  puntaje = 0;
  vidas = 3;
}
