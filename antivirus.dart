part of cw2game;

class Antivirus {

      Board board;
      int x;
      int y;
      int width;
      int height;
      Virus virus1;
      Points points;
      Scoreboard scoreboard;
      
      
      Antivirus(this.board, this.x, this.y, this.width, this.height,
                this.virus1)
             {
       
        document.onMouseDown.listen((MouseEvent e) {
          x = e.offset.x -140;
          y = e.offset.y;
        });
        //Redraw every 8 sec.
        new Timer.periodic(const Duration(milliseconds: 6), (t) => draw());
        
      }
      
      draw() {
        y--;
        board.context.beginPath();
        board.context.fillStyle = 'green';
        board.context.fillRect(x, y, width, height);
        board.context.closePath();
        board.context.stroke();
        if (x > virus1.x && x < virus1.x + virus1.width &&
        y > virus1.y && y < virus1.y + virus1.height) {
           virus1.visible = false;
          // Add 1 point object
          //scoreboard.context.fillText("1",135,40);
        }
       }
      
} 