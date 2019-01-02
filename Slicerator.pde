ArrayList<Slice> slices = new ArrayList<Slice>();
int numSlices = 20;

void setup() {
  size(640,640,P2D);
  for (int i=0; i<numSlices; i++) {
    slices.add(new Slice(50, 150));
  }
  background(0);
}

void draw() {
  noStroke();
  fill(0,10);
  rect(0,0,width,height);
 
  for (int i=0; i<slices.size(); i++) {
    Slice slice = slices.get(i);
    slice.speed *= 0.99;
    if (slice.speed < 0.01) slice.init();
    slice.run();
  }
  
  surface.setTitle("" + frameRate);
}
