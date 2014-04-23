part of cw2game;

class Virus {

  Board board;
  Scoreboard scoreboard;
  int x;
  int y;
  int random;
  bool reappear = true;
  bool visible = true;
  bool hit = true;
  bool miss = true;
  int width;
  int height;
  ImageElement virus;
  ImageElement explosion;
  
  Virus(this.board, this.x, this.y, this.width, this.height) {
  
    virus = document.querySelector('#virus');
    explosion = document.querySelector('#explosion');
    
    new Timer.periodic(const Duration(milliseconds: 4), (t) => move());
 
  }
  
  move() {
  
    if (x <= 375) {
      reappear = true;
    } else {
      reappear = false;
    }
    if (reappear) {
      visible = true;
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
    } else {
      board.context.drawImageToRect(explosion, new Rectangle(x, y, width, height));
    }
  }
 }