//your code here
NormalParticle [] dots;
void setup()
{
  size(300,300);
  dots = new NormalParticle[10];
  for(int i  =0; i<dots.length; i++)
  {
    dots[i] = new NormalParticle();
  }
  //your code here
}
void draw()
{
  background(200);
  for (int i = 0 ;i<dots.length; i++){
    dots[i].show();
    dots[i].move();
  }
  //your code here
}
class NormalParticle
{
 double  myY;
 double myX;
 int myColor;
 double myAngle;
 double mySpeed;
 NormalParticle ()
 {
   myColor = 200;
 myX = 150.0;
 myY = 150.0;
 mySpeed = Math.random()*10;
 myAngle = Math.PI*2*Math.random();
  //your code here
}
void move()
{
  myX= myX +(Math.cos(myAngle))*mySpeed;
  myY= myY +(Math.sin(myAngle))*mySpeed;
}
void show()
{
  fill(200,50,myColor);
  ellipse((float)myX,(float) myY, 10,10);
}
}
interface Particle
{
  public void show();
  public void move();
  //your code here
}
class OddballParticle //uses an interface
{
  //your code here
}
class JumboParticle //uses inheritance
{
  //your code here
}
