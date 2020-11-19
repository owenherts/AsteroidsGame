//your variable declarations here
Spaceship bob = new Spaceship();
Star[] nightSky = new Star[200];
public void setup() 
{
  size(500,500);
  for(int i = 0; i < nightSky.length; i++){
    nightSky[i] = new Star();
  }
}
public void draw() 
{
  background(0);
  for(int i = 0; i < nightSky.length; i++)
  {
    nightSky[i].show();
  }
  bob.show();
  bob.move();
}
public void keyPressed()
{
 if(key == 'a'){
   bob.turn(-25);
 }else if(key == 'd'){
   bob.turn(25);
 }else if(key == 'w'){
   bob.accelerate(1);
 }else if(key == 's'){
   bob.accelerate(-1);
 }else if(key == 'h'){
   bob.hyperspace();
 }
}
