// Unit 3 Checkpoints:
// Lawrence Mo
// March 3rd, 2025
// Block 2-4

//color pallette
color backgroundblue = #5A8AD8;
color lightblue      = #82B3F3;
color mediumblue     = #70B3ED;
color darkblue       = #347CCE;
color darkestblue    = #305896;
color white          = #FFFFFF;

color selectedColor;

void setup() {
  size(800, 800);
  strokeWeight(3);
  stroke(darkestblue);
  selectedColor = darkblue;
  
  
}  // end of Setup ===============================



void draw() {
  background(backgroundblue);
  
  //buttons
  
  stroke(white);
  
  stroke(darkestblue);
  
  tactile(200, 600, 50);
  fill(lightblue);
  circle(200, 600, 100);
  
  tactile(400, 600, 50);
  fill(mediumblue);
  circle(400, 600, 100);
  
  tactile(600, 600, 50);
  fill(darkblue);
  circle(600, 600, 100);
  
  
  //indicator
  stroke(darkestblue);
  fill(selectedColor);
  square(200, 80, 400);
  
} // end of Draw ==================================


void tactile (int x, int y, int r) {
   if (dist(x, y, mouseX, mouseY) < r) {
    stroke(white);
   } else {
     stroke(darkestblue);
   }
}



void mouseReleased() {
  //lightblue button
  if (dist(200, 600, mouseX, mouseY) < 50) {
    selectedColor = lightblue;
  }
  
  
  //mediumblue button
  if (dist(400, 600, mouseX, mouseY) < 50) {
    selectedColor = mediumblue;
  }
  
  
  //darkblue button
  if (dist(600, 600, mouseX, mouseY) < 50) {
    selectedColor = darkblue;
  }
  
  
}
