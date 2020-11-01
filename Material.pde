class Materiales {
  PImage imagenM;
  int posXM, posYM, tam;

  
  Materiales(PImage p_imagenM, int p_posXM, int p_posYM) {

    imagenM = p_imagenM;
    posXM   = p_posXM;
    posYM   = p_posYM;
    tam     = 25;
  }

  void dibujar() {
    image(imagenM, posXM, posYM, tam, tam);
  }
}
