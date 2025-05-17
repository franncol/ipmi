// Colapaolo Franco Daniel
// Comisión 5
PImage img1, img2, img3, img4, img5, img6, img7, img8, img9, img10;
PFont fuente1, fuente2, fuente3, fuente4, fuente5, fuente6;
int contador, opacidad, posX,posX2, posY, posY2;
float tam;
boolean yainicio = false;
void setup() {
  size(640, 480);
  img1 = loadImage("26fc858b-0d05-4166-9004-eb757f0e.png");
  img2 = loadImage("classic-adventures-the-great-gat.png");
  img3 = loadImage("Screenshot-2024-06-05-at-2.01.34.png");  
  img4 = loadImage("allan-bernardo-13392070-13253575.png");
  img5 = loadImage("balbusso_twins_great_gatsby_06.png");
  img6 = loadImage("alicia-zhang-page-1-the-green-li.png");
  img7 = loadImage("icons8-restart-100.png");
  img8 = loadImage("icons8-restart-100 (1).png");
  img9 = loadImage("icons8-circled-play-button-100.png");
  img10 = loadImage("icons8-start-100.png");
  fuente1 = loadFont("Arial-Black-48.vlw");
  fuente2 = loadFont("ArialNarrow-Bold-48.vlw");
  fuente3 = loadFont("BookAntiqua-Bold-48.vlw");
  fuente4 = loadFont("BookmanOldStyle-Bold-48.vlw");
  fuente5 = loadFont("Garamond-Bold-48.vlw");
  fuente6 = loadFont("MonotypeCorsiva-48.vlw");
  contador = 0;
  posX = -200;
  posY = 0;
  posX2 = -10;  
  posY2 = 500;
  tam = 1;
  opacidad = 0;
}


void draw() { 
 background(0,0,0); 
 if (contador == 0){
   image(img1, 0, 0, 640, 480);
   inicio();
    }   
 if ( contador > 0 && contador < 235){     //PANTALLA 1 DESPLAZAMIENTO HACIA DERECHA uso de funciones explicadas clase 15/5
  pantalla1(posX);
  if (posX < 320)
    posX += 4;
  contador++;
  tam = 1;
 }
 else if (contador >= 235 && contador < 465){     //PANTALLA 2 TAMAÑO
  if (tam < 34)
    tam += 0.3;
  pantalla2(tam);
  contador++; 
 }  
  else if (contador >= 465 && contador < 715){     //PANTALLA 3 DESPLAZAMIENTO HACIA ABAJO
  pantalla3(posY);
    if (posY < 240)
      posY= posY + 2;
    contador++; 
    posX2 = -10;
    posY2 = 500;    
 }
else if (contador >= 715 && contador < 1015){     //PANTALLA 4 DESPLAZAMIENTO EN DIAGONAL
   if (posX2 < 320 || posY2 > 240) {
    posX2 += 2;
    posY2 -= 2;  }
  pantalla4(posX2, posY2);
  contador++;
  tam = 100; 
 }
else if (contador >= 1015 && contador < 1315){     //PANTALLA 5 TAMAÑO
  if (tam > 32)
    tam -= 0.5; 
  pantalla5(tam);
  contador++; 
  opacidad=0; 
 }
else if (contador >= 1315){     //PANTALLA 6 FADE
  if (opacidad < 255)
    opacidad += 2;
  pantalla6(opacidad);
  contador++; 
 }
 
if (contador >= 1530)    //BOTON REINICIO
  reiniciar(); 
}


void mouseClicked(){     //INICIAR Y REINICIAR
    if (yainicio == false && mouseX > 247 && mouseX < 397 && mouseY > 170 && mouseY < 320) { 
      yainicio = true; 
      contador++;
     } 
    else if (yainicio == true && mouseX > 80 && mouseX < 130 && mouseY > 390 && mouseY < 440){
      contador = 0;
      posX = -200;
      posY = 0;
      posX2 = -10;  
      posY2 = 500;
      tam = 1;
      opacidad = 0;
      yainicio = false;
     }
}
 


  
  
  
