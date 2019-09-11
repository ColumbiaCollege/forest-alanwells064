//define random variables
float rx = 0;
float ry = 0;
//setup canvas size, draw mode, & color
void setup() {
  size(400, 400);
  noLoop();
}
void draw() {
  //draw ground
  background(#40CAFF);
  fill(#865110);
  rect(0, 200, 400, 200);
  //for loop. y is the y coordinate of the tree, which increases by a random amount ever loop. the loop starts drawing trees at the top of the ground and stops when it gets to the bottom. the x coordinate of the tree is random every time.
  for (float y = random(-50, -45); y < 150; y = y + ry) {
    rx = random(-50, 350);
    ry = random(1, 30);
    stroke (0);
    strokeWeight (1);
    //tree leaves
    fill (#0CA71F);
    triangle (10+rx, 250+y, 60+rx, 200+y, 110+rx, 250+y);
    triangle (14+rx, 230+y, 60+rx, 180+y, 106+rx, 230+y);
    triangle (18+rx, 210+y, 60+rx, 160+y, 102+rx, 210+y);
    triangle (22+rx, 190+y, 60+rx, 140+y, 98+rx, 190+y);
    triangle (26+rx, 170+y, 60+rx, 120+y, 94+rx, 170+y);
    triangle (30+rx, 150+y, 60+rx, 100+y, 90+rx, 150+y);
    //tree trunk
    fill (#7E4609);
    rect (50+rx, 250+y, 20, 50);
  }
}
void mousePressed(){
 redraw(); 
}
