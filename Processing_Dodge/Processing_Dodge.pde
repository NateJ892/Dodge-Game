private int Score = 0;

GameConstants c;
GameFunctions G;
Obstacle Ob;  //TODO: Create 10 Random Car Arrays

void setup()
{
  size(1000, 800);
  surface.setTitle("Dodge");
  surface.setAlwaysOnTop(true);
  surface.setResizable(false);
  
  c = new GameConstants();
  G = new GameFunctions();
  Ob = new Obstacle();
  Ob.init(c.obstacleSpeed);
}

void draw()
{
  if (c.playerIsAlive)
  {
    G.createScene();
    Score += G.updateScore();
    
    fill(c.White);
    text("Score: " + Score + "\n" + "FrameRate: " + round(frameRate), 10, 10);
    
    G.drawPlayer(c.playerPosition);
    Ob.update();
  }
  else
  {
    background(0);
    textSize(64);
    textAlign(CENTER);
    text("You Died!", width/2, (height/2)-40);
    textSize(32);
    text("Final Score: " + Score, width/2, height/2);
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
          c.playerPosition = position.playerPosition.laneTwo;
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
