part of cw2game;

class Board {

  int x = 0;
  int y = 0;
  int width;
  int height;
  Cloud cloud;
  Router router;
  NSwitch nswitch;
  Player player;
  Desktop desktop;
  Virus virus;
  Hcable hcable;
  Vcable vcable;
  Vcable vcable2;
  CanvasRenderingContext2D context;
  
  Board(CanvasElement canvas) {
  
    context = canvas.getContext('2d');
    width = canvas.width;
    height = canvas.height;
    cloud = new Cloud(this, 50, 50, 140, 90);
    router = new Router(this, 375, 50, 80, 108);
    nswitch = new NSwitch(this, 355, 200, 110, 35);
    desktop = new Desktop(this, 365, 293, 87, 85);
    player = new Player(this, 350, 350, 70, 130);
    virus = new Virus(this, 50, 100, 73, 75);
    hcable = new Hcable(this, 170, 95, 230, 11);
    vcable = new Vcable(this, 400, 128, 11, 91);
    vcable2 = new Vcable(this, 400, 220, 11, 91);
    border();
    window.animationFrame.then(gameLoop);
  }
  
  gameLoop(num delta) {
  
    draw();
    window.animationFrame.then(gameLoop);
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
    cloud.draw();
    router.draw();
    nswitch.draw();
    desktop.draw();
    player.draw(); 
    virus.draw();
    hcable.draw();
    vcable.draw();
    vcable2.draw();
  }

}