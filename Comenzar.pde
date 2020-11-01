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
    text("presiona enter para comenzar", posX/3, posY/2);
  }
  
  void arranque() {
    if (keyCode==ENTER) {
      background(255);
      juego.estadoJ=0;
    }
  }
}
