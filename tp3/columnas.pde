boolean estaCerca(float mouseX, float xActual, float rango) {        //devuelve V o F si el mouse esta cerca de la elipse
  return (mouseX > xActual - rango) && (mouseX < xActual + rango);
}


void columnas1(float x, float y, float w, float h, float espacio, float colEspacio) {
  fill (colorActual);
  for (int col = 0; col < 3; col++) {
    float xActual = x + col * colEspacio;   
    float wActual = w;
    float hActual = h;
    float tamaño = 1;
    if (estaCerca(mouseX, xActual, 15) && (agrandar)) {
      float distancia = dist(mouseX, 0, xActual, 0);
      tamaño = map(distancia, 0, 20, 1.5, 1);  
  } 
     wActual = w * tamaño;
     hActual = h * tamaño;
    for (int fila = 0; fila < 6; fila++) {
      float yActual = y + fila * espacio;    
      ellipse(xActual, yActual, wActual, hActual);
    }
  }
}


void columnasChicas (float x, float y, float w, float h, float espacio) {  
  fill (colorActual);
  float tamaño = 1;
  if (estaCerca(mouseX, x, 15) && (agrandar)){
    tamaño = map(0, 0, 20, 1.5, 1);
  }
  for (int fila = 0; fila < 6; fila++) {
    float yActual = y + fila * espacio;
    ellipse(x, yActual, w * tamaño, h * tamaño);
  }
  }
