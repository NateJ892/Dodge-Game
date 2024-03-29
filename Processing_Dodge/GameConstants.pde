/***********************************************
* Nathan Johnson                               *
* J. Juhn                                      *
* ICS2O                                        *
* 16/12/2019                                   *
* Class to hold "global" constants & variables *
***********************************************/

class GameConstants  //Couldn't rename, too much relied on "GameConstants" at this point, same for playerPosition enum
{
  //Constants
  public final int roadPosition = (height/8)*3;
  public final int laneOne = roadPosition;
  public final int laneTwo = (height/16)*7;
  public final int laneThree = (height/16)*8;
  
  public final int frameCountUpdate = round(frameRate)*2;
  public final int delayEntity = 80;
  
  //Entity
  public final int entityXOffset = 40;
  public final int entityYOffset = 15;
  public final int entityWidth = 40;
  public final int entityHeight = 20;
  public final int spawnRate = frameCountUpdate*6;
  
  //Colors
  public final color Yellow = color(255, 255, 0);
  public final color Green = color(34,139,34);
  public final color Road = color(112,128,144);
  public final color obstacleColor = color(255, 0, 0);
  public final color White = color(255, 255, 255);
  public final color Enemy = color(255, 0, 0);
  
  //Dynamic Variables
  public float obstacleSpeed = 5;
  public float entityLiveTime = 20;
  
  public int spawnLoopCount = 0;
  
  public boolean playerIsAlive = true;
  public position.playerPosition playerPosition = position.playerPosition.laneTwo;  
  
  public int getLane(position.playerPosition Pos)
  {
    switch (Pos)
    {
      case laneOne:  //Checks Lane 1 In Position
        return laneOne;  //Return Static Int Constants If True
      case laneTwo:
        return laneTwo;
      case laneThree:
        return laneThree;
      default:
        return 0;
    }
  }
}

public static class position
{
  enum playerPosition
  {
    laneOne,
    laneTwo,
    laneThree
  }
}
