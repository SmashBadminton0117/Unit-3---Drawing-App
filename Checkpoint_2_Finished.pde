// Unit 3 Checkpoints:
// Lawrence Mo
// March 3rd, 2025
// Block 2-4

//color pallette
color backgroundyellow = #FDFE6F;
color lightyellow      = #FFE609;
color mediumyellow     = #FAD00D;
color darkyellow       = #FBA500;
color darkestyellow    = #FA6700;
color white            = #FFFFFF;

color selectedColor;


void setup() {
  size(800, 800);
  strokeWeight(3);
  stroke(darkestyellow);
  selectedColor = darkyellow;
  

}  // end of Setup ===============================



void draw() {
  background(backgroundyellow);
  
  
  
  //buttons
  
  stroke(white);
  
  stroke(darkestyellow);
  
  tactile(150, 600, 100, 50);
  fill(lightyellow);
  rect(150, 600, 100, 50); //x, y, w, h

  tactile(350, 600, 100, 50);
  fill(mediumyellow);
  rect(350, 600, 100, 50); //x, y, w, h
  
  tactile(550, 600, 100, 50);
  fill(darkyellow);
  rect(550, 600, 100, 50); //x, y, w, h
  
  
  //indicator
  stroke(darkestyellow);
  fill(selectedColor);
  circle(400, 300, 400);
  
} // end of Draw ==================================


void tactile(int x, int y, int w, int h) {
  if (mouseX > x && mouseX < x + w && mouseY > y && mouseY < y + h) {
    stroke(white);
  } else {
    stroke(darkestyellow);
  }
}




void mouseReleased() {
 if (mouseX > 150 && mouseX < 250 && mouseY > 600 && mouseY < 650)
   selectedColor = lightyellow;
   
  
 if (mouseX > 350 && mouseX < 450 && mouseY > 600 && mouseY < 650)
  selectedColor = mediumyellow;
   
 if (mouseX > 550 && mouseX < 650 && mouseY > 600 && mouseY < 650)
   selectedColor = darkyellow;
   
}
