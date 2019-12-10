class Obstacle
{
  GameConstants c = new GameConstants();
  private float Speed;
  private position.playerPosition Lane;
  private PVector Position;
  
  public void init(float Obstacle_Speed)
  {
    int TEMP = (int)random(1, 4);
    println(TEMP);
    if (TEMP == 1)
    {
      Lane = position.playerPosition.laneOne;
    }
    else if (TEMP == 2)
    {
      Lane = position.playerPosition.laneTwo;
    }
    else if (TEMP == 3)
    {
      Lane = position.playerPosition.laneThree;
    }
    
    Speed = Obstacle_Speed;
    Position = new PVector((int) random(width, width+c.StartingPoints), c.getLane(Lane)+c.entityYOffset);
  }
  
  void update()
  {
    noStroke();
    fill(c.Enemy);
    rect(Position.x, Position.y, c.entityWidth, c.entityHeight);
    Position.x -= 1;
    
  }
}
