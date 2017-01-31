public class Player {

  public static final int RED = 1;
  public static final int GREEN = 2;
  public static final int BLUE = 3;
  public static final int YELLOW = 4;

  Point[] globalPath;
  Point piece_1;
  Point piece_2;
  Point piece_3;
  Point piece_4;

  int ellipsDim = sizeX / 3 - 16;
  int rectDim = ellipsDim + 10;
  int picePos = 0;

  public Player(int type) {
    //SETUP GENERAL PATH HERE
    setupGeneralPath();
    if (type == RED) {
      setupRed();
    }
    if (type == GREEN) {
      setupGreen();
    }
    if (type==BLUE) {
    }
    if (type==YELLOW) {
    }
  }

  private void setupGeneralPath() {
    globalPath = new Point[68];

    //top, left
    globalPath[0] = new Point(rectDim+(93/2), 37.2*4.5);
    globalPath[1] = new Point(rectDim+(93/2), 37.2*5.5);
    globalPath[2] = new Point(rectDim+(93/2), 37.2*6.5);
    globalPath[3] = new Point(rectDim+(93/2)+10, 37.2*7.5);
    globalPath[4] = new Point(37.2*7.5, rectDim+(93/2)+10);
    //left, top
    globalPath[5] = new Point(37.2*6.5, rectDim+(93/2));
    globalPath[6] = new Point(37.2*5.5, rectDim+(93/2));
    globalPath[7] = new Point(37.2*4.5, rectDim+(93/2));
    globalPath[8] = new Point(37.2*3.5, rectDim+(93/2));
    globalPath[9] = new Point(37.2*2.5, rectDim+(93/2));
    globalPath[10] = new Point(37.2*1.5, rectDim+(93/2));
    globalPath[11] = new Point(37.2*0.5, rectDim+(93/2));
    //left
    globalPath[12] = new Point(37.2*0.5, sizeY/2);
    //left, bottom
    globalPath[13] = new Point(37.2*0.5, sizeY-rectDim-(93/2));
    globalPath[14] = new Point(37.2*1.5, sizeY-rectDim-(93/2));
    globalPath[15] = new Point(37.2*2.5, sizeY-rectDim-(93/2));
    globalPath[16] = new Point(37.2*3.5, sizeY-rectDim-(93/2));
    globalPath[17] = new Point(37.2*4.5, sizeY-rectDim-(93/2));
    globalPath[18] = new Point(37.2*5.5, sizeY-rectDim-(93/2+10));
    globalPath[19] = new Point(37.2*6.5, sizeY-rectDim-(93/2+10));
    globalPath[20] = new Point(37.2*7.5, sizeY-rectDim-(93/2+10));
    //bottom, left
    globalPath[21] = new Point(rectDim+(93/2)+10, sizeY-(37.2*7.5));
    globalPath[22] = new Point(rectDim+(93/2), sizeY-(37.2*6.5));
    globalPath[23] = new Point(rectDim+(93/2), sizeY-(37.2*5.5));
    globalPath[24] = new Point(rectDim+(93/2), sizeY-(37.2*4.5));
    globalPath[25] = new Point(rectDim+(93/2), sizeY-(37.2*3.5));
    globalPath[26] = new Point(rectDim+(93/2), sizeY-(37.2*2.5));
    globalPath[27] = new Point(rectDim+(93/2), sizeY-(37.2*1.5));
    globalPath[28] = new Point(rectDim+(93/2), sizeY-(37.2*0.5));
    //bottom
    globalPath[29] = new Point(sizeX/2, sizeY-(37.2*0.5));
    //bottom, right
    globalPath[30] = new Point(sizeX-rectDim-(93/2), sizeY-(37.2*0.5));
    globalPath[31] = new Point(sizeX-rectDim-(93/2), sizeY-(37.2*1.5));
    globalPath[32] = new Point(sizeX-rectDim-(93/2), sizeY-(37.2*2.5));
    globalPath[33] = new Point(sizeX-rectDim-(93/2), sizeY-(37.2*3.5));
    globalPath[34] = new Point(sizeX-rectDim-(93/2), sizeY-(37.2*4.5));
    globalPath[35] = new Point(sizeX-rectDim-(93/2), sizeY-(37.2*5.5));
    globalPath[36] = new Point(sizeX-rectDim-(93/2), sizeY-(37.2*6.5));
    globalPath[37] = new Point(sizeX-rectDim-(93/2+10), sizeY-(37.2*7.5));
    //right, bottom
    globalPath[38] = new Point(sizeX-(37.2*7.5), sizeY-rectDim-(93/2+10));
    globalPath[39] = new Point(sizeX-(37.2*6.5), sizeY-rectDim-(93/2));
    globalPath[40] = new Point(sizeX-(37.2*5.5), sizeY-rectDim-(93/2));
    globalPath[41] = new Point(sizeX-(37.2*4.5), sizeY-rectDim-(93/2));
    globalPath[42] = new Point(sizeX-(37.2*3.5), sizeY-rectDim-(93/2));
    globalPath[43] = new Point(sizeX-(37.2*2.5), sizeY-rectDim-(93/2));
    globalPath[44] = new Point(sizeX-(37.2*1.5), sizeY-rectDim-(93/2));
    globalPath[45] = new Point(sizeX-(37.2*0.5), sizeY-rectDim-(93/2));
    //right
    globalPath[46] = new Point(sizeX-(37.2*0.5), sizeY/2);
    //right, top
    globalPath[47] = new Point(sizeX-(37.2*0.5), rectDim+(93/2));
    globalPath[48] = new Point(sizeX-(37.2*1.5), rectDim+(93/2));
    globalPath[49] = new Point(sizeX-(37.2*2.5), rectDim+(93/2));
    globalPath[50] = new Point(sizeX-(37.2*3.5), rectDim+(93/2));
    globalPath[51] = new Point(sizeX-(37.2*4.5), rectDim+(93/2));
    globalPath[52] = new Point(sizeX-(37.2*5.5), rectDim+(93/2));
    globalPath[53] = new Point(sizeX-(37.2*6.5), rectDim+(93/2));
    globalPath[54] = new Point(sizeX-(37.2*7.5), rectDim+(93/2+10));
    //top, right
    globalPath[55] = new Point(sizeX-rectDim-(93/2+10), 37.2*7.5);
    globalPath[56] = new Point(sizeX-rectDim-(93/2), 37.2*6.5);
    globalPath[57] = new Point(sizeX-rectDim-(93/2), 37.2*5.5);
    globalPath[58] = new Point(sizeX-rectDim-(93/2), 37.2*4.5);
    globalPath[59] = new Point(sizeX-rectDim-(93/2), 37.2*3.5);
    globalPath[60] = new Point(sizeX-rectDim-(93/2), 37.2*2.5);
    globalPath[61] = new Point(sizeX-rectDim-(93/2), 37.2*1.5);
    globalPath[62] = new Point(sizeX-rectDim-(93/2), 37.2*0.5);
    //top
    globalPath[63] = new Point(sizeX/2, 37.2*0.5);
    //top, left
    globalPath[64] = new Point(rectDim+(93/2), 37.2*0.5);
    globalPath[65] = new Point(rectDim+(93/2), 37.2*1.5);
    globalPath[66] = new Point(rectDim+(93/2), 37.2*2.5);
    globalPath[67] = new Point(rectDim+(93/2), 37.2*3.5);
  }

  private void setupRed() {
    Point[] red_start;
    Point[] red_end;

    red_start = new Point[4];
    red_end = new Point[11];

    //starting _Points
    red_start[0] = new Point(rectDim/2-50, rectDim/2-50);  
    red_start[1] = new Point(rectDim/2+50, rectDim/2-50);
    red_start[2] = new Point(rectDim/2-50, rectDim/2+50);
    red_start[3] = new Point(rectDim/2+50, rectDim/2+50);
    red_end[0] = new Point(sizeX/2, 37.2*1.5);
    red_end[1] = new Point(sizeX/2, 37.2*2.5);
    red_end[2] = new Point(sizeX/2, 37.2*3.5);
    red_end[3] = new Point(sizeX/2, 37.2*4.5);
    red_end[4] = new Point(sizeX/2, 37.2*5.5);
    red_end[5] = new Point(sizeX/2, 37.2*6.5);


    //if (mousePressed == true) {
    //  for (int piecePos = 0; piecePos < 40; piecePos++) {
    //   piece_1 = globalPath[piecePos]; 
    //  }
    //}

    //if (mousePressed) {
    //  picePos++;
    //}
    
    if (mousePressed){ 
      picePos = 2;
    
  }
      piece_1 = globalPath[picePos];
      piece_2 = red_start[1];
      piece_3 = red_start[2];
      piece_4 = red_start[3];

      addLocalPathsToGlobal(red_start, red_end);
    
  }

  private void setupGreen() {
    Point[] green_start;
    Point[] green_end;

    green_start = new Point[4];
    green_end = new Point[11];

    //starting _Points
    green_start[0] = new Point(rectDim/2-50, sizeY-(rectDim/2-50));
    green_start[1] = new Point(rectDim/2+50, sizeY-(rectDim/2-50));
    green_start[2] = new Point(rectDim/2-50, sizeY-(rectDim/2+50));
    green_start[3] = new Point(rectDim/2+50, sizeY-(rectDim/2+50));
    green_end[0] = new Point(sizeX/2, 37.2*1.5);
    green_end[1] = new Point(sizeX/2, 37.2*2.5);
    green_end[2] = new Point(sizeX/2, 37.2*3.5);
    green_end[3] = new Point(sizeX/2, 37.2*4.5);
    green_end[4] = new Point(sizeX/2, 37.2*5.5);
    green_end[5] = new Point(sizeX/2, 37.2*6.5);

    piece_1 = green_start[0];
    piece_2 = green_start[1];
    piece_3 = green_start[2];
    piece_4 = green_start[3];


    try {
      shiftArray(17);
    }
    catch(Exception e) {
      System.out.println("Shifting error: "+e.getMessage());
    }
    addLocalPathsToGlobal(green_start, green_end);
  }

  public void shiftArray(int amount) throws Exception {
    //move 'amount' elements from the *start* of the array to the *end*
    Point[] shifted = new Point[0];
    for (int i = amount-1; i < globalPath.length; i++) {
      append(shifted, globalPath[i]);
    }
    for (int i=0; i < 68; i++) {
      append(shifted, globalPath[i]);
    }
    globalPath = shifted;
  }

  public void addLocalPathsToGlobal(Point[] start, Point[] end) {
    Point[] sum = new Point[0];
    for (Point s : start) {
      append(sum, s);
    }
    for (Point g : globalPath) {
      append(sum, g);
    }
    for (Point e : end) {
      append(sum, e);
    }
    globalPath = sum;
  }

  void draw() {
    int piceDim = 30;
    stroke(#000000);
    fill(#FF5722);
    ellipse(piece_1.x, piece_1.y, piceDim, piceDim);
    ellipse(piece_2.x, piece_2.y, piceDim, piceDim);
    ellipse(piece_3.x, piece_3.y, piceDim, piceDim);
    ellipse(piece_4.x, piece_4.y, piceDim, piceDim);
    print(picePos);
  }
}