class Fin {
  int posXF, posYF; 
 
  
  Fin() {

    posXF = width;
    posYF =height;
  }
  void ElLoboTeAtrapo() {
    background(0);
    fill(255, 0, 0);
    text("El Lobo te atrapó\nPulsa r para volver a jugar", posXF/2-100, posYF/2);
  }

  void ganar() {
    background(0);
    fill(255, 0, 0); 
    text("Ganaste\nPulsa r para volver a jugar", posXF/2-100, posYF/2);
  }
  
}
