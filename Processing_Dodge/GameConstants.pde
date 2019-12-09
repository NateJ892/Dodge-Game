class GameConstants  //Couldn't rename, too much relied on "GameConstants"w at this point
{
  //Constant Variables
  public final int roadPosition = (height/8)*3;
  public final int laneOne = roadPosition;
  public final int laneTwo = (height/16)*7;
  public final int laneThree = (height/16)*8;
  public final int frameCountUpdate = 40;
  
  //Player
  public final int playerXOffset = 40;
  public final int playerYOffset = 15;
  
  public final int playerWidth = 40;
  public final int playerHeight = 20;
  
  //Colors
  public final color Yellow = color(255, 255, 0);
  public final color Green = color(34,139,34);
  public final color Road = color(112,128,144);
  public final color obstacleColor = color(255, 0, 0);
  public final color White = color(255, 255, 255);
  
  //Dynamic Variables
  public float obstacleSpeed = 1;
  public boolean playerIsAlive = true;
  public position.playerPosition playerPosition = position.playerPosition.laneThree;
}

public static class position
{
  enum playerPosition
  {
    laneOne,
    laneTwo,
    laneThree
  }
}
