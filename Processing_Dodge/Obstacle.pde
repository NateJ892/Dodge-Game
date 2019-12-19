/*************************************
* Nathan Johnson                     *
* J. Juhn                            *
* ICS2O                              *
* 16/12/2019                         *
* Class For Obstacles                *
*************************************/

class Obstacle
{
  GameConstants c = new GameConstants();
  GameFunctions G = new GameFunctions();
  
  private position.playerPosition Lane;
  private PVector Position;
  
  public void init(int Lanes, int StartOffset)
  {
    if (Lanes == 1) 
    {
      Lane = position.playerPosition.laneOne;
    }
    else if (Lanes == 2) 
    {
      Lane = position.playerPosition.laneTwo;
    }
    else if (Lanes == 3) 
    {
      Lane = position.playerPosition.laneThree;
    }
    
    Position = new PVector(width+StartOffset, c.getLane(Lane)+c.entityYOffset);
  }
  
  public void update(position.playerPosition pos, boolean alive)
  {
    if (alive)
    {
      if (Position.x <= (-c.entityHeight))
      {
        this.init((int)random(1, 4), (int)random(1, 50));
      }
      else
      {
        if (!(Collision(pos)))
        {
          Position.x -= c.obstacleSpeed;
          noStroke();
          fill(c.Enemy);
          rect(Position.x, Position.y, c.entityWidth, c.entityHeight);
        }
        else
        {
          G.createDeathScene();
        }
      }
    }
  }
  
 public boolean Collision(position.playerPosition po)
 {
   switch (po)
   {
     case laneOne:
       return checkColl(c.laneOne+c.entityYOffset);
     case laneTwo:
       return checkColl(c.laneTwo+c.entityYOffset);
     case laneThree:
       return checkColl(c.laneThree+c.entityYOffset);
     default:
       return false;
   }
 }
 
 private boolean checkColl(int Y)
 {
   if (c.entityXOffset < this.Position.x + c.entityWidth && c.entityXOffset + c.entityWidth > this.Position.x && Y < Position.y + c.entityHeight && Y + c.entityWidth > Position.y)
   {
     return true;
   }
   else
   {
     return false;
   }
 }
}
