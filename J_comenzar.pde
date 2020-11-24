class Comenzar {
  int  posX, posY;

  Comenzar() {
    posX=width;
    posY=height;
  }

  void dibujar() {
    background(225, 230, 0);
    fill(0);
    textSize(20);
    text("presiona enter para comenzar.\n\nDebes recoletar los materiales sin que el lobo te toque \no que termine el tiempo.\n¡Cuidado! El lobo despliega sus brazos para atraparte. ", posX/4, posY/2);
  }
  
  void arranque() {
    if (keyCode==ENTER) {
      background(255);
      control.estadoJ=0;
    }
  }
}
