//your variable declarations here
ArrayList <Bullet> shots = new ArrayList <Bullet>();
ArrayList <Asteroid> meteor = new ArrayList <Asteroid>();
Spaceship bob = new Spaceship();
Star[] nightSky = new Star[200];
public void setup() 
{
  size(500,500);
  for(int i = 0; i < nightSky.length; i++){
    nightSky[i] = new Star();
  }
   for(int i = 0; i < 20; i++) {
    meteor.add(new Asteroid());
  }
}
public void draw() 
{
  background(0);  
  bob.show();
  bob.move();
  for(int i = 0; i < nightSky.length; i++)
  {
    nightSky[i].show();
  }
  for(int i = 0; i < meteor.size(); i++)
  {
   meteor.get(i).show();
   meteor.get(i).move();
   float distance1 = dist((float)bob.getX(), (float)bob.getY(), (float)meteor.get(i).getX(), (float)meteor.get(i).getY());
    if(distance1 < 20) {
      meteor.remove(i);
      bob.myCenterX = 250;
      bob.myCenterY = 250;
      bob.myXspeed = 0;
      bob.myYspeed = 0;
    }
  }
  for(int i = 0; i < shots.size(); i++){
    shots.get(i).move();
    shots.get(i).show();
  }
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
 }else if(key == 'q'){
   shots.add(new Bullet(bob));
 }
}
