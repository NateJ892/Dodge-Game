class GameFunctions
{  
  GameConstants G = new GameConstants();
  
  public void createScene()
  {
    background(c.Green);
    fill(c.Road);
    noStroke();
    rect(0, c.roadPosition, width, 160);
  
    stroke(c.Yellow);
    strokeWeight(2);
    line(0, c.laneTwo, width, c.laneTwo);
    line(0, c.laneThree, width, c.laneThree);
  }
  
  public void drawPlayer(position.playerPosition pos)
  {
    if (pos == position.playerPosition.laneOne)
    {
      noStroke();
      rect(G.playerXOffset, G.laneOne+G.playerYOffset, G.playerWidth, G.playerHeight);
    }
    else if (pos == position.playerPosition.laneTwo)
    {
      noStroke();
      rect(G.playerXOffset, G.laneTwo+G.playerYOffset, G.playerWidth, G.playerHeight);
    }
    else if (pos == position.playerPosition.laneThree)
    {
      noStroke();
      rect(G.playerXOffset, G.laneThree+G.playerYOffset, G.playerWidth, G.playerHeight);
    }
  }
}
