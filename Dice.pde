  Target one;
Target two;
void setup()
{
  noLoop();
  textAlign(CENTER);
}
void draw()
{
  background(197);
  one = new Target(25, 50);
  two = new Target(75, 50);
  one.show();
  two.show();
  int sum = one.numRings + two.numRings; 
  fill(0);
  text("Total: " +sum,50,20);
}
void mousePressed()
{
  redraw();
}
class Target
{
  int numRings, myX, myY;
  Target(int x, int y) //constructor initializes the 3 variables
  {
    myX = x;
    myY = y;
    numRings = (int)(Math.random()*3+1);
  }

 void show()
  {
    int siz = 50;
    for(int i = 0; i < numRings; i++)
    {
      fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
      ellipse(myX,myY,siz,siz);
      siz-=16;
    }
    fill(0);
    text(numRings,myX,90);
  }
}
