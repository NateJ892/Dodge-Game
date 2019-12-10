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
    
    c.spawnDistanceMin = (int)random(c.spawnDistanceMin, c.spawnDistanceMin+1000);
    Position = new PVector((int) random(width, width+c.spawnDistanceMin), c.getLane(Lane)+c.entityYOffset);
  }
  
  public void update()
  {
    noStroke();
    fill(c.Enemy);
    rect(Position.x, Position.y, c.entityWidth, c.entityHeight);
    
    if (Position.x == (-c.entityHeight)) init();
    else Position.x -= c.obstacleSpeed;
  }
  
  //private void checkCollision(){}  //TODO: Check Collision & Execute Death Scene
}
