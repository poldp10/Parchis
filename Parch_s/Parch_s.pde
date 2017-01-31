int sizeX = 800;
int sizeY = 800;


Board board;
Player red;
Player green;
Dice dice;

void setup() {
  background(255);
  size(1100, 800);
  board = new Board(sizeX, sizeY);
  red = new Player(Player.RED);
  dice = new Dice();
  //green = new Player();
  }

void mousePressed(MouseEvent e){
  dice.mouseClicked();
  
}


void draw() {
  board.drawSquares();
  board.drawBaseCircles();
  board.draw();
  red.draw();
  dice.draw();
}