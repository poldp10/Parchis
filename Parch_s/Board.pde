public class Board {

  public static final int TOP_LEFT = 1;
  public static final int TOP_RIGHT = 2;
  public static final int BOTTOM_LEFT = 3;
  public static final int BOTTOM_RIGHT = 4;

  
  int ellipsDim = sizeX / 3 - 16;
  int rectDim = ellipsDim + 10;
  int ellips2Dim = ellipsDim / 2 + 25;
  int ellips3Dim = ellips2Dim / 2 - 25;
  byte CCDim = 25;
  float altCas = 37.2;
  long white = 0xfafafa;
  long black = #212121;
  long CC = 0xbdbdbd;

  final int width, height;

  public Board(int screenWidth, int screenHeight) {
    width = screenWidth;
    height = screenHeight;
  }

  public void draw() {
    paintCircle(rectDim/2, TOP_LEFT, #FF5722);
    paintCircle(rectDim/2, TOP_RIGHT, #2196F3);
    paintCircle(rectDim/2, BOTTOM_LEFT, #8BC34A);
    paintCircle(rectDim/2, BOTTOM_RIGHT, #FFEB3B);
  }

  public void paintCircle(int radius, int orientation, color myColor) {
    int baseX = 0; 
    int baseY = 0;
    if (orientation == TOP_LEFT) {
      baseX = 0;
      baseY = 0;
    }
    if (orientation == TOP_RIGHT) {
      baseX = width - (2 * radius);
      baseY = 0;
    }
    if (orientation == BOTTOM_LEFT) {
      baseX = 0;
      baseY = height - (2 * radius);
    }
    if (orientation == BOTTOM_RIGHT) {
      baseX = width - (2 * radius);
      baseY = height - (2 * radius);
    }

    stroke(black);
    fill(white);
    rect(baseX, baseY, rectDim, rectDim);
    //Ellipse arriba-izquierda
    fill(myColor);
    ellipse(ellipsDim / 2 + 5 + baseX, ellipsDim / 2 + 5 + baseY, ellipsDim, ellipsDim); 
    stroke(white);
    ellipse(ellipsDim / 2 + 5 + baseX, ellipsDim / 2 + 5 + baseY, ellips2Dim, ellips2Dim);
    stroke(black);
    fill(white);
    ellipse(ellipsDim / 2 + 5 + baseX, ellipsDim / 2 + 5 + baseY, ellips3Dim, ellips3Dim);
  }

  //casillas
  void drawSquares() {
    for (int i=0; i<8; i++) {
      line(rectDim, i*37.2, sizeX-rectDim, i*37.2);
      line(rectDim, (i*37.2)+540, sizeX-rectDim, (i*37.2)+540);
      line(i*37.2, rectDim, i*37.2, sizeY-rectDim);
      line((i*37.2)+540, rectDim, (i*37.2)+540, sizeY-rectDim);
    }
    for (int i=0; i<7; i++) {
      //Arriba 
      fill(#FF5722);
      rect(rectDim+93, (i+1)*37.2, 93, 37.2);
      line(rectDim+93, 0, rectDim+93, 37.2);
      line((rectDim+93)+93, 0, (rectDim+93)+93, 37.2);
      triangle((rectDim+93)-(93/2)-10, 37.2*8, sizeX/2, sizeY/2, (sizeX-(rectDim+93))+(93/2)+10, 37.2*8);
      //Arriba-izquierda
      line(rectDim, rectDim, (rectDim+93)-(93/2)-10, 37.2*8 );
      rect(rectDim, 37.2*4, 93, 37.2);
      //Arriba-derecha
      line(sizeX-rectDim, rectDim, (sizeX-(rectDim+93))+(93/2)+10, 37.2*8);

      //Abajo
      fill(#FFEB3B);
      rect(rectDim+93, ((i-1)*37.2)+540, 93, 37.2);
      line(rectDim+93, sizeY, rectDim+93, sizeY-37.2);
      line((rectDim+93)+93, sizeY, (rectDim+93)+93, sizeY-37.2);
      triangle((rectDim+93)-(93/2)-10, sizeY-(37.2*8), sizeX/2, sizeY/2, (sizeX-(rectDim+93))+(93/2)+10, sizeY-(37.2*8));
      rect(sizeX-(rectDim+93), sizeY-(37.2*5), 93, 37.2);
      //Abajo-izquierda
      line(rectDim, sizeY-rectDim, (rectDim+93)-(93/2)-10, sizeY-(37.2*8));
      //Abajo-derecha
      line(sizeX-rectDim, sizeY-rectDim, (sizeX-(rectDim+93))+(93/2)+10, sizeY-(37.2*8));

      //Izquierda
      fill(#8BC34A);
      rect((i+1)*37.2, rectDim+93, 37.2, 93);
      line(0, rectDim+93, 37.2, rectDim+93);
      line(0, (rectDim+93)+93, 37.2, (rectDim+93)+93);
      triangle((rectDim+93)-(93/2)-10, 37.2*8, sizeX/2, sizeY/2, (rectDim+93)-(93/2)-10, sizeY-(37.2*8));
      rect(37.2*4, sizeY-rectDim-93, 37.2, 93);

      //Derecha
      fill(#2196F3);
      rect(((i-1)*37.2)+540, rectDim+93, 37.2, 93);
      line(sizeX, rectDim+93, sizeX-37.2, rectDim+93);
      line(sizeX, (rectDim+93)+93, sizeX-37.2, (rectDim+93)+93);
      triangle((sizeX-(rectDim+93))+(93/2)+10, 37.2*8, sizeX/2, sizeY/2, (sizeX-(rectDim+93))+(93/2)+10, sizeY-(37.2*8));
      rect(sizeX-(37.2*5), rectDim, 37.2, 93);

      //casillasCasa
      fill(white);
      //arriba
      ellipse(rectDim+(93/2), 37.2*5-(37.2/2), CCDim, CCDim);
      //derecha
      ellipse(sizeX-(37.2*5-(37.2/2)), rectDim+(93/2), CCDim, CCDim);
      //izquierda
      ellipse(37.2*4.5, sizeY-rectDim-(93/2), CCDim, CCDim);
      //abajo
      ellipse(sizeX-rectDim-(93/2), sizeY-(37.2*4.5), CCDim, CCDim);
    }
  }

  void drawBaseCircles() {
    //CasillasCasa
    fill(#9E9E9E);
    //arriba
    ellipse(sizeX/2, 37.2/2, CCDim, CCDim);
    ellipse(sizeX-rectDim-(93/2), 37.2*4.5, CCDim, CCDim);
    //abajo
    ellipse(sizeX/2, sizeY-(37.2/2), CCDim, CCDim);
    ellipse(rectDim+(93/2), sizeY-(37.2*4.5), CCDim, CCDim);
    //derecha
    ellipse(sizeX-(37.2/2), sizeY/2, CCDim, CCDim);
    ellipse(sizeX-(37.2*4.5), sizeY-(rectDim+(93/2)), CCDim, CCDim);
    //izquierda
    ellipse(37.2/2, sizeY/2, CCDim, CCDim);
    ellipse(37.2*4.5, rectDim+(93/2), CCDim, CCDim);

    //Copyright
    textSize(10);
    fill(black);
    text("by Pol Diéguez Pastallé", 967, 790);
  }
}