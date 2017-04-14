ArrayList<RainDrop> drops = new ArrayList();

void setup() {
  size(700, 500);
  frameRate(60);
}

void draw() {
  background(230);
  
  //Create two rain drops per frame
  drops.add(new RainDrop());
  drops.add(new RainDrop());
  
  //Show and update the rain drops
  for (int i = 0; i < drops.size(); i++) {
    drops.get(i).update();
    drops.get(i).show();
    
    //Remove from the ArrayList if is off the screen
    if (drops.get(i).posY > height)
      drops.remove(drops.get(i));
  }  
}