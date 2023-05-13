PImage D1,D2,D3,D4,D5,D6;
PFont font;
int screen = 0;
int rectx,recty,texty;
float texto=25;

void setup(){
  rectx = 270;
  recty = 240;
  texty = -30;
  size(640,480);  
  font = loadFont("Constantia-60.vlw");
  textFont(font);
  textAlign(CENTER);
  D1 = loadImage("D2.jpg");
  D2 = loadImage("D1.jpg");
  D3 = loadImage("D3.png");
  D4 = loadImage("D4.jpg");
  D5 = loadImage("D5.jpg");
  D6 = loadImage("D6.png");
}
void draw(){
  fill(0);
   if(texto>20 && screen<=4 && screen>=1){
    texto-=0.02;
  }
  else{
    texto=30;
  }
  if(texto<20 && screen < 7){
    screen++;
  }
  textSize(texto);
   //Pantalla 1  
  if(screen == 0 && texto>20){
    //Imagen de fondo
    image(D1,0,0,width,height);
    fill(255);
    rect(160,80,330,290);
    fill(0);
    textSize(20);
    text("Everydays - The 5000 days journey:\n \n Presione botón para empezar", 323,150);
    fill(150);
    rect(rectx,recty,100,60);
    fill(0);
  }  
  //Pantalla 2
  if(screen==1 && texto > 20){
     image(D2,0,0,width,height);
     fill(255);
     text("Beeple fue una obra creada por Mike Winklemann \n y consiste de sus obras llamadas 'everydays' ",330,140);
  }
  if(screen==2 && texto > 20){
     image(D3,0,0,width,height);
     fill(255);
     text("Esta obra rompió records al ser \n vendida por 70 millones de dólares en el mercado",320,130);
  }
  if(screen==3 && texto > 20){
     image(D4,0,0,width,height);
     fill(255);
     text("La obra fue vendida como un NFT o NonFundible Token. \n Las NFTs señalan propiedad y autenticidad \n de obras de arte digital grabando la venta \n a travéz de tecnología de blockchain.",320,130);
  }
  if(screen==4 && texto > 20){
     image(D5,0,0,width,height);
     fill(255);
     text("El creador siempre utiliza estos 'Everydays' para aprender \n diferentes motores y poder volverse más adepto \n y mejorar sus trabajos en el futuro. \n el creador sigue haciendo estos 'Everydays' y está preparando \n su siguiente obra. ",320,130);     
  }
  if(screen==5){
    image(D6,0,0,width,height);
    fill(255);
    rect(160,80,330,290);
    fill(0);
    textSize(19);
    text("Llegó al final de la presentación \n \n Presione el botón para volver al inicio",325,150);
    fill(140);
    rect(rectx,recty,100,60);
  }
}

void mousePressed(){
 if(mousePressed == true){
  if(mouseX >= rectx && mouseX <= (rectx + 100) && mouseY >= recty && mouseY <= (recty + 60) && screen == 0){
  screen = 4;}
  else if (mouseX >= rectx && mouseX <= (rectx + 100) && mouseY >= recty && mouseY <= (recty + 60) && screen == 5){
   screen = 0;}
 }
}
