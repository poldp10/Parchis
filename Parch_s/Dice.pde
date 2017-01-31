public class Dice {
  int dice;
  PImage dIm;
  int rollNum;

  private static final int DICE_IM_COUNT = 6;
  int currFace = 0;

  public Dice() {
    dice = 1; 
    rollNum = 0;
    dIm = loadImage("dice.JPG");
  }

  void mouseClicked() {
    if (mouseX > 850 && mouseX < 1075 && mouseY > 625 && mouseY < 675) {
      dice = (int) Math.round(random(1, 6));
      currFace = dice-1;
      rollNum ++;
    
    }
  }


  void draw() {
    println(dice); 
    if (currFace < 0) {
      currFace = 2;
    }
    if (currFace > DICE_IM_COUNT-1) {
      currFace = DICE_IM_COUNT-1;
    }
    int width = (dIm.width / DICE_IM_COUNT);
    int x = width * currFace;
    int y = 0;
    image(dIm.get(x, y, width, dIm.height), 900, 500);
    
    if (mouseX > 850 && mouseX < 1075 && mouseY > 625 && mouseY < 675) {
     fill(#2E7D32);
      cursor(HAND);
      
    } else {
      cursor(ARROW);
      fill(#4CAF50);
    }
    
    textSize(30);
    rect(850, 625, 225, 50);
    fill(#000000);
    text("Role the dice", 875, 665);
  }
}