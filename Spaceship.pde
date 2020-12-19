class Spaceship extends Floater  
{   
   public Spaceship()
   {
    corners = 3;  //the number of corners, a triangular floater has 3   
    xCorners = new int[corners];   
    yCorners = new int[corners];   
    xCorners[0] = -8;
    yCorners[0] = -8;
    xCorners[1] = 16;
    yCorners[1] = 0;
    xCorners[2] = -8;
    yCorners[2] = 8;
    myColor = color(256, 256, 256);   
    myCenterX = myCenterY = 250; //holds center coordinates   
    myXspeed = myYspeed = 0; //holds the speed of travel in the x and y directions   
    myPointDirection = (int)(Math.random() * 360); //holds current direction the ship is pointing in degrees    
   }
     public void hyperspace ()
  {
    myCenterX = (int)(Math.random()*500);
    myCenterY = (int)(Math.random()*500);
    myPointDirection = (int)(Math.random() * 360);
    myXspeed = 0;
    myYspeed = 0;
  }
  public double getX(){return myCenterX;}
  public double getY(){return myCenterY;}
  public double getXspeed(){return myXspeed;}
  public double getYspeed(){return myYspeed;}
  public double getPoint(){return myPointDirection;}
}
