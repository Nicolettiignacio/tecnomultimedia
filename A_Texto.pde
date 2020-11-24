class Texto {
  String [] textos = new String [13];
  PFont narracion;

  Texto() {

    narracion=loadFont("CambriaMath-20.vlw"); //cargo la fuente     
    textFont(narracion, 20);
    textSize(20);
    textos[0]  = "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nInstrucciones:\nCon flecha derecha avanzas \nCon A y B decides el camino\nCon C accedes a los creditos solo en la pantalla principal";
    textos[1]  = "Una vez hubo tres hermanos de cerditos, Tom, Billy y Henry, que dejaron a su familia \npara ver el mundo exterior. Inicialmente estaban muy felices, hacían lo que deseaban, \njugaban todo el día, comían lo que quisieran, incluso hacían muchos amigos\n en muchos lugares, pero cuando se acercaba el invierno,\n comenzaron a pensar en la comida, suministros y la casa real.";
    textos[2]  = "Mientras los cerditos iban camino hacia\nel pueblo el lobo muy audaz,\nlos observaba detrás de los árboles,\nal llegar al pueblo debían contruir \nsu casa, pero el cerdito mas chico \nno sabia de que material contruir \nsu casa.\n\n\n\n\n\n\n\nOpcion A: Pedir ayuda al cerdito mayor.\n\nOpcion B: Contruir la casa del material \n               que consiga por el pueblo."; 

    textos[3]  = "El cerdito mayor, le aconseja contruir una \ncasa de materiales fuertes, resistentes al \nviento. EL lobo al intentar soplar su casa \ny no hacer efecto se da por vencido y va \nhacia la casa del segundo cerdito con la casa \nde madera.";
    textos[5]  = "El lobo muy furioso, infla sus pulmones y comienza a soplar sobre la casa de madera\nhasta el punto de derribarla. El cerdito mas chico con mucho miedo y junto al cerdito \ndel medio huyen a la casa de su hermano mayor para estar los tres juntos.";
    textos[7]  = " Cerdito, cerdito , dijo. \n¿No me dejas entrar? dijo el lobo. \n¡No! dijo Tom Pig. \nNo por el cabello de mi barbilla. \n¡No te dejaré entrar!\n¡Entonces resoplaré y resoplaré y \nvolaré tu casa! dijo el lobo y \nlo rompió fácilmente con un solo soplo.";

    textos[4]  = "El cerdito Tom construyó \nuna casa de paja que era la \nmás fácil, y el cerdo Billy \nplaneó construir una casa de \nmadera, a diferencia de Tom y Billy, \nHenry el más inteligente \nconstruyó una casa sólida \nhecha de ladrillos, \npara que pudiera protegerse \ndel lobo.";
    textos[6]  = "Luego de haber contruido sus casas decidieron recorrer el pueblo. Una tarde, \nde repente, oyeron el sonido del lobo, se quedaron atrapados por el miedo y \nvolvieron a sus propias casas. El lobo llegó al faro de Tom, que estaba hecho de paja.";

    textos[8]  = "El cerdito Tom corre hacia la casa del cerdo Billy, \nque es una casa de madera. \nCerdito, cerdito. ¿No me dejas entrar? dijo el lobo.\n¡No! dijo Bily Pig. “No por el cabello de mi barbilla. \n¡No te dejaré entrar!¡Entonces resoplaré y resoplaré y \nvolaré tu casa! dijo el lobo y lo hizo.\nDesafortunadamente, el segundo experimentó \nel mismo destino que el primero, \ny corrieron a la casa de Henry.\n\n\n\n\n\n\nPero el lobo intento lo mismo con la \nultima casa,pero esta al ser de ladrillo \nno hizo efecto al soplido del lobo, \nentonces el lobo intentaba entrar a la casa.\n\nOpcion A: Por la ventana.  \nOpcion B: Por la chimenea.";  
    textos[10]  = "Luego de pensar mucho, el lobo, decide entrar por la \nchimenea, pero lo que no sabia es que abajo \nlo esperaba una olla de agua caliente que habian \nencendido los cerditos...";
    textos[9] = "Luego de pensar mucho, el lobo, \ndecide entrar por la ventana, \npero lo cerditos lo ahuyentan rapidamente, \nEntonces el lobo busca otra alternativa.";
    textos[11] = "El lobo al caer en la olla salió corriendo \nfuera del bosque y nunca mas se supo \nde él. Asi los cerditos festejaron juntos \nque habían vencido.";
    textos[12] = "Personajes: Cerdito tom.\n                 Cerdito Billy.\n                 Cerdito Henry.\n                 Lobo.\nCreador      Nicoletti Ignacio. ";
  }
}
