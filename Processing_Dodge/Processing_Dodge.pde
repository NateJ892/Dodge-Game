private int Score = 0;

GameConstants c;
GameFunctions G;
Obstacle Ob;

void setup()
{
  size(1000, 800);
  surface.setTitle("Dodge");
  surface.setAlwaysOnTop(true);
  surface.setResizable(false);
  
  c = new GameConstants();
  G = new GameFunctions();
  Ob = new Obstacle();
  Ob.init(position.playerPosition.laneOne, c.obstacleSpeed);
}

void draw()
{
  G.createScene();
  Score += G.updateScore();
  
  if (c.playerIsAlive)
  {
    fill(c.White);
    text("Score: " + Score + "\n" + "FrameRate: " + round(frameRate), 10, 10);
    
    G.drawPlayer(c.playerPosition);
    Ob.update();
  }
  else
  {
    //TODO: DEATH
    noLoop();
  }
}



void keyReleased()
{
  if (c.playerIsAlive)
  {
    switch (c.playerPosition)
    {
      case laneOne:
        if (keyCode == DOWN)
        {
          c.playerPosition = position.playerPosition.laneTwo;
        }  //Nothing For Up
        break;
      case laneTwo:
        if (keyCode == UP)
        {
          c.playerPosition = position.playerPosition.laneOne;
        }
        if (keyCode == DOWN)
        {
          c.playerPosition = position.playerPosition.laneThree;
        }
        break;
      case laneThree:
        if (keyCode == UP)
        {
          c.playerPosition = position.playerPosition.laneTwo;
        }  //Do Nothing For Down
        break;
    }
  }
}
