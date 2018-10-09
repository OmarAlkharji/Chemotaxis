//declare bacteria variables here   

Bacteria[] eve;
void setup()   
{     
  //initialize bacteria variables here   
  size(900, 900);
  eve = new Bacteria[1000];
  for (int i = 0; i < eve.length; i++)
  {
    eve[i] = new Bacteria();
  }
}   
void draw()   
{    
  //move and show the bacteria   
  background(0);
  for (int i = 0; i < eve.length; i++)
  {
    eve[i].show();
    eve[i].move();
  }
}
class Bacteria    
{
  int myX, myY;
  int R, G, B;
  boolean alive = true;
  Bacteria()
  {
    myX = myY = 450;
    R = (int)(Math.random()*255);
    G = (int)(Math.random()*255);
    B = (int)(Math.random()*255);
  }
  void move()
  {
    int direction = (int)(Math.random()*4);
    if (direction == 0)
    {
      myX = myX + 20; //right
    } else if (direction == 1)
    {
      myX = myX - 20; //left
    } else if (direction == 2)
    {
      myY = myY + 20; //down
    } else // direction must be 3
    {
      myY = myY - 20; //up
    }
  }    

  void show()
  { 
    fill(R, G, B);
    noStroke();
    if(alive == true);
  rect(myX, myY, 30, 30);
  if(get(mouseX,mouseY) != color(0,0,0))
  alive = false;
  }
}
