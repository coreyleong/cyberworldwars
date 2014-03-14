part of cw2game;

class NSwitch {

  Board board;
  int x;
  int y;
  int width;
  int height;
  ImageElement nswitch;
  
  NSwitch(this.board, this.x, this.y, this.width, this.height) {
  
    nswitch = document.querySelector('#nswitch');
    draw();
  }


  draw() {
    board.context.drawImageToRect(nswitch, new Rectangle(x, y, width, height));
  }  


}