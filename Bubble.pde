public class Bubble {
  float x;
  float y;
  float size = 0;
  boolean isGrowing = true;
  float r = random(255);
  float g = random(255);
  float b = random(255);

  //Creates a new bubble at the given position
  public Bubble(float x, float y) {
    this.x = x;
    this.y = y;
  }
  
  //Show the bubble
  public void show() {
    strokeWeight(1);
    stroke(r, g, b);
    noFill();
    ellipse(x, y, size, size);
  }
  
  //Increase the size 
  public void grow() {
    size++;
  }
  
  // GETTERS AND SETTERS //
  public float getX() {
    return x;
  }
  
  public float getY() {
    return y;
  }
  
  public float getRadius() {
    return size/2;
  }
  
  public void setIsGrowing(boolean isGrowing) {
    this.isGrowing = isGrowing;
  }
  
  public boolean getIsGrowing() {
    return isGrowing;
  }
}