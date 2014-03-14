part of cw2game;

class Router {

  Board board;
  int x;
  int y;
  int width;
  int height;
  ImageElement router;
  
  Router(this.board, this.x, this.y, this.width, this.height) {
  
    router = document.querySelector('#router');
    draw();
  }


  draw() {
    board.context.drawImageToRect(router, new Rectangle(x, y, width, height));
  }  


}