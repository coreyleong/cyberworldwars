part of cw2game;

class Cloud {

  Board board;
  int x;
  int y;
  int width;
  int height;
  ImageElement cloud;
  
  Cloud(this.board, this.x, this.y, this.width, this.height) {
  
    cloud = document.querySelector('#cloud');
    draw();
  }


  draw() {
    board.context.drawImageToRect(cloud, new Rectangle(x, y, width, height));
  }  


}