part of cw2game;

class Scoreboard {

  int x = 0;
  int y = 0;
  int width;
  int height;
  var points = "0";
  Virus virus1;
  CanvasRenderingContext2D context;
  
  Scoreboard(CanvasElement canvas)  {
  
    context = canvas.getContext('2d');
    width = canvas.width;
    height = canvas.height;
    
    draw();
    text();
    playerlives();
    pointsscored();
    networkhealth();
    
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
    context.fillText("Points Scored",110,10);
    context.fillText("Network Health",210,10);
    
  }
  
  playerlives() {
  
    context.fillStyle = "green";
    context.font = "28px Arial";
    context.fillText("3",30,40); 
  }
  
  pointsscored() {
   
    context.fillStyle = "blue";
    context.font = "28px Arial";
    context.fillText("0",135,40); 
  }
  
  networkhealth() {
  
    //context.font = "28px Arial";
    
  
    context.fillStyle = "red";
    context.font = "24px Arial";
    context.fillText("Warning", 200, 40);
    
 }
}