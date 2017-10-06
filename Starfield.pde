Particle [] dots;
void setup()
{
  size(300,300);
  
  dots = new Particle[10];
  int i = 0;
  dots[0] = new OddballParticle();
  dots[1] = new JumboParticle();
  
  for( i  =2; i<dots.length; i++)
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
class NormalParticle implements Particle
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
public void move()
{
  myX= myX +(Math.cos(myAngle))*mySpeed;
  myY= myY +(Math.sin(myAngle))*mySpeed;
}
public void show()
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
class OddballParticle implements Particle //uses an interface
{
   double  myY;
 double myX;
 int myColor;
 double myAngle;
 double mySpeed;
 OddballParticle ()
 {
   myColor = 200;
 myX = 150.0;
 myY = 150.0;
 mySpeed = Math.random()*2;
 myAngle = Math.PI*2*Math.random();
  //your code here
}
public void move()
{
  myX= myX +(Math.cos(myAngle))*mySpeed;
  myY= myY +(Math.sin(myAngle))*mySpeed;
}
public void show()
{
  fill(myColor,5,10);
  ellipse((float)myX,(float) myY, 10,10);
}
  //your code here
}
class JumboParticle extends NormalParticle//uses inheritance
{
  public void show()
  {
    fill(5,myColor,5);
    ellipse((float)myX,(float) myY, 30,30);
  }
  //your code here
}
