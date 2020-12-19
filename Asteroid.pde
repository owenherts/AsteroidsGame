class Asteroid extends Floater
{
  private double rotSpeed;
  public Asteroid()
  {
    rotSpeed = Math.random()*2-1;
    corners = 6; 
    xCorners = new int[corners];   
    yCorners = new int[corners];   
    xCorners[0] = -15;
    yCorners[0] = -13;
    xCorners[1] = 17;
    yCorners[1] = -12;
    xCorners[2] = 23;
    yCorners[2] = 0;
    xCorners[3] = 9;
    yCorners[3] = 16;
    xCorners[4] = -19;
    yCorners[4] = 12;
    xCorners[5] = -7;
    yCorners[5] = 0;
    myColor = color(150, 100, 0);   
    myCenterX = Math.random()*500;
    myCenterY = Math.random()*500;
    myXspeed = Math.random()*2-1;
    myYspeed = Math.random()*2-1;
  }
  public void move()
  {
    turn(rotSpeed);
    super.move();
  }  
  public double getX(){
  return myCenterX;
}
  public double getY(){
  return myCenterY;
}
}
