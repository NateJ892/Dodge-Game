class Obstacle
{
  GameConstants c = new GameConstants();
  private position.playerPosition Lane;
  private PVector Position;
  
  public void init(int Lanes)
  {
    if (Lanes == 1) Lane = position.playerPosition.laneOne;
    else if (Lanes == 2) Lane = position.playerPosition.laneTwo;
    else if (Lanes == 3) Lane = position.playerPosition.laneThree;
    
    Position = new PVector(width, c.getLane(Lane)+c.entityYOffset);
  }
  
  public void update()
  {
    if (Position.x == (-c.entityHeight)){}  //Do Nothing
    else
    {
      Position.x -= c.obstacleSpeed;
      noStroke();
      fill(c.Enemy);
      rect(Position.x, Position.y, c.entityWidth, c.entityHeight);
    }
  }
  //private void checkCollision(){}  //TODO: Check Collision & Execute Death Scene
}
