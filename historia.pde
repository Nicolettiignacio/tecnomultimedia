void historia(int imgX, int imgY, color cHist, int Tam) {
  
  fill(cHist);  
  textFont(narracion, Tam);

  if (pantalla==0) {
    image(imagenes[0], imgX+10, imgY+10 );
    text(textos[15], (width/2)-350, (height/2)+200);
    Boton((width/2)+300, (height/2)+250, color(255, 0, 0));
  }
  if (pantalla==1) {
    image(imagenes[1], imgX, imgY );  
    text(textos[0], (width/2)-370, (height/2)-250);
    Boton((width/2)+300, (height/2)+250, color(255, 0, 0));
  }
  if (pantalla==2) {
    image(imagenes[2], imgX, imgY );
    text(textos[1], (width/2)+50, (height/2)-200);
    text(textos[2], (width/2)+50, (height/2)+100);
  }
  if (pantalla==3) {
    image(imagenes[4], imgX, imgY );
    text(textos[4], (width/2)+125, (height/2)-200);
    Boton((width/2)+300, (height/2)+250, color(255, 0, 0));
  }
  if (pantalla==4) { 
    image(imagenes[3], imgX, imgY );  
    textFont(narracion, 20);
    text(textos[3], width/2, (height/2)-200);
    Boton((width/2)+300, (height/2)+250, color(255, 0, 0));
  }
  if (pantalla==5) {
    image(imagenes[5], imgX, imgY );
    text(textos[5], (width/2)-370, (height/2)-150);
    Boton((width/2)+300, (height/2)+250, color(255, 0, 0));
  }
  if (pantalla==6) {
    image(imagenes[6], imgX, imgY );
    text(textos[6], (width/2)-360, (height/2)-250);
    Boton((width/2)+300, (height/2)+250, color(255, 0, 0));
  }
  if (pantalla==7) {
    image(imagenes[7], imgX, imgY );
    text(textos[7], (width/2)+50, (height/2)-250);
    Boton((width/2)+300, (height/2)+250, color(255, 0, 0));
  }
  if (pantalla==8) {
    image(imagenes[8], imgX, imgY );
    text(textos[8], (width/2)-100, (height/2)-260);
    text(textos[9], (width/2)-225, (height/2)+150);
    text(textos[10], (width/2)-125, (height/2)+250);
  }
  if (pantalla==9) {
    image(imagenes[10], imgX, imgY );
    text( textos[12], (width/2)-100, (height/2)-175);
    Boton((width/2)+300, (height/2)+250, color(255, 0, 0));
  }
  if (pantalla==10) {  
    image(imagenes[9], imgX, imgY );
    text( textos[11], (width/2)-75, (height/2)-200);
    Boton((width/2)+300, (height/2)+250, color(255, 0, 0));
  } 
  if (pantalla==11) {
    image(imagenes[11], imgX, imgY );
    text( textos[13], (width/2)-75, (height/2)-200);
    Boton((width/2)+300, (height/2)+250, color(255, 0, 0));
  }
  if (pantalla==12) {
    image(imagenes[12], imgX, imgY );
    text( textos[14], (width/2)-200, Y);
    Boton((width/2)+300, (height/2)+250, color(255, 0, 0));
    Y=Y-1;
    if (Y==-75) {
      Y=height+550;
    }
  }
}
