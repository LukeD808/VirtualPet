void setup()
{
  //background ocean
  size(500,500);
  background(0,100,150);
}
void draw()
{
  noStroke();
  fill(235,190,0);
  ellipse(250,200,75,75);
  fill(255,255,255);
  arc(250,200,75,75,0,PI,OPEN);
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
  ellipse(225,200,10,10);
  ellipse(275,200,10,10);
  //fins
  fill(255,255,255);
  triangle(212,200,215,230,190,190);
  triangle(288,200,286,230,312,190);
}
