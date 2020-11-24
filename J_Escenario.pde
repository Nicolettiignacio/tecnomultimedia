class Escenario { 
  PImage imagenP;
  Escala escala;


  Escenario (PImage p_imagenP, Escala escala) {

    imagenP=p_imagenP;    


    this.escala=escala;
  }

  void dibujar() {
    image(imagenP, 0, 0, width, height);
    fill(0);
    rect( escala.escX(0)  , escala.escY(0)  ,escala.escX(25) , escala.escY(800)   );
    rect( escala.escX(0)  , escala.escY(575),escala.escX(800), escala.escY( 25)   );           //marco del juego//
    rect( escala.escX(775), escala.escY(0)  ,escala.escX( 25), escala.escY(800)   );
    rect( escala.escX(0)  , escala.escY(0)  ,escala.escX(800), escala.escY( 25)   );
  }
} 
