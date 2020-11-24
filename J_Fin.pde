class Fin {
  int posXF, posYF; 
 
  
  Fin() {

    posXF = width;
    posYF = height;
  }
  void ElLoboTeAtrapo() {
    background(0);
    fill(255, 0, 0);
    text("El Lobo atrapó al cerdito\n\nPulsa -> para volver a comenzar la historia", posXF/2-100, posYF/2);
  }

  void ganar() {
    background(216,158,24);
    fill( 0); 
    text("¡Ganaste! Haz recoletado los materiales para construir la casa.\n\nPulsa -> para continuar la historia", posXF/2-200, posYF/2);
  }
  
}
