class GameFunctions
{  
  GameConstants G = new GameConstants();
  private int tickTally = 0;
  Obstacle[] O;
  
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
  
  public void startObstacles(int size)
  {
    O = new Obstacle[size];
    for (int i = 0; i < size; i++)
    {
      O[i] = new Obstacle();
      O[i].init();
    }
  }
  
  public void updateObstacles()
  {
    for (int i = 0; i < c.numberOfObstacles; i++)
    {
      O[i].update();
    }
  }
  
  public int updateScore()
  {
    if ((tickTally % G.frameCountUpdate) == 0) return 1;
    else return 0;
  }
}
