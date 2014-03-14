part of cw2game;

class Desktop {

  Board board;
  int x;
  int y;
  int width;
  int height;
  ImageElement desktop;
  
  Desktop(this.board, this.x, this.y, this.width, this.height) {
  
    desktop = document.querySelector('#desktop');
    draw();
  }


  draw() {
    board.context.drawImageToRect(desktop, new Rectangle(x, y, width, height));
  }  
}