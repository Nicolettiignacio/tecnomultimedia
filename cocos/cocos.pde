Jugador jugador;
Enemigos enemigos;
Techo techo;
Contador Contador;
//Juego Juego;


int posX, tam;
int contador = 0;
int techo1 = 0;
int cantidadObjetos = 10;
int [] objetosPosY = new int [cantidadObjetos];
int velocidad = 1;

void setup() {
  size(400, 400);
  textSize(20);

  tam = width/cantidadObjetos;
  posX = tam * (cantidadObjetos/2);

  for (int i=0; i < cantidadObjetos; i++ ) {
    objetosPosY[i] = generarPosicionObjeto(); //posiciones de los cocos
  }
}

void draw() {


  background(200);
  jugador= new Jugador(posX, width-tam, tam, tam, color (0, 0, 255));            //jugador
  jugador.dibujar();

  techo = new Techo( 0, 0, width, techo1 * tam, color (0) );                   //techo 
  techo.dibujar();


  Contador=new Contador(50, 50, contador);                                     //contador
  Contador.dibujar();




  // Juego = new Juego(cantidadObjetos , objetosPosY[i] , velocidad, techo1);


  for (int i=0; i < cantidadObjetos; i++ ) {
    objetosPosY[i]+=velocidad;

    enemigos= new Enemigos(i*tam + tam/2, objetosPosY[i], tam/2, tam/2 );
    enemigos.dibujar();                                                         //enemigos

    if (objetosPosY[i] >= height ) {
      objetosPosY[i] = generarPosicionObjeto();
      techo1++;        //techo
    }
    if (dist(i*tam + tam/2, objetosPosY[i], posX + tam/2, width-tam + tam/2) < tam/2) {
      objetosPosY[i] = generarPosicionObjeto();
      contador++;  //contador 

      

      if (contador % 10 == 0) {
        velocidad++;    //velocidad
      }
    }
  }
}




void keyPressed() {
  if (keyCode == LEFT) {
    posX = posX - tam;
  } else if (keyCode == RIGHT) {
    posX = posX + tam;
  }
  posX= constrain(posX, 0, (width/2)+160); //limita al jugador
}

int generarPosicionObjeto() {
  return round(random(-1000, techo1 * tam));
}
