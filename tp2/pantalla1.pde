void pantalla1(int posX) {
  image(img1, 0, 0, 640, 480);
  //textAlign(CENTER, BOTTOM);
  if (posX > 320)
    posX = 320;
 textAlign(CENTER, CENTER);
 textFont (fuente1,20);
 text("El gran Gatsby es una novela de 1925 escrita por \n F. Scott Fitzgerald.", posX, 240); 
 
}
