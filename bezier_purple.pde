float x1,x2,x3,x4,y1,y2,y3,y4;//Bezier coordinates
float t;
float r,g,b;
float variance;

void setup() {
  size(1280,720);
  background(210,200,225);
  frameRate(60);

  x1 = width/2-300;
  y1 = height/2;
  x4 = width/2+300;
  y4 = height/2;
  
  ellipseMode(CENTER);
  fill(230);
  noStroke();
  smooth();
  ellipse(width/2,height/2,600,600);
}

void draw(){
  
  variance = map(noise(t),0,1,-1,1);
  int r = int(180+50*variance);
  int g = int(180*noise(t+325));
  int b = int(200+50*variance);
  //To set the color within purple
  
  x2 = width/3 + 200 * map(noise(t+315),0,1,-1,1);
  y2 = height/2 + 500 * map(noise (t+325),0,1,-1,1);
  x3 = 2*width/3 + 200 * map(noise (t+335),0,1,-1,1);
  y3 = height/2 + 500 * map(noise (t+345),0,1,-1,1);
  
  noFill();
  stroke(r,g,b,10);
  strokeWeight(1);
  bezier(x1,y1,x2,y2,x3,y3,x4,y4);
  
  t +=0.002;

}  
