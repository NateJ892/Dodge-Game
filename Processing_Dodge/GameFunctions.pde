class GameFunctions
{  
  GameConstants G = new GameConstants();
  private int tickTally = 0;
  private int entityTicker = 0;
  Obstacle[] O = new Obstacle[9];
  private boolean[][] Patterns = {
    {true, false, true},
    {false, true, true},
    {true, true, false},
    {false, true, false},
    {false, false, true}};
  
  public void createScene()
  {
    background(c.Green);
    fill(c.Road);
    noStroke();
    rect(0, c.roadPosition, width, 150);
  
    stroke(c.Yellow);
    strokeWeight(2);
    line(0, c.laneTwo, width, c.laneTwo);
    line(0, c.laneThree, width, c.laneThree);
    
    tickTally += 1;  //TickTally == frameCount
  }
  
  public void createDeathScene()
  {
    background(0);
    textSize(64);
    textAlign(CENTER);
    text("You Died!", width/2, (height/2)-40);
    textSize(32);
    text("Final Score: " + Score, width/2, height/2);
    noLoop();
  }
  
  public void drawPlayer(position.playerPosition pos)
  {
    fill(c.White);
    if (pos == position.playerPosition.laneOne)
    {
      noStroke();
      rect(G.entityXOffset, G.laneOne+G.entityYOffset, G.entityWidth, G.entityHeight);
    }
    else if (pos == position.playerPosition.laneTwo)
    {
      noStroke();
      rect(G.entityXOffset, G.laneTwo+G.entityYOffset, G.entityWidth, G.entityHeight);
    }
    else if (pos == position.playerPosition.laneThree)
    {
      noStroke();
      rect(G.entityXOffset, G.laneThree+G.entityYOffset, G.entityWidth, G.entityHeight);
    }
  }
  
  public int updateScore()
  {
    if ((tickTally % G.frameCountUpdate) == 0) return 1;
    else return 0;
  }
  
  public void startObstacles()
  {
    if ((entityTicker % c.spawnRate) == 0)
    {
      int Random = (int)random(-1, 5);
      if (c.spawnLoopCount == 0)
      {
        c.spawnLoopCount++;
        for (int i = 0; i < 3; i++)
        {
          if (Patterns[Random][i] == true)
          {
            O[i] = new Obstacle();
            O[i].init(i+1);
          }
        }
      }
      else if (c.spawnLoopCount == 1)
      {
        c.spawnLoopCount++;
        for (int i = 0; i < 3; i++)
        {
          if (Patterns[Random][i] == true)
          {
            O[i+3] = new Obstacle();
            O[i+3].init(i+1);
          }
        }
      }
      else if (c.spawnLoopCount == 2)
      {
        c.spawnLoopCount++;
        for (int i = 0; i < 3; i++)
        {
          if (Patterns[Random][i] == true)
          {
            O[i+6] = new Obstacle();
            O[i+6].init(i+1);
          }
        }
      }
    }
  }
  
  public void updateThem()
  {
    for (int i = 0; i < 9; i++)
    {
      if (O[i] != null)
      {
        O[i].update();
      }
    }
  }
}
