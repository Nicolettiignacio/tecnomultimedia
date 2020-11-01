class Escenario {
  int posXE, posYE, tamE; 


  Escenario () {
    posXE =width ;
    posYE =height;
    tamE  =25;
  }

  void dibujar() {
    background(255);
    fill(0);
    rect( (posXE-posXE), (posYE-posYE), tamE, posYE) ;
    rect( (posXE-posXE), (posYE-25), posXE, tamE)    ;           //marco del juego//
    rect( (posXE-25)   , (posYE-posYE), tamE, posYE) ;
    rect( (posXE-posXE), (posYE-posYE), posXE, tamE );
  }
} 
