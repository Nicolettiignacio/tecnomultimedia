class Enemigos {
  int posX, posY, ancho, alto;
  
  Enemigos(int P_posX, int P_posY, int P_ancho, int P_alto) {
    this.posX  = P_posX;
    this.posY  = P_posY;
    this.ancho = P_ancho;
    this.alto  = P_alto;
  }
  void dibujar() {
    fill(255, 0, 0);
    ellipse(this.posX, this.posY, this.ancho, this.alto);  //enemigos
  }
}
