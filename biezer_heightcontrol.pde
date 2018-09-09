float x1,x2,x3,x4,y1,y2,y3,y4;
float t;
float r,g,b,a;
float variance;
float w,h;

void setup() {
  size(1280,720);
  background(210,200,225);
  frameRate(140);

  x1 = 0;
  y1 = height/2;
  x4 = 1280;
  y4 = height/2;
  
}

void draw(){
  
  variance = map(noise(t),0,1,-1,1);
  float r = map(mouseX,0,1280,50,190);
  float b = map(mouseX,0,1280,70,255);
  
  h = map(mouseX,0,1280,100,2000);
  x2 = width/3 + 300 * map(noise(t+315),0,1,-1,1);
  y2 = height/2 + h * map(noise (t+325),0,1,-1,1);
  x3 = 2*width/3 + 300 * map(noise (t+335),0,1,-1,1);
  y3 = height/2 + h * map(noise (t+345),0,1,-1,1);
  
  noFill();
  stroke(r,0,b,10);
  strokeWeight(1);
  bezier(x1,y1,x2,y2,x3,y3,x4,y4);
  
  t +=0.002;

}  
