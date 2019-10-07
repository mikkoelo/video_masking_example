// Before importing video-library, you have to install it.
// To install, select Sketch > Import Library > Add Library > Search 'Video' > Install
import processing.video.*;
// Create Movie-object and PImage object for storing the video and the image.
Movie myMovie;
PImage mask;

void setup() {
  size(800, 720);
  // Video and the image are loaded from data-folder.
  // Video and the mask-image have to be the same size. 
  // Both are 800 x 720 in this example.
  myMovie = new Movie(this, "example.mp4");
  mask = loadImage("mask.png");
  // This is a setting: when video is over, it starts again from the first frame.
  myMovie.loop();
}

void draw() {
  // Draw a white rectangle to the canvas
  fill(255);
  rect(0, 0, 800, 720);
  // Mask the video with the image. 
  // Masking means that color value of each pixel in the image is used as the opacity of the same pixel in the video.
  // Black (0) results in 0% opacity and white (255) results in 100 % opacity
  myMovie.mask(mask);
  // Draw the current (masked) frame of the video to the canvas.
  image(myMovie, 0, 0);
}

void movieEvent(Movie m) {
  // Always read the next frame of the video.
  m.read();
}

