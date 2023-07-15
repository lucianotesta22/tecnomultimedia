//https://youtu.be/B5QOaoPA0ZQ
PImage pantallas[] = new PImage [23];
PFont fuente;
int pos,cant,posX1,posX2,posY1,posY2;
void setup(){
  fuente = loadFont("BookAntiqua-Italic-48.vlw");
  textFont(fuente,20);
  size(600,600);
  cant = 23;
  pos = 0;
  textAlign(CENTER);
  textSize(23);
  cargarPantallas();
}
void draw(){
  if(pos == 0){
    posX1 = 135; posX2 = 135;
    posY1 = 350; posY2 = 500;
    textSize(23);
    image(pantallas[pos],0,0,600,600);
    fill(255);
    rect(100,265,70,50);
    rect(100,415,70,50);
    fill(0);
    text("Iniciar",135,300);
    textSize(20);
    text("Créditos",135,450);
    fill(255,0,0);
    ellipse(posX1,posY1,50,50);
    ellipse(posX2,posY2,50,50);
  }
    else if(pos == 1){
     image(pantallas[pos],0,0,600,600);
     posX1 = 150; posX2 = 450;
     posY1 = 400; posY2 = 400;
     fill(255);
     rect(40,20,510,200);
     fill(0);
     textSize(21);
     text("Tu nombre es Phineas Fogg, un famoso explorador, \n debido a un nuevo método de transporte es supuestamente \n posible viajar por el mundo en 80 días, un señor de un \n periódico argumenta tu dicho y te desafía a hacerlo \n por 20 mil dolares y mitad de tu fortuna, tu: \n \n A. Aceptas el desafío   B. Rechazas el desafío",300,47);
     fill(255,0,0);
     ellipse(posX1,posY1,100,100);
     fill(255);
     textSize(70);
     text("A",150,423);
     fill(255,0,0);
     ellipse(posX2,posY2,100,100);
     fill(255);
     text("B",450,423);
    }
    else if(pos == 2){
      posX1 = 400; posX2 = 300;
      posY1 = 450; posY2 = 255;
     image(pantallas[pos],0,0,600,600);
     fill(255);
     rect(40,20,510,180);
     textSize(20);
     fill(0);
     text("Aceptaste el desafío y esta en camino, estas atravesando \n la ciudad en tu auto cuando notas un modo de viaje exótico: \n un globo de aire. Al verlo sientes que quizas puedas viajar \n más rapido en él, tu decides: \n \n A. Seguir manejando   B. Montar el Globo de aire",300,50);
     fill(255,0,0);
     ellipse(posX1,posY1,100,100);
     ellipse(posX2,posY2,100,100);
     fill(0); textSize(70);
     text("B",300,275);
     text("A",400,475);
    }
    else if(pos == 3){
     posX1 = 200; posX2 = 400;
     posY1 = 350; posY2 = 350;
     image(pantallas[pos],0,0,600,600);
     fill(255);
     rect(40,20,510,200);
     fill(0); textSize(20);
     text("Seguiste manejando en tu auto, hasta que notas otro auto \n siguiendoté desde hace mucho tiempo y te sientes sospechoso, \n tú aceleras y el otro auto acelera también. Con esa \n confirmación tu decides:\n \n A. Ir a través de la ciudad para perderlo de vista \n B. Detenerte para saber quien te estaba siguiendo",300,50);
     fill(255,0,0);
     ellipse(posX1,posY1,100,100);
     ellipse(posX2,posY2,100,100);
     fill(0); textSize(70);
     text("A",200,370);
     text("B",400,370);
    }
    else if(pos == 4){
     posX1 = 200; posX2 = 400;
     posY1 = 350; posY2 = 350;
     image(pantallas[pos],0,0,600,600);
      fill(255);
       rect(40,20,510,200);
       fill(0); textSize(20);
        text("Mientras estas disfrutando tu viaje notas unas nubes negras \n a la distancia, te das cuenta de que estas un toque atrasado \n asi que piensas en quizás tomar el riesgo. Tu decides: \n \n A. Ir alrededor de las nubes negras \n B. Arriesgarte y atravesar las nubes negras",300,50);
      fill(255,0,0);
        ellipse(posX1,posY1,100,100);
         ellipse(posX2,posY2,100,100);
             fill(0); textSize(70);
          text("A",200,370);
        text("B",400,370);
   }
    else if(pos == 5){
     posX1 = 200; posX2 = 400;
     posY1 = 350; posY2 = 350;
     image(pantallas[pos],0,0,600,600);
      fill(255);
       rect(40,20,510,200);
       fill(0); textSize(20);
        text("Lograste escapar el vehículo que te persiguía y llegaste \n a un aeropuerto donde miras a este aeroplano y piensas \n adonde ir. Despues de pensar estás entre dos países: \n India o China, cuál de estos países elegirás como tu \n próximo destino: \n \n A. India     B. China",300,50);
      fill(255,0,0);
        ellipse(posX1,posY1,100,100);
         ellipse(posX2,posY2,100,100);
             fill(0); textSize(70);
          text("A",200,370);
        text("B",400,370);
    }
    else if(pos == 6){
     posX1 = 200; posX2 = 400;
     posY1 = 350; posY2 = 350;
     image(pantallas[pos],0,0,600,600);
      fill(255);
       rect(40,20,510,200);
       fill(0); textSize(20);
        text("Te detuviste para saber quien te seguía y resulta ser un \n policía que alguién llamo que siga tu auto que te sospechaba, \n el te pregunta si sabías que estabas yendo por encima de la \n velocidad límite, tu tienes dos opciones:\n \n A. Le mientes sobre la razón por la cúal estabas apresurado. \n B. Le dices la verdadera razón porque tenías que apresurarte",300,50);
      fill(255,0,0);
        ellipse(posX1,posY1,100,100);
         ellipse(posX2,posY2,100,100);
             fill(0); textSize(70);
          text("A",200,370);
        text("B",400,370);
    }
    else if(pos == 7){
     posX1 = 200; posX2 = 400;
     posY1 = 350; posY2 = 350;
     image(pantallas[pos],0,0,600,600);
      fill(255);
       rect(40,20,510,200);
       fill(0); textSize(19);
        text("Has llegado a Mumbai, India donde las calles son \n increiblemente populadas, tu te tomas un momento para \n dejar de estar asombrado de ver las calles y piensas tu \n próximo movimiento, luego de que tomaste un momento \n para pensar llegas a dos opciones: \n A. Tomar otro globo de aire hasta tokyo \n B. Intentar hablar a la gente para quizas tener algo más rápido",300,50);
      fill(255,0,0);
        ellipse(posX1,posY1,100,100);
         ellipse(posX2,posY2,100,100);
             fill(0); textSize(70);
          text("A",200,370);
        text("B",400,370);
    }
    else if(pos == 8){
     posX1 = 200; posX2 = 400;
     posY1 = 350; posY2 = 350;
     image(pantallas[pos],0,0,600,600);
      fill(255);
       rect(40,20,510,200);
       fill(0); textSize(19);
        text("Llegaste a China, y estas en una ciudad llena de gente, \n al atravesar la ciudad notas algo insólito, te han \n robado el pasaporte.  Entras en pánico \n y no sabes que hacer, decides: \n \n A. Comprar un pasaporte en un mercado negro e ir a otro avión \n B. Ir a las autoridades a ver que pueden hacer sobre ello",300,50);
      fill(255,0,0);
        ellipse(posX1,posY1,100,100);
         ellipse(posX2,posY2,100,100);
             fill(0); textSize(70);
          text("A",200,370);
        text("B",400,370);
    }
    else if(pos == 9){
     image(pantallas[pos],0,0,600,600);
     posX1 = 300; posY1 = 300;
      fill(255);
       rect(40,20,510,200);
       fill(0); textSize(19);
        text("Fuiste a la policia a reclamar que perdiste tu pasaporte y \n tienes que llegar a tokyo lo más pronto posible, ellos te escortan \n y te dejan abordar un barco hacia alli, te sientes \n seguro que estas en buenas manos. \n \n Presione el botón para continuar",300,50);
      fill(255,0,0);
      ellipse(posX1,posY1,100,100);
    }
    else if(pos == 10){
     posX1 = 200; posX2 = 400;
     posY1 = 350; posY2 = 350;
     image(pantallas[pos],0,0,600,600);
      fill(255);
       rect(40,20,510,200);
       fill(0); textSize(19);
        text("Al llegar a Tokyo, no puedes gastar tiempo y tienes que \n encontrar un camino a San Francisco, notas que puedes \n tomar un avión en una semana o puedes reservar un \n balon de aire ahora, el cual puede ser más lento que el avión,\n cual de estos decides tomar? \n A.Avión (Esperar una semana) \n B. Tomar el globo de aire ",300,50);
         fill(255,0,0);
          ellipse(posX1,posY1,100,100);
           ellipse(posX2,posY2,100,100);
              fill(0); textSize(70);
          text("A",200,370);
        text("B",400,370);
    }
    else if(pos == 11){
     posX1 = 300; posY1 = 350;
     image(pantallas[pos],0,0,600,600);
      fill(255);
       rect(40,20,510,200);
       fill(0); textSize(20);
        text("Has descubierto que puedes utilizar un tren\n para llegar a Tokyo lo más rapido posible.\n Tu tomas esa oportunidad y abordas el primer tren hacia allí\n \n Presione el botón para continuar.",300,50);
      fill(255,0,0);
        ellipse(posX1,posY1,100,100);
    }
    else if(pos == 12){
     posX1 = 300; posY1 = 350;
     image(pantallas[pos],0,0,600,600);
      fill(255);
       rect(40,20,510,200);
       fill(0); textSize(19);
        text("Has llegado al mercado negro, una vez allí logras \n conseguir un pasaporte a un precio muy barato \n y te vaz en marcha al aeropuerto. Cuando llegas al aeropuerto \n notas que no tienes tanto tiempo y tomas el primer \n vuelo a San Francisco y te sientes optimista. \n \n Presione el botón para continuar.",300,50);
      fill(255,0,0);
        ellipse(posX1,posY1,100,100);
    }
    else if(pos == 13){
    posX1 = 300; posY1 = 350;
     image(pantallas[pos],0,0,600,600);
      fill(255);
       rect(40,20,510,200);
       fill(0); textSize(19);
        text("Tomando el globo de aire te tomas tu tiempo para apreciar \n la vista ya que sabes que va a ser un viaje largo \n \n Presione el botón para continuar.",300,50);
      fill(255,0,0);
        ellipse(posX1,posY1,100,100);
    }
    else if(pos == 14){
     posX1 = 200; posX2 = 400;
     posY1 = 350; posY2 = 350;
     image(pantallas[pos],0,0,600,600);
      fill(255);
       rect(40,20,510,200);
       fill(0); textSize(19);
        text("Al llegar a San Francisco ya tienes decidido tomar un tren \n a Nueva York, sin embargo notas que alguien te esta siguiendo \n y corres por el tren en movimiento con el persiguiendote. \n Tomando en cuenta tus chances de supervivencia decides: \n \n A. Esconderte en un compartimiento del tren \n B. Darte vuelta y pelear cara a cara",300,50);
         fill(255,0,0);
          ellipse(posX1,posY1,100,100);
           ellipse(posX2,posY2,100,100);
              fill(0); textSize(70);
          text("A",200,370);
        text("B",400,370);
    }
    else if(pos == 15){
     posX1 = 200; posX2 = 400;
     posY1 = 350; posY2 = 350;
     image(pantallas[pos],0,0,600,600);
      fill(255);
       rect(40,20,510,200);
       fill(0); textSize(19);
        text("Tras llegar a Nueva York y esquivar tu asaltante, te das \n cuenta que tienes varios días de sobra y te encuentras extático,\n decides tomar un tour de gloria y puedes elegir dos métodos de \n transporte hacia Londres una vez terminada tus celebraciones:\n A.Un barco que puede tomar unos días para celebrar en el camino. \n B. Un Avión para llegar rápido a Londres y celebrar ahí",300,50);
         fill(255,0,0);
          ellipse(posX1,posY1,100,100);
           ellipse(posX2,posY2,100,100);
              fill(0); textSize(70);
          text("A",200,370);
        text("B",400,370); 
    }
     else if(pos == 16){
     posX1 = 300; posY1 = 350;
     image(pantallas[pos],0,0,600,600);
      fill(255);
       rect(40,20,510,200);
        fill(0); textSize(21);
        text("Estas tan emocionado que no esperas \n ni diez minutos en celebrar. \n Celebraste tanto que te desmayaste y te despertaste \n apenas media hora antes de que llegues a Londres \n \n Presione el botón para continuar.",300,50);
       fill(255,0,0);
      ellipse(posX1,posY1,100,100);
    }
     else if(pos == 17){
     posX1 = 290; posY1 = 355;
     image(pantallas[pos],0,0,600,600);
     textSize(22);
     fill(255);
     rect(50,20,500,200);
     rect(225,250,125,50);
     fill(0);
     text("Has decidido rechazar el desafío y te has ido a casa \n pero esa duda aún está en tu cabeza sobre que hubiera \n sucedido si aceptabas el desafío, pero núnca lo sabrás",300,60);
     textSize(30);
     text("Inicio",290,285);
     fill(0,255,0);
     textSize(40);
     text("Final número 1/4",300,180);
     fill(255,0,0);
     ellipse(posX1,posY1,100,100);
     
  }
     else if(pos == 18){
     posX1 = 290; posY1 = 355;
     image(pantallas[pos],0,0,600,600);
      fill(255);
       rect(40,20,510,200);
       rect(225,250,125,50);
       fill(0);
        textSize(30);
        text("Inicio",290,285);
        textSize(20);
        text("Desafortunadamente desastre ataca y uno de los \n truenos atraviesa tu globo y te derrumba hacia el mar, \n donde tu cuerpo es perdido. Quizás debías haber rodeado \n las nubes pero ahora es el fin de tu historia.",300,50);
        fill(255,0,0); textSize(40);
        text("Final número 2/4",300,180);
         fill(255,0,0);
        ellipse(posX1,posY1,100,100);
    }
     else if(pos == 19){
     posX1 = 290; posY1 = 355;
     image(pantallas[pos],0,0,600,600);
      fill(255);
       rect(40,20,510,200);
       rect(225,250,125,50);
       fill(0);
        textSize(30);
        text("Inicio",290,285);
        textSize(20);
        text("El oficial no cree tu historía y te pide que salgas del vehículo,\n te pide que te des vuelta y te esposa las manos. \n tu forcejeas y resistes arresto pero no es suficiente,\n terminas siendo arrestado y tu chance de llegar antes \n de los 80 días desvanece",300,50);
        fill(255,0,0); textSize(40);
        text("Final número 3/5",300,190);
         fill(255,0,0);
        ellipse(posX1,posY1,100,100);
    }
     else if(pos == 20){
     posX1 = 290; posY1 = 355;
     image(pantallas[pos],0,0,600,600);
      fill(255);
       rect(40,20,510,200);
       rect(225,250,125,50);
       fill(0);
        textSize(30);
        text("Inicio",290,285);
        textSize(20);
        text("Intestate tu mejor pero eres derrotado por tu perseguidor,\n eres dejado inconsciente y cuando despiertas estas \n en un hospital días despues del tiempo límite. \n Te quedas decepcionado es tu sala contemplando \ntus decisiones que te llevaron aquí",300,50);
        fill(255,0,0); textSize(40);
        text("Final número 3/5",300,190);
         fill(255,0,0);
        ellipse(posX1,posY1,100,100);
    }
    else if(pos == 21){
     posX1 = 290; posY1 = 355;
     image(pantallas[pos],0,0,600,600);
      fill(255);
       rect(40,20,510,200);
       rect(225,250,125,50);
       fill(0);
        textSize(30);
        text("Inicio",290,285);
        textSize(20);
        text("Lo hiciste,lograste dar la vuelta al mundo en menos de 80 días \n y no te has dado cuenta pero tu historia genero atención \n y tuviste una multitud esperandote, disfruta este momento \n y celebra lo que hiciste, te lo mereces.",300,50);
        fill(0,255,0); textSize(40);
        text("Final número 5/5",300,190);
         fill(255,0,0);
        ellipse(posX1,posY1,100,100);
    }
    else if(pos == 22){
      posX1 = 300; posY1 = 500;
      image(pantallas[pos],0,0,600,600);
      fill(255);
      rect(150,250,300,300);
      fill(0);
      text("Libro hecho por:  Julio Verne \n \n Código hecho por:  Luciano Testa \n \n Profesor:  David Bedoian \n \n Volver al inicio",300,300);
      fill(255,0,0);
      ellipse(posX1,posY1,50,50);
    }
}

void mousePressed(){
 if(dist(mouseX,mouseY,posX1,posY1)<50 && pos < 3){
  pos = pos + 1;
}  
  else if (dist(mouseX,mouseY,posX2,posY2)<50 && pos == 0){
    pos = 22;
  }
  else if (dist(mouseX,mouseY,posX2,posY2)<50 && pos == 2){
    pos = 4;
  }
    else if (dist(mouseX,mouseY,posX1,posY1)<50 && pos == 3){
    pos = 5;
  }
    else if (dist(mouseX,mouseY,posX2,posY2)<50 && pos == 3){
    pos = 6;
  }
    else if (dist(mouseX,mouseY,posX1,posY1)<50 && pos == 4){
    pos = 7;
  }
    else if (dist(mouseX,mouseY,posX2,posY2)<50 && pos == 4){
    pos = 18;
  }
      else if (dist(mouseX,mouseY,posX1,posY1)<50 && pos == 5){
    pos = 7;
  }
    else if (dist(mouseX,mouseY,posX2,posY2)<50 && pos == 5){
    pos = 8;
  }
    else if (dist(mouseX,mouseY,posX1,posY1)<50 && pos == 6){
    pos = 5;
  }
    else if (dist(mouseX,mouseY,posX2,posY2)<50 && pos == 6){
    pos = 19;
  }
      else if (dist(mouseX,mouseY,posX1,posY1)<50 && pos == 7){
    pos = 10;
  }
    else if (dist(mouseX,mouseY,posX2,posY2)<50 && pos == 7){
    pos = 11;
  }
    else if (dist(mouseX,mouseY,posX1,posY1)<50 && pos == 8){
    pos = 12;
  }
    else if (dist(mouseX,mouseY,posX2,posY2)<50 && pos == 8){
    pos = 9;
  }
    else if (dist(mouseX,mouseY,posX1,posY1)<50 && pos == 9){
    pos = 10;
  }
     else if (dist(mouseX,mouseY,posX1,posY1)<50 && pos == 10){
    pos = 14;
  }
    else if (dist(mouseX,mouseY,posX2,posY2)<50 && pos == 10){
    pos = 13;
  }
    else if (dist(mouseX,mouseY,posX1,posY1)<50 && pos == 11){
    pos = 10;
  }
    else if (dist(mouseX,mouseY,posX1,posY1)<50 && pos == 12){
    pos = 14;
  }
    else if (dist(mouseX,mouseY,posX1,posY1)<50 && pos == 13){
    pos = 14;
  }
  else if (dist(mouseX,mouseY,posX1,posY1)<50 && pos == 14){
    pos = 15;
  }
  else if (dist(mouseX,mouseY,posX2,posY2)<50 && pos == 14){
   pos = 20;
  }
  else if (dist(mouseX,mouseY,posX1,posY1)<50 && pos == 15){
   pos = 16;
  }
  else if (dist(mouseX,mouseY,posX2,posY2)<50 && pos == 15){
   pos = 21;
  }
  else if (dist(mouseX,mouseY,posX1,posY1)<50 && pos == 16){
   pos = 21;
  }
  else if (dist(mouseX,mouseY,posX2,posY2)<50 && pos == 1){
    pos = 17;
  }
  else if(dist(mouseX,mouseY,posX1,posY1)<50 && pos == 17){
   pos = 0;
  }
   else if(dist(mouseX,mouseY,posX1,posY1)<50 && pos == 18){
   pos = 0;
  }
   else if(dist(mouseX,mouseY,posX1,posY1)<50 && pos == 19){
   pos = 0;
  }
   else if(dist(mouseX,mouseY,posX1,posY1)<50 && pos == 20){
   pos = 0;
  }
   else if(dist(mouseX,mouseY,posX1,posY1)<50 && pos == 21){
   pos = 0;
  }
    else if(dist(mouseX,mouseY,posX1,posY1)<25 && pos == 22){
   pos = 0;
  }
}

void cargarPantallas(){
  for(int i = 0; i < cant; i++){
   pantallas[i] = loadImage("pantalla"+i+".jpg");
  }
}
