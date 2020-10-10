  void setup()
  {
      size(800, 800);
      noLoop();
  }
  void draw()
  {    
    background(197);
        for(int i = 0; i <= 700; i += 105){
           for(int j = 0; j <= 700; j += 105){
        Die one = new Die(35 + j, 30 + i);
        one.show();
        }}
        
  }
  void mousePressed()
  {
      redraw();
  }
  class Die //models one single dice cube
  {
      int myX, myY, dots;
      
      Die(int x, int y) //constructor
      {
          myX = x;
          myY = y;
          dots = (int)((Math.random()*6)+1);
      }
      void roll()
      {
          
      }
      void show()
      {
      square(myX, myY, 100);
      int sum = (int)((Math.random()*200)+60);
      fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
      if(dots == 1){
          ellipse(myX + 50, myY + 50, 15, 15);
      }else if(dots == 2){
          ellipse(myX + 15, myY + 15, 15, 15);
          ellipse(myX + 85, myY + 85, 15, 15);
      }else if(dots == 3){
          ellipse(myX + 15, myY + 15, 15, 15);
          ellipse(myX + 50, myY + 50, 15, 15);
          ellipse(myX + 85, myY + 85, 15, 15);
      }else if(dots == 4){
          ellipse(myX + 15, myY + 15, 15, 15);
          ellipse(myX + 15, myY + 85, 15, 15);
          ellipse(myX + 85, myY + 15, 15, 15);
          ellipse(myX + 85, myY + 85, 15, 15);
      }else if(dots == 5){
          ellipse(myX + 15, myY + 15, 15, 15);
          ellipse(myX + 15, myY + 85, 15, 15);
          ellipse(myX + 85, myY + 15, 15, 15);
          ellipse(myX + 85, myY + 85, 15, 15);
          ellipse(myX + 50, myY + 50, 15, 15);
      }else{
          ellipse(myX + 15, myY + 15, 15, 15);
          ellipse(myX + 15, myY + 50, 15, 15);
          ellipse(myX + 15, myY + 85, 15, 15);
          ellipse(myX + 85, myY + 15, 15, 15);
          ellipse(myX + 85, myY + 50, 15, 15);
          ellipse(myX + 85, myY + 85, 15, 15);
      }text("Total: " + sum, 15, 15);
   }
}
