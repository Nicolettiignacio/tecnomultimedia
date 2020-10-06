class Contador {
  int X,  y, contador;

 Contador(int p_X ,int  p_y,int p_contador) {

    this.X        = p_X;
    this.y        = p_y;
    this.contador = p_contador;
  }
  void dibujar() {
    fill(255, 0, 0);
    text("Contador:"+ this.contador, this.X, this.y);
  }
}
