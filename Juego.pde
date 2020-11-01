class Juego {
  int posX, posY, tam;
  int estadoJ=-1; //-1 pantalla previa,0 inicio, 1 pierde , 2 gana
  int estadoM0, estadoM1, estadoM2, estadoM3, estadoM4, estadoM5, estadoM6, estadoM7, estadoM8, estadoM9;//Estados para activar o no los materiales//
  PImage imagen1, imagen2, imagen3;


  Comenzar comenzar; 
  Escenario escenario;
  Jugador jugador;
  Lobo lobo;
  Tiempo tiempo;
  Fin fin;

  Materiales materiales, materiales1, materiales2, materiales3, materiales4, materiales5, materiales6, materiales7, materiales8, materiales9;
  Materiales[] Materiales=new Materiales [11];


  Juego() {
    imagen1=loadImage("imagen1.jpg");//lobo
    imagen2=loadImage("imagen2.jpg");//paja
    imagen3=loadImage("imagen3.jpg");//chanchito




    posX       = width;
    posY       = height;
    tam        = 25;

    comenzar   = new Comenzar();
    escenario  = new Escenario();
    lobo       = new Lobo (imagen1);
    jugador    = new Jugador(imagen3, width, height);
    tiempo     = new Tiempo();
    fin        = new Fin();



    for (int i=0; i<11; i++) {
      Materiales[i]=new Materiales(imagen2, width, height);  //declaro por array los new del material//
    }

    Materiales[0]= materiales = new Materiales(imagen2, posX/10, posY/6); 
    Materiales[1]=materiales1 = new Materiales(imagen2, posX/3, posY/6);  
    Materiales[2]=materiales2 = new Materiales(imagen2, posX/5, posY/2); 
    Materiales[3]=materiales3 = new Materiales(imagen2, posX/2+20, posY/6);
    Materiales[4]=materiales4 = new Materiales(imagen2, posX/2+200, posY/6);
    Materiales[5]=materiales5 = new Materiales(imagen2, posX/2+325, posY/6);  //inicio las posiciones de los materiales//
    Materiales[6]=materiales6 = new Materiales(imagen2, posX/2+250, posY/2);
    Materiales[7]=materiales7 = new Materiales(imagen2, posX/5, posY-100);
    Materiales[8]=materiales8 = new Materiales(imagen2, posX/2, posY-100);
    Materiales[9]=materiales9 = new Materiales(imagen2, posX/2+250, posY-100);



    estadoM0=1;
    estadoM1=1;
    estadoM2=1;
    estadoM3=1;
    estadoM4=1;
    estadoM5=1;
    estadoM6=1;   //Estados de los materiales 1 activado, 0 desactivado
    estadoM7=1;
    estadoM8=1;
    estadoM9=1;
  }
  void dibujar() {
    if (estadoJ==-1) {
      comenzar.dibujar();
    }
    if (estadoJ==0) {
      escenario.dibujar(); 
      jugador.dibujar();
      lobo.dibujar();
      tiempo.dibujar();
      tiempo.tocarBrazos() ;
      coincidenciaBrazos();
      jugador.tocarLobo();
      DibujarMaterialesPorEstados();
    }
    if (estadoJ==1) { 
      fin.ElLoboTeAtrapo();
    }
    if (estadoJ==2) { 
      fin.ganar();
    }
  }

  void teclaPresionada() {
    jugador.SeMueve();    //mover pj
    comenzar.arranque();  //Enter para arrancar juego
    reset();              //r para resetear
    jugador.limites();    //limita los mov del pj
  }
  void reset() {
    if (juego.estadoJ==1||juego.estadoJ==2) {
      if (key=='r') {
        background(255);
        juego.estadoJ=-1;
        tiempo.estado=0;
        tiempo.estado2=0;
        tiempo.segundos=0;
        jugador.X=jugador.posXJ/2;
        jugador.Y=jugador.posYJ-juego.tam*2;  //Pone todo en forma de inicio
        estadoM0=1;
        estadoM1=1;
        estadoM2=1;
        estadoM3=1;
        estadoM4=1;
        estadoM5=1;
        estadoM6=1;
        estadoM7=1;
        estadoM8=1;
        estadoM9=1;
      }
    }
  }
  
  void coincidenciaBrazos() {
    if (tiempo.estado2==1) {
      jugador.tocarBrazoV();   //brazos verticales
      if (tiempo.estado==1) {
        jugador.tocarBrazoH(); //brazos horizontales
      }
    }
  }
  void Ganar() {
    if ((estadoM0==0)&&(estadoM1==0)&&(estadoM2==0)&&(estadoM3==0)&&(estadoM4==0)&&(estadoM5==0)&&(estadoM6==0)&&(estadoM7==0)&&(estadoM8==0)&&(estadoM9==0)&&(tiempo.segundos!=2600)) {
      estadoJ=2;
    }
  }

  void DibujarMaterialesPorEstados() {
    //estado0
    if ((jugador.X==(width/2)-325)&&(jugador.Y==(height/2)-200)) {
      estadoM0=0;
    }
    if (estadoM0==1) { 
      Materiales[0].dibujar();
    }//estado1
    if ((jugador.X==(width/2)-125)&&(jugador.Y==(height/2)-200)) {
      estadoM1=0;
    }
    if (estadoM1==1) { 
      Materiales[1].dibujar();
    }//estado2
    if ((jugador.X==(width/2)-225)&&(jugador.Y==(height/2))) {
      estadoM2=0;
    }
    if (estadoM2==1) { 
      Materiales[2].dibujar();
    }//estado3
    if ((jugador.X==((width/2)+25))&&(jugador.Y==(height/2)-200)) {
      estadoM3=0;
    }
    if (estadoM3==1) { 
      Materiales[3].dibujar();
    }//estado4
    if ((jugador.X==(width/2+200))&&(jugador.Y==(height/2)-200)) {
      estadoM4=0;
    }
    if (estadoM4==1) { 
      Materiales[4].dibujar();
    }//estado5
    if ((jugador.X==(width-75))&&(jugador.Y==(height/2)-200)) {
      estadoM5=0;
    }
    if (estadoM5==1) { 
      Materiales[5].dibujar();
    }//estado6
    if ((jugador.X==((width/2)+250))&&(jugador.Y==(height/2))) {
      estadoM6=0;
    }
    if (estadoM6==1) { 
      Materiales[6].dibujar();
    }//estado7
    if ((jugador.X==(width/2)-250)&&(jugador.Y==(height-100))) {
      estadoM7=0;
    }
    if (estadoM7==1) { 
      Materiales[7].dibujar();
    }//estado8
    if ((jugador.X==width/2)&&(jugador.Y==(height-100))) {
      estadoM8=0;
    }
    if (estadoM8==1) { 
      Materiales[8].dibujar();
    }//estado9
    if ((jugador.X==(width-150))&&(jugador.Y==(height-100))) {
      estadoM9=0;
    }
    if (estadoM9==1) { 
      Materiales[9].dibujar();
    }

    juego.Ganar();
  }//si todos los estados estan en 0 se activa el ganar //
}
