class Control {
  int estadoP, estadoJ;
  Pantalla[] Pantalla =new Pantalla [13];


  Carga carga;
  Texto texto;
  Creditos Creditos;
  Juego juego;
  SoundFile Cancion;


  Escala escala=new Escala();

  Control(PApplet pro) {


    Cancion = new SoundFile(pro, "cancion.mp3");
    cancion();


    estadoJ=-1; //-1 pantalla previa,0 inicio, 1 pierde , 2 gana(del juego)
    estadoP=0; //controla el estado de las pantallas


    juego     = new Juego(escala);

    carga     = new Carga();
    texto     = new Texto();

    Pantalla[0] =new Pantalla(carga.imagenes[0], texto.textos[0], color(255, 0, 0), escala);
    Pantalla[1] =new Pantalla(carga.imagenes[1], texto.textos[1], color(0), escala);
    Pantalla[2] =new Pantalla(carga.imagenes[2], texto.textos[2], color(0), escala);
    Pantalla[3] =new Pantalla(carga.imagenes[3], texto.textos[3], color(0), escala);
    Pantalla[4] =new Pantalla(carga.imagenes[4], texto.textos[4], color(255), escala);
    Pantalla[5] =new Pantalla(carga.imagenes[5], texto.textos[5], color(255), escala);   //inicio de objetos de pantalla
    Pantalla[6] =new Pantalla(carga.imagenes[6], texto.textos[6], color(0, 0, 255), escala);
    Pantalla[7] =new Pantalla(carga.imagenes[7], texto.textos[7], color(0), escala);
    Pantalla[8] =new Pantalla(carga.imagenes[8], texto.textos[8], color(0), escala);    
    Pantalla[9] =new Pantalla(carga.imagenes[9], texto.textos[9], color(0), escala);
    Pantalla[10]=new Pantalla(carga.imagenes[10], texto.textos[10], color(0), escala);
    Pantalla[11]=new Pantalla(carga.imagenes[11], texto.textos[11], color(255), escala);
    Pantalla[12]=new Pantalla(carga.imagenes[12], texto.textos[12], color(255), escala);

    Creditos    =new Creditos(carga.imagenes[12], texto.textos[12], escala);
  }

  void dibujar() {
    Pantalla[estadoP].dibujar();

    if (estadoP==4) {
      juego.dibujar();
    }
    if (estadoP==12) {
      Creditos.dibujar();
    }
  }

  void teclaPresionada() {
    if ((estadoP==0)||(estadoP==1)||(estadoP==7)||(estadoP==9)||(estadoP==10)||(estadoP==11)||(estadoP==12)) {
      if (keyCode == RIGHT) {
        estadoP=estadoP+1;
      }
    }
    if ((estadoP==3)||(estadoP==5)||(estadoP==6)) {
      if (keyCode == RIGHT) {
        estadoP=estadoP+2;
      }
    }
    if ((estadoP==4)&&(estadoJ==2)) { //si gana pasa a pantalla 6 
      if (keyCode == RIGHT) {
        estadoP=estadoP+2;
      }
    }
    if ((estadoP==4)&&(estadoJ==1)) { //si pierde pasa a pantalla 1
      if (keyCode == RIGHT) {
        estadoP=1;
      }
    }

    if (estadoP==2) {
      if (key == 'A') {
        estadoP=3;
      } 
      if (key == 'B') {
        estadoP=4;
      }
    }

    if (estadoP==8) {
      if (key == 'A') {
        estadoP=9;
      }
      if (key == 'B') {
        estadoP=10;
      }
    }

    if ((key == 'C')&&(estadoP==0)) {    
      estadoP=12;
    }
    if (estadoP==13) {
      estadoP=0;
    }

    if (estadoP==5||estadoP==1) {
      if (keyCode == RIGHT) {
        juego.reset();
      }
    }
    juego.teclaPresionada();
  }
  void cancion() { 
    Cancion.amp(0.1);
    Cancion.loop();
  }
}
