
Particle [] dots;

void setup()
{
  size(300,300);
  
  dots = new Particle[500];
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
  background(0);
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
   myColor = 64;
 myX = mouseX;
 myY =mouseY ;
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
  stroke(0);
  fill(((int)(Math.random()*105+150)),255,255);
  ellipse((float)myX, (float)myY, 7,7);
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
  myX = mouseX;
  myY = mouseY;
  
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
  stroke(255);
  fill(242,25,myColor);
  line((float)myX, (float)myY+20, (float)myX, (float)myY-20);
  line((float)myX+20, (float)myY, (float)myX-20, (float)myY);
  line((float)myX-10, (float)myY+10, (float)myX+10, (float)myY-10);
  line((float)myX-10, (float)myY-10, (float)myX+10, (float)myY+10);
}
  //your code here
}
class JumboParticle extends NormalParticle//uses inheritance
{
  public void show()
  {
    fill(#C4EDFF);
    ellipse((float)myX,(float) myY, 30,30);
}
  //your code here
}
void mousePressed()
{
   dots = new Particle[500];
  int i = 0;
  dots[0] = new OddballParticle();
dots[1] = new JumboParticle();
  
  for( i  =2; i<dots.length; i++)
  {
    dots[i] = new NormalParticle();
  }
}
