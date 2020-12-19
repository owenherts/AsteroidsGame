class Bullet extends Floater{
 public Bullet(Spaceship ship){
   myCenterX = ship.getX();
   myCenterY = ship.getY();
   myXspeed = ship.getXspeed();
   myYspeed = ship.getYspeed();
   myPointDirection = ship.getPoint();
   accelerate(5);
 }
 public void show(){
   fill(200);
   ellipse((float)myCenterX,(float)myCenterY, 10, 10);
 }
}
