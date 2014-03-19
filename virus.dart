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
  
    if (x <= 375) {
      reappear = true;
    } else {
      reappear = false;
    }
    if (reappear) {
      visible = true;
     // y = 50;
      x = x + 1;
    }
    draw();
    
    if ((x >= 376 ) && ( y <= 294)) {
      y = y +1;
    }
    draw();  
    
  }
  
  draw() {
    if (visible) {
    board.context.drawImageToRect(virus, new Rectangle(x, y, width, height));
  }
  
 }
 
 }