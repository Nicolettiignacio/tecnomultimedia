/*class Juego {


  int cantidadObjetos, objetosPosY, velocidad, techo1;

  Juego(int p_cantidadObjetos, int p_objetosPosY, int p_velocidad, int p_techo1) {

    this.cantidadObjetos = p_cantidadObjetos;
    this.objetosPosY = p_objetosPosY;
    this.velocidad       = p_velocidad;
    this.techo1          = p_techo1;



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
        contador++;                                        //contador 

        if (contador % 10 == 0) {
          velocidad++;    //velocidad
        }
      }
    }
  }
}*/
