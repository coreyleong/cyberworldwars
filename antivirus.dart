part of cw2game;

class Antivirus {

      Board board;
      int x;
      int y;
      int width;
      int height;
      bool hit = true;
      Virus virus;
      
      
      Antivirus(this.board, this.x, this.y, this.width, this.height)
             {
       
        document.onMouseDown.listen((MouseEvent e) {
          x = e.offset.x -140;
          y = e.offset.y;
        });
        //Redraw every 8 sec.
        new Timer.periodic(const Duration(milliseconds: 8), (t) => draw());
      }
      
      draw() {
        y--;
        board.context.beginPath();
        board.context.fillStyle = 'green';
        board.context.fillRect(x, y, width, height);
        board.context.closePath();
        board.context.stroke();
       }
      
} 