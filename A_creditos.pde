class Creditos {
  PImage imagen;
  String texto;
  int posXI, posYI, posYT;

  Escala escala;
  
  Creditos(  PImage p_imagen, String p_texto, Escala escala) {
    this.escala=escala;

    imagen=p_imagen;
    texto=p_texto;

    posXI=0;               //posX de img
    posYI=0;

    posYT=escala.escY(805);
  }


  void dibujar() {
    image(imagen, posXI, posYI, width, height);
    fill(0);
    text(texto, escala.escX(300), escala.escY(posYT));

    if (posYT==-100) { //movimiento
      posYT=escala.escY(800);
    } else {
      posYT=posYT-1;
    }
  }
}
