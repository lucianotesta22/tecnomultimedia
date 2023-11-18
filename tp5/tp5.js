let obs = new Obstaculo (100,30,15);
let start = new Juego (20,3);
let player = new Globo (50,80,30);
let photo
let tormenta
let nube
let x = 700;
let y = 350;
let y2 = 400;
let pantalla = 0;

function preload(){
 photo = loadImage('data/Globo.png');
 tormenta = loadImage('data/storm.jpg');
 nube = loadImage('data/nube.jpg');
}

function setup() {
  textAlign(CENTER);
  createCanvas(700,700);
}


function draw() {
  
  if(pantalla == 0){
   background(0);
   fill(255);
   textAlign(CENTER);
   textSize(30);
   text("Esquive las nubes por 20 segundos \n para ganar \n \n Presione 'W' para ascender y 'S' para descender \n \n Presione el mouse para comenzar",width/2,height/2); 
  }
  
  
  if (pantalla == 1){
    textAlign(CENTER);
   let tiemActual = int (millis() / 1000);
   let limite = start.tiempo;
   let resto = limite - tiemActual;  
    image(tormenta,0,0,width*2,height);
    image(photo,30,y,player.ancho,player.alto);
    image(nube,x,y2,obs.ancho,obs.alto);
   noFill();
   noStroke();
   rect(30,y,player.ancho,player.alto);
   fill(255);
   textSize(40);
   text("Tiempo restante:" + resto , width/2 , 40);
   vidas();
   checkColision();
   movNube();
  if(resto == 0){
    pantalla = 2;
  }
  if(start.vidas == 0){
    pantalla = 3;
   }
}
 if(pantalla == 2) {
   fill(0);
   rect(0,0,width,height);
   fill(255);
   text('ganaste', width/2 ,height/2);
 } 
 if(pantalla == 3){
  fill(0);
  rect(0,0,width,height);
  fill(255);
  text('Perdiste',width/2,height/2);
}
}

function keyPressed(){
   if( keyIsPressed && key == 'w' && y > 10){
    y = y - player.velY;
   }
   if ( keyIsPressed && key == 's' && y < 600){
    y = y + player.velY;
   }
}

function mousePressed(){
 
  if (mousePressed && pantalla == 0){
  pantalla = 1;
 }
}

function vidas(){
 if ( start.vidas == 3){
  rect(10,10,20,20);
  rect(40,10,20,20);
  rect(70,10,20,20);
 }
 if ( start.vidas == 2){
  rect(10,10,20,20);
  rect(40,10,20,20);
 }
 if ( start.vidas == 1){
  rect(10,10,20,20);
 }
}


function movNube(){
   if ( x > 0 ){ 
    x = x - obs.velX;
   }
   else if (x <= 0){
    x = width;
    y2 = random([0],[670]);
   }
}

function checkColision(){
 if( y2 >= y && y2 <= (y + 80) && x < 30){
    x = width;
    y2 = random([0],[670]);
    start.vidas = start.vidas - 1;
 }
}
