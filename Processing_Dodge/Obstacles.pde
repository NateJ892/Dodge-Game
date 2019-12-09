class Obstacle
{
  private int Lane;
  private float Speed;
  GameConstants c = new GameConstants();
  
  void init(int LaneNum, float Obstacle_Speed)
  {
    Lane = LaneNum;
    Speed = Obstacle_Speed;
  }
}
