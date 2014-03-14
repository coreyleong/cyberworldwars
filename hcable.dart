part of cw2game;

class Hcable {

  Board board;
  int x;
  int y;
  int width;
  int height;
  ImageElement hcable;
  
  Hcable(this.board, this.x, this.y, this.width, this.height) {
    hcable = document.querySelector('#hcable');
    draw();
  }


  draw() {
    board.context.drawImageToRect(hcable, new Rectangle(x, y, width, height));
  }  


}