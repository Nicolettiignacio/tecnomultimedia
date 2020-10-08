void mouseClicked() {
  if ((pantalla==0||pantalla==1||pantalla==7||pantalla==10||pantalla==9||pantalla==11||pantalla==12)) {
    if ( (mouseX>=(width/2)+300)&&(mouseX<=(width/2)+360)&&(mouseY>=(height/2)+250)&&(mouseY<=(height/2)+280)) {
      pantalla=pantalla+1;
      background(255);
    }
  }
  if (pantalla==3||pantalla==4||pantalla==5||pantalla== 6) {
    if ( (mouseX>=(width/2)+300)&&(mouseX<=(width/2)+360)&&(mouseY>=(height/2)+250)&&(mouseY<=(height/2)+280)) {
      pantalla=pantalla+2;
      background(255);
    }
  }
  if (pantalla==13) {
    pantalla=0;
    background(255);
  }
}


void keyPressed() {
  if (pantalla==2||pantalla==8) {
    if (key == 'A') {
      pantalla=pantalla+1;
      background(255);
    }
  }
  if (pantalla==2||pantalla==8 ) { 
    if (key == 'B') {
      pantalla=pantalla+2;
      background(255);
    }
  }
  if (pantalla==0) {
    if (key == 'C') {
      pantalla=12;
      background(255);
    }
  }
}
