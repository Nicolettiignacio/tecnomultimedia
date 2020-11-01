class Jugador {
  int posXJ, posYJ, tam, X, Y;
  PImage imagenC;
  int XE, YE;
  
  Jugador(PImage p_imagenC, int p_posXE, int p_posYE) {
    
    imagenC=p_imagenC;
    posXJ = width; 
    posYJ = height; 
    tam   = 25;


    X=posXJ/2;
    Y=posYJ-tam*2;

    XE=p_posXE;
    YE=p_posYE;
  }

  void dibujar() {
    image(imagenC, X, Y, 25, 25);
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
    if (X==(XE-XE)) {
      X=X+tam;
    }
    if (X==XE-tam) {
      X=X-tam;
    }
    if (Y==(YE-YE)) {
      Y=Y+25;
    }
    if (Y==(YE-tam)) {
      Y=Y-25;
    }
  }


  void tocarLobo() {
    if ( (X>=width/2-75)&&(X<=width/2+100)&&(Y>=height/2-125)&&(Y<height/2+150)) {//si toca los limites del lobo//
      juego.estadoJ=1;
    }
  }
  void tocarBrazoH() {
    if ( (Y>=height/2)&&(Y<height/2+50)) {  //al estar Estado=1 de clase tiempo(brazos activos) y las posiciones igual perdes//
      juego.estadoJ=1;
    }
  }
  void tocarBrazoV() {
    if ( (X>=width/2)&&(X<=width/2+25)) {  //al estar Estado2=1 de clase tiempo(brazos activos) y las posiciones igual perdes//

      juego.estadoJ=1;
    }
  }
}
