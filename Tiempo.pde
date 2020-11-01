class Tiempo {
  int posXT, posYT, segundos, estado, estado2;


  Tiempo() {
    posXT    = width;
    posYT    = height;
    segundos = 0;
    estado   = 0;
    estado2  = 0;
  }
  void dibujar() {
    fill(255, 0, 0);
    textSize(20);
    text("Tiempo:", posXT/2, posYT/4-130);
    text(segundos, posXT/2+100, posYT/4-130);
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
      juego.estadoJ=1;
    }
  }
  void brazosH() {
    fill(140, 140, 140);
    rect((posXT-posXT)+25, posYT/2, 290, 50);                     //brazos horizontales
    rect(posXT/2+125, posYT/2, 250, 50);
  }
  void brazosV() {
    fill(140, 140, 140);
    rect(posXT/2, (posYT-posYT)+25, 50, 175);                     //brazos verticales
    rect(posXT/2, posYT/2+150, 50, 125);
  }
}
