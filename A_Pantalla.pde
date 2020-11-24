class Pantalla {
  int posXI, posYI, posXT, posYT; 

  PImage imagen;
  String texto;
  color Color;


  Escala escala;
  Pantalla(PImage p_imagen, String p_texto, color p_Color, Escala escala) {

    posXI=0;                //posX de img
    posYI=0;                //posY de img
    posXT=escala.escX(50);  //pos X de los textos
    posYT=escala.escY(100); //posY de los textos

    imagen=p_imagen;
    texto=p_texto;
    Color=p_Color;


    this.escala=escala;
  }

  void dibujar() {
    image(imagen, posXI, posYI, width, height);
    fill(Color);
    text(texto, posXT, posYT);
  }
}
