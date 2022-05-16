PImage D1,D2,D3,D4,D5;
PFont font;
int screen = 0;
float texto=30;

void setup(){
  size(900,480);  
  font = loadFont("Constantia-60.vlw");
  textFont(font);
  textAlign(CENTER);
  D1 = loadImage("D2.jpg");
  D2 = loadImage("D1.jpg");
  D3 = loadImage("D3.jpg");
  D4 = loadImage("D4.jpg");
  D5 = loadImage("D5.jpg");
}
void draw(){
  fill(0);
   if(texto>25 && screen<=4){
    texto-=0.02; 
  }
  else{
    texto=30;
  }
  if(texto<25 && screen < 7){
    screen++;
  }
  textSize(texto);
   //Pantalla 1  
  if(screen == 0 && texto>25){
    //Imagen de fondo
    image(D1,0,0,width,height);  
  }  
  //Pantalla 2
  if(screen==1 && texto > 25){
     image(D2,0,0,width,height);
     text("Nolan North\n as\n Cayde-6",450,350);
     text("Lance Reddick\n as\n Zavala",640,300);
     text("Gina Torres \n as \n Ikora Rey",250,300);
  }
  if(screen==2 && texto > 25){
     image(D3,0,0,width,height);
     text("Morla Gorrondona\n as \n Eris Morn",750,220);
  }
  if(screen==3 && texto > 25){
     image(D4,0,0,width,height);
     text("Music by: \n Michael Salvatori",200,300);
  }
  if(screen==4 && texto > 25){
     image(D5,0,0,width,height);
     text("Directed by: \n Luke Smith \n Christopher Barrett \n Ryan Ellis",200,130);     
  }
  if(screen==5 && texto > 25){
    screen = 0;
  }
}
