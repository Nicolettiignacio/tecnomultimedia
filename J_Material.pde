class Materiales {
  PImage imagenM;
  int posXM, posYM, tam;
Escala escala;
  
  Materiales(PImage p_imagenM, int p_posXM, int p_posYM,Escala escala) {

    imagenM = p_imagenM;
    this.escala=escala;
    
    posXM   = p_posXM;
    posYM   = p_posYM;
    tam     = 25;
  

}

  void dibujar() {
    image(imagenM,escala.escX(posXM),escala.escY(posYM),escala.escX(tam),escala.escY(tam));
    
    
  }
}
