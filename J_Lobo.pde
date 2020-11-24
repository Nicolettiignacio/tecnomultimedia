class Lobo {
  PImage imagenL;
  int posXL, posYL;
  Escala escala;
  
  
  Lobo(PImage p_imagen, Escala escala) {
    
    
    imagenL = p_imagen;
    this.escala=escala;
   
    posXL=325;
    posYL=175;
    
  }

  void dibujar() {
    
    image(imagenL,escala.escX( posXL), escala.escY(posYL),escala.escX(200),escala.escY(250));
  }
}
