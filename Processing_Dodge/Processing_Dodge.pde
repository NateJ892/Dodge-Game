private int Score = 0;
GameConstants c;

void setup()
{
  size(1000, 800);
  surface.setTitle("Dodge");
  surface.setAlwaysOnTop(true);
  surface.setResizable(false);
  
  c = new GameConstants();
}

void draw()
{
  createScene();
  if (c.playerIsAlive)
  {
    Score += 1;
  }
  else
  {
    
  }
}

void createScene()
{
  background(c.Green);
  fill(c.Road);
  noStroke();
  rect(0, c.roadPosition, width, 160);
  
  stroke(c.Yellow);
  line(0, c.laneTwo, width, c.laneTwo);
  line(0, c.laneThree, width, c.laneThree);
}

void keyReleased()
{
  if (keyCode == UP)
  {
    
  }
}
