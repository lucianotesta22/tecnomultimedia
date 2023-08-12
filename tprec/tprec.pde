https://youtu.be/UnS67MbyikI
float angle;
float ang;
PImage ilusion;
boolean estado;

void setup() {
  estado = false;
  ilusion = loadImage("ilusion optica.png");
  size(800,400);
  background(4,50,110);
  fill(0);
  textAlign(CENTER);
  textSize(20);
  text("Presione y mantenga el boton \n para comenzar",width/2,height/2);
  ellipse(280,300,60,60);
  fill(0,15,30);
}

void draw(){
 checkeo();
  if(estado == true){
  background(4,50,110);
  float x = width;
  float dia = 100;
  int num = 110;
 
 translate(600, height/2);
 for  (float a=0; a<360; a+=45){
   rotate(radians(a));
   pushMatrix();
   for (int i=0; i<num; i++){
     scale(0.95);
     rotate(radians(angle));
     ellipse(x,0, dia, dia);
   }
   popMatrix();
 }
     angle+=0.05;
     println(angle);
 for  (float b=360; b>0; b-=45){
   rotate(radians(b));
   pushMatrix();
   for (int p=0; p<num; p++){
     scale(0.95);
     rotate(radians(ang));
     ellipse(x,0, dia, dia);
   }
   popMatrix();
 }
translate(-600,-height/2);
image(ilusion,0,0,400,400);
      ang-=0.05;
     println(ang);
  }
  else{
    reinicio();
  }
}

void checkeo(){
 if (mousePressed && dist(mouseX,mouseY,400,250)< 5){
   estado = true;
 }
 else{
  estado = false;
 }
 
}

void reinicio(){
    background(255);
    text("Presione y mantenga el boton \n para comenzar",width/2,height/2);
    ellipse(400,250,10,10);
    angle = 0;
    ang = 0;
}
