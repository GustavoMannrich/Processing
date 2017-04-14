PImage image;
float tamanho = 200;

void setup() {
  size(1366, 768);
  image = loadImage("Battlefield.jpg");
  background(50);
}

void draw() {
  for (int i = 0; i < 100; i++) {
    float x = random(width);
    float y = random(height);

    color c = image.get(int(x), int(y));

    stroke(c);
    noFill();
    ellipse(x, y, tamanho, tamanho);
  }
  
  if (tamanho >= 5) 
    tamanho -= 0.1;
}