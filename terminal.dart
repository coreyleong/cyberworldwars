part of cw2game;

class Terminal {

  int x = 0;
  int y = 0;
  int width;
  int height;
  CanvasRenderingContext2D context;
  
  Terminal(CanvasElement canvas) {
  
    context = canvas.getContext('2d');
    width = canvas.width;
    height = canvas.height;
    clear();
    text();
  }
  
  border() {
    
    context.beginPath();
    context.fillStyle = 'black';
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
  
    context.fillStyle = "#00FF00";
    context.font = "12px Arial";
    context.fillText("Welcome to CyberWorldWars>",2,12);  
  
  }
  

}