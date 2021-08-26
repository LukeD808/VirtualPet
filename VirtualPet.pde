import processing.serial.*;
import cc.arduino.*;
Arduino arduino;

void setup()
{
  //background ocean
  size(500,450);
  background(0,100,150);
  arduino = new Arduino(this, Arduino.list()[0], 57600);
}
void draw()
{
  background(0,100,150);
  int y = arduino.analogRead(2);
  int z = arduino.analogRead(5);
  int x = arduino.analogRead(7);
  //System.out.print(x);
  noStroke();
  fill(235,190,0);
  ellipse(250,200,75+y/10,75+y/10);
  fill(255,255,255);
  arc(250,200,75+y/10,75+y/10,0,PI,OPEN);
  //eyeball + mouth
  stroke(1);
  fill(255,255,255);
  ellipse(225,200,25,25);
  ellipse(275,200,25,25);
  fill(255,255,255);
  ellipse(250,210,10,5);
  //iris
  noStroke();
  fill(0,0,0);
  ellipse(225,200,10+x/10,10+x/10);
  ellipse(275,200,10+x/10,10+x/10);
  //fins
  fill(255,255,255);
  triangle(212-y/20,200,214-y/20-z/15,230,188-y/20-z/15,190);
  triangle(288+y/20,200,286+y/20+z/15,230,312+y/20+z/15,190);
}
