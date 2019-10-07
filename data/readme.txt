Video 'example.mp4' is a cropped version of a video from Pixabay:
https://pixabay.com/fi/videos/syksy-kausi-luonne-lehdet-puu-23881/

Image mask.png is created with Processing, with following code. You can save the frame by clicking the mouse on the canvas.

--

void setup(){
  size(800, 720);
}

void draw(){
  fill(0);
  rect(0, 0, 800, 720);
  fill(255);
  ellipse(width/2, height/2, 200, 200);
  
}

void mouseClicked(){
  saveFrame("#####.png");
}
