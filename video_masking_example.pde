import processing.video.*;
Movie myMovie;
PImage mask;

void setup() {
  size(708, 694);
  // Video and the mask-image have to be the same size
  myMovie = new Movie(this, "example.mp4");
  mask = loadImage("mask.png");
  // This is a setting: when video is over, it starts again from the first frame.
  myMovie.loop();
}

void draw() {
  // Draw a white rectangle to the canvas
  fill(255);
  rect(0, 0, 708, 694);
  // Mask the video with the image. 
  // Masking means that color value of each pixel in the image is used as the opacity of the same pixel in the video.
  // Black (0) means 0% opacity and white (255) means 100 % opacity
  myMovie.mask(mask);
  // Draw the frame of the video.
  image(myMovie, 0, 0);
}

void movieEvent(Movie m) {
  // Always read the next frame of the video.
  m.read();
}

