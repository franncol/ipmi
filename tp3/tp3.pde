// Colapaolo Franco Daniel
// Comisión 5
// https://www.youtube.com/watch?v=BLeHDHbSZ68
PImage img;
float x, y, w, h;
color colorActual = color(0);
int contadorColor = 0, tiempoEjecutado = 0;
boolean agrandar = true;
void setup() {
  size(800, 400);
  img = loadImage("tp3imagen.png");
}

void draw() {
  background(255);         
  image(img, 0, 0, 400, 400);  
  noStroke();
  if (agrandar == false && millis() - tiempoEjecutado > 1000) {  //reseteo el tamaño
    agrandar = true;
  }

columnas1(405, 58, 21, 32, 64, 35);    //en cada funcion paso (x, y, w, h, espacio entre elipses de misma columna, espacio entre columnas)
  columnas1(425, 24, 21, 32, 64, 35);
columnas1(510, 58, 18, 32, 64, 28);
  columnas1(525, 24, 18, 32, 64, 28);
columnas1(593, 58, 10, 32, 64, 20);
  columnas1(602, 24, 10, 32, 64, 20);
columnas1(650, 58, 5, 32, 64, 10);
  columnas1(655, 24, 5, 32, 64, 10);
//columnas del centro
columnasChicas(681, 24, 2, 30, 64);
   columnasChicas(679, 58, 2, 30, 64);
columnasChicas(686, 24, 2, 30, 64);
   columnasChicas(684, 58, 2, 30, 64);
//las que le siguen
columnasChicas(695, 24, 4, 30, 64);
   columnasChicas(691, 58, 4, 30, 64);
columnasChicas(710, 24, 8, 30, 64);
   columnasChicas(702, 58, 8, 30, 64);   
columnas1(720, 58, 18, 32, 64, 28);
  columnas1(732, 24, 18, 32, 64, 28);
}

void mousePressed() {
  contadorColor++;  // cambia de color por click
  if (contadorColor == 1) {
    colorActual = color(40, 40, 40);
  } else if (contadorColor == 2) {
    colorActual = color(65, 70, 85);
  } else if (contadorColor == 3) {
    colorActual = color(90, 100, 120);
  } else if (contadorColor == 4) {
    colorActual = color(110, 125, 150);
  } else if (contadorColor == 5) {
    colorActual = color(120, 140, 180);
  } else if (contadorColor == 6) {
    colorActual = color(100, 120, 210);
  } else if (contadorColor == 7) {
    colorActual = color(80, 100, 230);
  } 
 } 

void keyPressed() {
  if (key == 'r' || key == 'R') {
    contadorColor = 0;
    colorActual = color(0);  // vuelve a negro
    agrandar = false; 
    tiempoEjecutado = millis(); 
}
}
