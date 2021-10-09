Dice bob;
class Dice 
{
  int myX, myY, mySize, face;
  Dice(int x, int y)
  {
    face = (int)(Math.random()*6)+1;
    myX = x;
    myY = y;
    mySize =40;
  }
  void roll() 
  {
    if (face == 1) {
      fill(0);
      ellipse(myX+20, myY+20, 7, 7);
    } else if (face == 2) {
      fill(0);
      ellipse(myX+10, myY+10, 7, 7);
      ellipse(myX+30, myY+30, 7, 7);
    } else if (face == 3) {
      fill(0);
      ellipse(myX+10, myY+10, 7, 7);
      ellipse(myX+20, myY+20, 7, 7);
      ellipse(myX+30, myY+30, 7, 7);
    } else if (face == 4) {
      fill(0);
      ellipse(myX+10, myY+10, 7, 7);
      ellipse(myX+30, myY+10, 7, 7);
      ellipse(myX+10, myY+30, 7, 7);
      ellipse(myX+30, myY+30, 7, 7);
    } else if (face == 5) {
      fill(0);
      ellipse(myX+10, myY+10, 7, 7);
      ellipse(myX+30, myY+10, 7, 7);
      ellipse(myX+10, myY+30, 7, 7);
      ellipse(myX+30, myY+30, 7, 7);
      ellipse(myX+20, myY+20, 7, 7);
    } else {
      fill(0);
      ellipse(myX+10, myY+10, 7, 7);
      ellipse(myX+10, myY+20, 7, 7);
      ellipse(myX+10, myY+30, 7, 7);
      ellipse(myX+30, myY+10, 7, 7);
      ellipse(myX+30, myY+20, 7, 7);
      ellipse(myX+30, myY+30, 7, 7);
    }
  }
  void show()
  {
    fill(255, 255, 255);
    rect(myX, myY, mySize, mySize, 10);
  }
}



void setup()
{
  background(17,130,79);
  size(800, 500);
  noLoop();
}
void draw()
{
  background(17,130,79);
  int sum=0;
  for(int y=0;y<401;y=y+40){
  for(int x=0;x<401;x=x+40){
  bob = new Dice(x, y);
  bob.show();
  bob.roll();
  sum = sum + bob.roll;
}
  }
   text("Total: " +sum,500,100);
}
void mousePressed() {
  redraw();
}

