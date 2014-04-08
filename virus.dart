part of cw2game;

class Virus {

  Board board;
  int x;
  int y;
  int random;
  bool reappear = true;
  bool visible = true;
  int width;
  int height;
  ImageElement virus;
  ImageElement virus2;
  ImageElement explosion;
  
  Virus(this.board, this.x, this.y, this.width, this.height) {
  
    //virus = document.querySelector('#virus');
    //explosion = document.querySelector('#explosion');
    
    //new Timer.periodic(const Duration(milliseconds: 6), (t) => move());
    
      attack1();
      //attack2();
 
  }
  
  attack1() {
  
      virus = document.querySelector('#virus');
      new Timer.periodic(const Duration(milliseconds: 6), (t) => move());
  }
  
  attack2() {
  
      virus2 = document.querySelector('#virus');
      new Timer.periodic(const Duration(milliseconds: 6), (t) => move());
  }  
  
  
  move() {
  
    if (x <= 375) {
    //  reappear = true;
    //} else {
    //  reappear = false;
    //}
    //if (reappear) {
      visible = true;
      x = x + 1;
    }
    draw();
    
    if ((x >= 376 ) && ( y <= 294)) {
      y = y +1;
    }
       
   // document.body.onClick.listen((e) {
    
   //   var clickedElem = e.target;
   //   print('You clicked the ${clickedElem.id} element. ');
   //   if (clickedElem == 376 ) {
   //     print('clicked item = 376'); 
   //     visible = false;
   //     draw();
   //   }
   //  });
    
    draw();  
  }
  
  draw() {
    if (visible) {
      board.context.drawImageToRect(virus, new Rectangle(x, y, width, height));
    //} else {
        //board.context.drawImageToRect(virus2, new Rectangle(x, y, width, height));
    //  board.context.drawImageToRect(explosion, new Rectangle(x, y, width, height));
  }
  
  
 }
 
 
 }