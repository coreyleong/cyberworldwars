part of cw2game;

class Vcable {

  Board board;
  int x;
  int y;
  int width;
  int height;
  ImageElement vcable;
  ImageElement vcable2; 
  
  Vcable(this.board, this.x, this.y, this.width, this.height) {
    vcable = document.querySelector('#vcable');
    vcable2 = document.querySelector('#vcable');
    draw();
  }


  draw() {
    board.context.drawImageToRect(vcable, new Rectangle(x, y, width, height));
    board.context.drawImageToRect(vcable2, new Rectangle(x, y, width, height));
  }  


}