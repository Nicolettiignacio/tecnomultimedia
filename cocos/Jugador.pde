class Jugador {
  int posX, posY, tamX, tamY;
  color color1;

  Jugador(int p_posX, int p_posY, int p_tamX, int p_tamY, color p_color1) {
    this.posX   = p_posX;
    this.posY   = p_posY;
    this.tamX   = p_tamX; 
    this.tamY   = p_tamY;
    this.color1 = p_color1;
  }
  void dibujar() {
    fill(this.color1);
    rect(this.posX, this.posY, this.tamX, this.tamY);
   
  
}
 
}
