ArrayList<Slice> slices = new ArrayList<Slice>();
int numSlices = 20;

void setup() {
  size(640,640,P2D);
  for (int i=0; i<numSlices; i++) {
    slices.add(new Slice(50, 150));
  }
}

void draw() {
  background(0);
  for (int i=0; i<slices.size(); i++) {
    slices.get(i).run();
  }
  
  surface.setTitle("" + frameRate);
}
