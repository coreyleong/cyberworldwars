part of cw2game;

class Player {

  Board board;
  int x;
  int y;
  int width;
  int height;
  ImageElement player;
  
  Player(this.board, this.x, this.y, this.width, this.height) {
  
    player = document.querySelector('#man_player');
    document.onMouseMove.listen((MouseEvent e) {
      x = e.offset.x - 175;
      y = e.offset.y - 1;
    });
    draw();
  }


  draw() {
    board.context.drawImageToRect(player, new Rectangle(x, y, width, height));
  }  
}
