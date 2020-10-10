  Die one;
  void setup()
  {
      noLoop();
      size(800, 800);
      textAlign(CENTER);
  }
  void draw()
  {
      background(197);
      int sum = 0;
      one = new Die(30,30);
      one.show();
      sum = sum + one.numDots;
      fill(0);
      text("Total: " + sum, 20, 20);
  }
  void mousePressed()
  {
      redraw();
  }
  class Die //models one single dice cube
  {
      int numDots, myX, myY;
      
      Die(int x, int y) //constructor
      {
          myX = x;
          myY = y;
          numDots = (int)((Math.random()*6)+1);
      }
      void roll()
      {
      fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
      if(numDots == 1){
          ellipse(myX + 50, myY + 50, 15, 15);
      }else if(numDots == 2){
          ellipse(myX + 15, myY + 15, 15, 15);
          ellipse(myX + 85, myY + 85, 15, 15);
      }else if(numDots == 3){
          ellipse(myX + 15, myY + 15, 15, 15);
          ellipse(myX + 50, myY + 50, 15, 15);
          ellipse(myX + 85, myY + 85, 15, 15);
      }else if(numDots == 4){
          ellipse(myX + 15, myY + 15, 15, 15);
          ellipse(myX + 15, myY + 85, 15, 15);
          ellipse(myX + 85, myY + 15, 15, 15);
          ellipse(myX + 85, myY + 85, 15, 15);
      }else if(numDots == 5){
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
      }
      }
      void show()
      {
          int len = 100;
            fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
            square(myX, myY, len);
            one.roll();
          
      }
  }
