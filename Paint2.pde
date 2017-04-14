PImage image;
float tamanho = 200;
float alpha = 0;

void setup() {
  size(1920, 1080);
  image = loadImage("MortalKombat.jpg");
  background(50);
}

void draw() {
  for (int i = 0; i < 100; i++) {
    float x = random(width);
    float y = random(height);

    color c = image.get(int(x), int(y));

    noStroke();
    fill(c, alpha);
    ellipse(x, y, tamanho, tamanho);
  }
  
  if (tamanho > 5) 
    tamanho -= 0.1;
    
  if (alpha < 255)
    alpha += 0.05;
}