/*
NOMBRE: NICOLETTI IGNACIO 
LEGAJO:85136/9
TP5
COMISION 4
REEMPLAZA LA PANTALLA 2 EN LA QUE ITENE QUE RECOLETAR MATERIALES.
*/


Juego juego;

void setup() {
  size(800, 600);
  juego = new Juego();
}

void draw() {
  
  juego.dibujar();
 
}


void keyPressed() {
  juego.teclaPresionada();
}
