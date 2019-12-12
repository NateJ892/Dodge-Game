private int Score = 0;

GameConstants c;
GameFunctions G;

void setup()
{
  size(1000, 800);
  surface.setTitle("Dodge");
  surface.setAlwaysOnTop(true);
  surface.setResizable(false);
  
  c = new GameConstants();
  G = new GameFunctions();
}

void draw()
{
  if (c.playerIsAlive)
  {
    G.createScene();
    Score += G.updateScore();
    
    fill(c.White);
    text("Score: " + Score + "    " + "FrameRate: " + round(frameRate), 10, 15);
    G.drawPlayer(c.playerPosition);
    G.startObstacles();
    G.updateThem(c.playerPosition, c.playerIsAlive);
  }
  else
  {
    background(0);
    G.createDeathScene();
  }
}



void keyReleased()
{
  if (c.playerIsAlive)
  {
    switch (c.playerPosition)
    {
      case laneOne:
        if (keyCode == DOWN) c.playerPosition = position.playerPosition.laneTwo;
        break;
      case laneTwo:
        if (keyCode == UP) c.playerPosition = position.playerPosition.laneOne;
        if (keyCode == DOWN) c.playerPosition = position.playerPosition.laneThree;
        break;
      case laneThree:
        if (keyCode == UP) c.playerPosition = position.playerPosition.laneTwo;
        break;
    }
  }
}
