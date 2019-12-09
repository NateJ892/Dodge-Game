class GameConstants
{
  public float obstacleSpeed = 1;
  
  public int roadPosition = (height/8)*3;
  public int laneOne = roadPosition;
  public int laneTwo = (height/16)*7;
  public int laneThree = (height/16)*8;
  
  public color Yellow = color(255, 255, 0);
  public color Green = color(34,139,34);
  public color Road = color(112,128,144);
  public color obstacleColor = color(255, 0, 0);
  
  public boolean playerIsAlive = true;
  public position.playerPosition playerPosition = position.playerPosition.laneOne;
}

static class position
{
  enum playerPosition
  {
    laneOne,
    laneTwo,
    laneThree
  }
}
