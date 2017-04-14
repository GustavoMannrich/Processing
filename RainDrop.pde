public class RainDrop {
  public float posY = 0;
  float posX = 0; 
  float velocity = 5;
  float strokeWeight = 1;
  float lenght = 8;

  //Create a rain drop in a random X position with a random thickness
  public RainDrop() {
    posX = random(700);
    strokeWeight = random(0.5, 3);
  }

  //Show the rain drop
  public void show() {
    stroke(255, 0, 0);
    strokeWeight(strokeWeight);
    line(posX, posY, posX, posY + lenght);
  }
  
  //Update the position
  public void update() {
    posY += velocity * strokeWeight;
  }
}