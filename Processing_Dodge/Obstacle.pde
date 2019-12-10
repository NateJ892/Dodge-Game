class Obstacle
{
  GameConstants c = new GameConstants();
  private position.playerPosition Lane;
  private PVector Position;
  
  public void init()
  {
    int TEMP = (int)random(1, 4);
    if (TEMP == 1) Lane = position.playerPosition.laneOne;
    else if (TEMP == 2) Lane = position.playerPosition.laneTwo;
    else if (TEMP == 3) Lane = position.playerPosition.laneThree;
    
    Position = new PVector((int) random(width, width+c.StartingBound), c.getLane(Lane)+c.entityYOffset);
  }
  
  void update()
  {
    noStroke();
    fill(c.Enemy);
    rect(Position.x, Position.y, c.entityWidth, c.entityHeight);
    Position.x -= c.obstacleSpeed;
    //TODO: Check Collision & Execute Death Scene
  }
}
