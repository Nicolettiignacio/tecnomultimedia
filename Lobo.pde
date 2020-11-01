class Lobo {
  PImage imagenL;
  int posXL, posYL, tam;

  Lobo(PImage p_imagen ) {
   imagenL = p_imagen;
    posXL=width;
    posYL=height;
    tam=50;
  }

  void dibujar() {
   image(imagenL,posXL/2-75,posYL/2-125);
  }
}
