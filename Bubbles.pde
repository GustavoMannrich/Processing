ArrayList<Bubble> bubbles = new ArrayList(); //<>//
int maxBubbles = 1200;

void setup() {
  size(640, 360);
  frameRate(60);
}

void draw() {
  background(230);

  //Create new bubbles until reach the limit
  if (bubbles.size() <= maxBubbles) 
    createNewBubble();

  for (int i = bubbles.size() - 1; i >= 0; i--) {  
    Bubble bubbleA = bubbles.get(i); 

    if (bubbleA == null)
      continue; 

    bubbleA.show();

    if (bubbleA.getIsGrowing())
      bubbleA.grow();

    //Verify if is overlapping with other bubbles 
    for (int j = bubbles.size() - 1; j >= 0; j--) {   
      Bubble bubbleB = bubbles.get(j);

      if (bubbleB == null)
        continue;

      if (bubbleA.equals(bubbleB))
        continue;

      float distance = dist(mouseX, mouseY, bubbleB.getX(), bubbleB.getY());

      if (distance < (bubbleB.getRadius() + 15f)) {
        bubbles.set(j, null); 
        continue;
      }

      distance = dist(bubbleA.getX(), bubbleA.getY(), bubbleB.getX(), bubbleB.getY());

      //If is overlapping stop growing
      if (distance < (bubbleA.getRadius() + bubbleB.getRadius())) {
        bubbleA.setIsGrowing(false);
        break; //<>//
      }
    }
  }

  for (int i = bubbles.size() - 1; i >= 0; i--) {
    if (bubbles.get(i) == null)
      bubbles.remove(i);
  }

  //Restart 
  if (mousePressed)
    bubbles.clear();
}

//Create a new bubble object
private void createNewBubble() {
  float x = random(width);
  float y = random(height);
  boolean validSpot = true;

  //verify if is not inside another bubble
  for (Bubble bubble : bubbles) {
    float distance = dist(x, y, bubble.getX(), bubble.getY());

    if (distance <= bubble.getRadius())
      validSpot = false;
  }

  //if was a valid spot create the new bubble in that position, otherwise try again
  if (!validSpot)
    createNewBubble();
  else
    bubbles.add(new Bubble(x, y));
}