//define random variables
float rx = 0;
int x = 0;
float ry = 0;
//define front/furthest tree variable
int f = 0;
//define scroll speed variable
int s = 1;
//define text variable
boolean t = true;
//define tree arrays
int[] treeX = new int[20];
{
  treeX[0]=760;
  treeX[1]=720;
  treeX[2]=680;
  treeX[3]=640;
  treeX[4]=600;
  treeX[5]=560;
  treeX[6]=520;
  treeX[7]=480;
  treeX[8]=440;
  treeX[9]=400;
  treeX[10]=360;
  treeX[11]=320;
  treeX[12]=280;
  treeX[13]=240;
  treeX[14]=200;
  treeX[15]=160;
  treeX[16]=120;
  treeX[17]=80;
  treeX[18]=40;
  treeX[19]=0;
}
float[] treeY = new float[20];
{
  treeY[0]=random(-50, 150);
  treeY[1]=random(-50, 150);
  treeY[2]=random(-50, 150);
  treeY[3]=random(-50, 150);
  treeY[4]=random(-50, 150);
  treeY[5]=random(-50, 150);
  treeY[6]=random(-50, 150);
  treeY[7]=random(-50, 150);
  treeY[8]=random(-50, 150);
  treeY[9]=random(-50, 150);
  treeY[10]=random(-50, 150);
  treeY[11]=random(-50, 150);
  treeY[12]=random(-50, 150);
  treeY[13]=random(-50, 150);
  treeY[14]=random(-50, 150);
  treeY[15]=random(-50, 150);
  treeY[16]=random(-50, 150);
  treeY[17]=random(-50, 150);
  treeY[18]=random(-50, 150);
  treeY[19]=random(-50, 150);
}
//setup canvas size
void setup() {
  size(800, 400);
}
void draw() {
  //draw ground & sky
  background(#40CAFF);
  fill(#865110);
  rect(0, 200, 800, 200);
  //draw text if mouse has not been clicked
  fill(255);
  textSize(20);
  if (t==true) {
    text("CLICK TO CHANGE SPEED",10,30);
  }
  //whenever the tree in front scrolls off screen, loop it back to the start with a new random starting location
  if (treeX[f]>800) {
    rx = random(-150, -100);
    x = int(rx);
    treeX[f] = x;
    treeY[f] = random(-50, 150);
    f = (f+1) % 20;
    println(f);
  }
  //for every tree, draw it at its coordinates
  for (int i = 0; i < 20; i++) {
    //tree leaves
    fill (#0CA71F);
    triangle (10+treeX[i], 250+treeY[i], 60+treeX[i], 200+treeY[i], 110+treeX[i], 250+treeY[i]);
    triangle (14+treeX[i], 230+treeY[i], 60+treeX[i], 180+treeY[i], 106+treeX[i], 230+treeY[i]);
    triangle (18+treeX[i], 210+treeY[i], 60+treeX[i], 160+treeY[i], 102+treeX[i], 210+treeY[i]);
    triangle (22+treeX[i], 190+treeY[i], 60+treeX[i], 140+treeY[i], 98+treeX[i], 190+treeY[i]);
    triangle (26+treeX[i], 170+treeY[i], 60+treeX[i], 120+treeY[i], 94+treeX[i], 170+treeY[i]);
    triangle (30+treeX[i], 150+treeY[i], 60+treeX[i], 100+treeY[i], 90+treeX[i], 150+treeY[i]);
    //tree trunk
    fill (#7E4609);
    rect (50+treeX[i], 250+treeY[i], 20, 50);
    //increase the tree's x coordinate for the next draw loop (depending on speed)
    treeX[i] = treeX[i]+s;
  }
}
//increase speed and hide text on mouse click
void mousePressed() {
  s = (s++)%3+1;
  t = false;
}
