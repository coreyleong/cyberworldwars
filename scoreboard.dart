part of cw2game;

class Scoreboard {

  int x = 0;
  int y = 0;
  int width;
  int height;
  CanvasRenderingContext2D context;
  
  Scoreboard(CanvasElement canvas) {
  
    context = canvas.getContext('2d');
    width = canvas.width;
    height = canvas.height;
    clear();
    text();
    
  }
  
  border() {
    
    context.beginPath();
    context.fillStyle = 'white';
    context.rect(x, y, width, height);
    context.fillRect(x, y, width, height);
    context.closePath();
    context.stroke(); 
  
  }
  
  clear() {
  
    context.clearRect(x, y, width, height);
    border();
  
  }
  
  draw() {
    clear(); 
  }
  
  text() {
    context.fillStyle = "black";
    context.font="10px Arial";
    context.fillText("Player Lives",10,10);
    context.fillText("Points Scored",120,10);
    context.fillText("Network Health",220,10);
    
    context.fillStyle = "green";
    context.font = "28px Arial";
    context.fillText("3",30,40); 
    
    context.fillStyle = "blue";
    context.font = "28px Arial";
    context.fillText("10,000",110,40); 
    
    context.fillStyle = "green";
    context.font = "28px Arial";
    context.fillText("Good", 221, 40);
    
    
  }

}