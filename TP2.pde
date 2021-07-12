

//2020 INFORMATICA APLICADA 2 - CATEDRA CAUSA - ATAM - UNA
//ESTE EJEMPLO DIBUJA UNA ELIPSE POR CADA PATRON Y SU RESPECTIVO ID

import fisica.*; //importo la libreria de fisica 
//import TUIO.*; //Declaramos un objeto de tipo TuioProcessing
//TuioProcessing tuioClient;





PImage fondo;
FWorld mundo;//objeto mundo de fisica

personaje p;
base Base;
Arco a;

void setup()
{
  size(1200, 700);
  //inicializamos la libreria
  // tuioClient  = new TuioProcessing(this);

  Fisica.init(this);//inicializamos la libreria


  fondo=loadImage("castillo.jpg");//poner un array de todas las imagenes del juego


  //inicio un mundo//
  mundo=new FWorld();
  mundo.setEdges();
  //inicio mundo//

  //incio clase base//
  Base = new base(115, 260, 160, 525); //ancho,alto,posX,posY//
  Base.dibujarBase();
  //incio clase base//

  //inicio al personaje y dibujo//
  p= new personaje(50, 70);
 
p.dibujarPersonaje(mundo);
  //inicio al personaje y dibujo//

  //inicio clase arco
  a = new Arco(50, 450);
  //inicio clase arco
}



void draw() {
  image(fondo, 0, 0, width, height);
  mundo.step();
  mundo.draw();

  a.dibujar();
  a.eliminarBala();
   
}

void keyPressed() {
   p.acciones( );
  
  /* if ( key==' ' ) {
    a.disparar( mundo );
  }

  if ( key=='w') {
   p.dibujarPersonajeSalto( mundo);
    //p.salto();
  }
  if ( key=='s') {
    p.PersonajeCubierto();
  }*/
}
