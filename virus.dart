part of cw2game;

class Virus {

  Board board;
  int x;
  int y;
  int random;
  bool reappear = true;
  bool visible = true;
  int width;
  int height;
  ImageElement virus;
  
  Virus(this.board, this.x, this.y, this.width, this.height) {
  
    virus = document.querySelector('#virus');
    
    new Timer.periodic(const Duration(milliseconds: 6), (t) => move());
  }
  
  move() {
  
    y = y + 2;
    x = x + 2;
    random = new Random().nextInt(900);
    if (y >= board.height) {
      reappear = true;
    } else {
      reappear = false;
    }
    if (reappear) {
      visible = true;
      y = -random;
      x = random; 
    }
    draw();
  
  }
  
  draw() {
    if (visible) {
    board.context.drawImageToRect(virus, new Rectangle(x, y, width, height));
  }
  
 }
 
 }