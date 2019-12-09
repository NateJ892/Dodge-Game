class Obstacle
{
  GameConstants c = new GameConstants();
  private float Speed;
  private position.playerPosition Lane;
  private PVector Position;
  
  public void init(position.playerPosition pos, float Obstacle_Speed)
  {
    Lane = pos;
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
