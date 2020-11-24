class Tiempo {
  int posXT, posYT, segundos, estado, estado2;
  Escala escala;

  Tiempo(Escala escala) {
    posXT    = 400;
    posYT    = 25;
    segundos = 0;
    estado   = 0;
    estado2  = 0;

    this.escala=escala;
  }

  void dibujar() {
    fill(255, 0, 0);
    textSize(20);
    text("Tiempo:", escala.escX(posXT), escala.escY (posYT));
    text(segundos, escala.escX(posXT+80), escala.escY ( posYT));
  }

  void tocarBrazos() {
    if ((segundos>=150)&&(segundos<=200)||(segundos>=300)&&(segundos<=350)||(segundos>=450)&&(segundos<=500)||(segundos>=600)&&(segundos<=650)||(segundos>=800)&&(segundos<=850)||(segundos>=1100)&&(segundos<=1200)||(segundos>=1350)&&(segundos<=1400)||(segundos>=1500)&&(segundos<=1600)) {         
      estado=1;
      brazosH();               //lapso que tarda en abrir las manos Horizontales//
    } else {
      estado=0;
    } 


    if ((segundos>=200)&&(segundos<=250)||(segundos>=300)&&(segundos<=350)||(segundos>=400)&&(segundos<=415)||(segundos>=600)&&(segundos<=650)||(segundos>=900)&&(segundos<=950)||(segundos>=970)&&(segundos<=1000)||(segundos>=1500)&&(segundos<=1600)) {            
      estado2=1;
      brazosV();
    } else {
      estado2=0;               //lapso que tarda en abrir las manos verticales//
    } 

    if (segundos!=2600) {              //tiempo final//30seg 
      segundos=segundos+1;
    } else if (segundos==2600) {
      control.estadoJ=1;
    }
  }

  void brazosH() {
    fill(140, 140, 140);
    rect(escala.escX(25), escala.escY(300), escala.escX(300), escala.escY( 50));//izquierdo                     //brazos horizontales
    rect(escala.escX(525), escala.escY(300), escala.escX( 250), escala.escY( 50));//derecho
  }

  void brazosV() {
    fill(140, 140, 140);
    rect(escala.escX(400), escala.escY(25), escala.escX(50), escala.escY(150));   //arriba                    //brazos verticales
    rect(escala.escX(400), escala.escY(425), escala.escX(50), escala.escY(150));   //abajo
  }
}
