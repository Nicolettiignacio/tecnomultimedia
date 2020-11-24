class Juego {
  int  tam;
  int estadoM0, estadoM1, estadoM2, estadoM3, estadoM4, estadoM5, estadoM6, estadoM7, estadoM8, estadoM9;//Estados para activar o no los materiales//
 
  PImage imagen1, imagen2, imagen3, imagen4;
  PImage [] imagenesJ = new PImage [5];

  Comenzar comenzar; 
  Escenario escenario;
  Jugador jugador;
  Lobo lobo;
  Tiempo tiempo;
  Fin fin;

  
  Materiales[] Materiales=new Materiales [11];

  Escala escala;
  Juego(Escala escala) {
    for (int i = 0; i < 5; i++) {
      imagenesJ[i] = loadImage("imagen" + i + ".png"); //cargo las imagenes
    }
    
    
   this.escala=escala;
    
    tam        = 25;


    comenzar   = new Comenzar();
    escenario  = new Escenario(imagenesJ[4],escala);
    lobo       = new Lobo     (imagenesJ[1],escala);//
    jugador    = new Jugador  (imagenesJ[3],escala);
    tiempo     = new Tiempo   (escala);//
    fin        = new Fin();



    for (int i=0; i<11; i++) {
      Materiales[i]=new Materiales(imagen2, width, height,escala);  //declaro por array los new del material//
    }

    Materiales[0] = new Materiales(imagenesJ[2],  75, 100,escala); 
    Materiales[1] = new Materiales(imagenesJ[2], 250, 100,escala);  
    Materiales[2] = new Materiales(imagenesJ[2], 150, 300,escala); 
    Materiales[3] = new Materiales(imagenesJ[2], 425, 100,escala);
    Materiales[4] = new Materiales(imagenesJ[2], 600, 100,escala);
    Materiales[5] = new Materiales(imagenesJ[2], 725, 100,escala);  //inicio las posiciones de los materiales//
    Materiales[6] = new Materiales(imagenesJ[2], 650, 300,escala);
    Materiales[7] = new Materiales(imagenesJ[2], 150, 500,escala);
    Materiales[8] = new Materiales(imagenesJ[2], 400, 500,escala);
    Materiales[9] = new Materiales(imagenesJ[2], 650, 500,escala);



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

    if (control.estadoJ==-1) {
      comenzar.dibujar();
    }
    if (control.estadoJ==0) {
      escenario.dibujar(); 
      jugador.dibujar();
      lobo.dibujar();
      tiempo.dibujar();
      tiempo.tocarBrazos() ;
      coincidenciaBrazos();
      jugador.tocarLobo();
      DibujarMaterialesPorEstados();
    }
    if (control.estadoJ==1) { 
      fin.ElLoboTeAtrapo();
    }
    if (control.estadoJ==2) { 
      fin.ganar();
    }
  }


  void teclaPresionada() {
    jugador.SeMueve();    //mover pj
    comenzar.arranque();  //Enter para arrancar juego
    reset ();             //r para resetear
    jugador.limites();    //limita los mov del pj
  }
  void reset() {
    if (control.estadoJ==1||control.estadoJ==2) {
      control.estadoJ=-1;
      tiempo.estado=0;
      tiempo.estado2=0;
      tiempo.segundos=0;
      jugador.X=400;
      jugador.Y=550;  //Pone todo en forma de inicio
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
      control.estadoJ=2;
    }
  }

  void DibujarMaterialesPorEstados() {
    //estado0
    if ((escala.escX(jugador.X)==escala.escX(75))&&(escala.escY(jugador.Y)==escala.escY(100))) {
      estadoM0=0;
    }
    if (estadoM0==1) { 
      Materiales[0].dibujar();
    }//estado1
    if ((escala.escX(jugador.X)==escala.escX((250)))&&(escala.escY(jugador.Y)==escala.escY(100))) {
      estadoM1=0;
    }
    if (estadoM1==1) { 
      Materiales[1].dibujar();
    }//estado2
    if ((escala.escX(jugador.X)==escala.escX((150)))&&(escala.escY(jugador.Y)==escala.escY(300))) {
      estadoM2=0;
    }
    if (estadoM2==1) { 
      Materiales[2].dibujar();
    }//estado3
    if ((escala.escX(jugador.X)==escala.escX((425)))&&(escala.escY(jugador.Y)==escala.escY(100))) {
      estadoM3=0;
    }
    if (estadoM3==1) { 
      Materiales[3].dibujar();
    }//estado4
    if ((escala.escX(jugador.X)==escala.escX((600)))&&(escala.escY(jugador.Y)==escala.escY(100))) {
      estadoM4=0;
    }
    if (estadoM4==1) { 
      Materiales[4].dibujar();
    }//estado5
    if ((escala.escX(jugador.X)==escala.escX((725)))&&(escala.escY(jugador.Y)==escala.escY(100))) {
      estadoM5=0;
    }
    if (estadoM5==1) { 
      Materiales[5].dibujar();
    }//estado6
    if ((escala.escX(jugador.X)==escala.escX((650)))&&(escala.escY(jugador.Y)==escala.escY(300))) {
      estadoM6=0;
    }
    if (estadoM6==1) { 
      Materiales[6].dibujar();
    }//estado7
    if ((escala.escX(jugador.X)==escala.escX((150)))&&(escala.escY(jugador.Y)==escala.escY(500))) {
      estadoM7=0;
    }
    if (estadoM7==1) { 
      Materiales[7].dibujar();
    }//estado8
    if ((escala.escX(jugador.X)==escala.escX((400)))&&(escala.escY(jugador.Y)==escala.escY(500))) {
      estadoM8=0;
    }
    if (estadoM8==1) { 
      Materiales[8].dibujar();
    }//estado9
    if ((escala.escX(jugador.X)==escala.escX((650)))&&(escala.escY(jugador.Y)==escala.escY(500))) {
      estadoM9=0;
    }
    if (estadoM9==1) { 
      Materiales[9].dibujar();
    }

    Ganar();
  }//si todos los estados estan en 0 se activa el ganar //
}
