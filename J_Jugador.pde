class Jugador {
  int posXJ, posYJ, tam, X, Y;
  PImage imagenC;
 
  
  Escala escala;
  
  Jugador(PImage p_imagenC,Escala escala) {
    
    imagenC=p_imagenC;
    posXJ = escala.escX (400); 
    posYJ = escala.escY (550); 
    tam   = 25;


    X=escala.escX(posXJ);
    Y=escala.escY(posYJ);

    
    
    this.escala=escala;  
}

  void dibujar() {
    
    image(imagenC, escala.escX(X),escala.escY(Y), escala.escX(tam),escala.escX(tam));
  }

  void SeMueve() {
    if (keyCode==LEFT) {
      X=X-tam;
    } else if (keyCode==RIGHT) {
      X=X+tam;
    }
    if (keyCode==UP) {
      Y=Y-tam;
    } else if (keyCode==DOWN) {
      Y=Y+tam;
    }
}

  void limites() {
    if (X==(0)) {
      X=X+tam;
    }
    if (X==775) {
      X=X-tam;
    }
    if (Y==(0)) {
      Y=Y+25;
    }
    if (Y==(575)) {
      Y=Y-25;
    }
  }


  void tocarLobo() {
    if ( (escala.escX(X)>=escala.escX(325))&&(escala.escX(X)<escala.escX(500))&&(escala.escY(Y)>=escala.escY(175))&&(escala.escY(Y)<escala.escY(425))) {//si toca los limites del lobo//
     control.estadoJ=1;
    }
  }
  void tocarBrazoH() {
    if ( (escala.escY(Y)>=escala.escY(300))&&(escala.escY(Y)<escala.escY(350))) {  //al estar Estado=1 de clase tiempo(brazos activos H) y las posiciones igual perdes//
     control.estadoJ=1;
    }
  }
  void tocarBrazoV() {
    if ( (escala.escX(X)>=escala.escX(400))&&(escala.escX(X)<escala.escX(450))) {  //al estar Estado2=1 de clase tiempo(brazos activos V) y las posiciones igual perdes//

      control.estadoJ=1;
    }
  }
}
