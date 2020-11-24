/*
TPFinal
Nicoletti Ignacio 
85136/9
COMISION 4   

A=Aventura
J=Juego
*/

import processing.sound.*;
Control control;



void setup() {
  size(800,600);
  surface.setResizable(true);
  control= new Control(this);
}


void draw() {
  control.dibujar();
}
void keyPressed(){
control.teclaPresionada();

}
