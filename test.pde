import processing.sound.*;
Sound s;
WhiteNoise noise;
import controlP5.*;
ControlP5 cp5;
 

void setup() {
  size(200, 200);
  cp5 = new ControlP5(this);
  cp5.addSlider("slider1").setPosition(0, 0).setSize(200, 20).setRange(0, 100);
  
  noise = new WhiteNoise(this);
  noise.play(205, 0.2);

  // Create a Sound object for globally controlling the output volume.
  s = new Sound(this);
}

void draw() {
  // Map vertical mouse position to volume.
  float value = map(cp5.getController("slider1").getValue(), 0.0, 100, 0.0, 0.4);
  
  //float amplitude = map(mouseY, 0, height, 0.4, 0.0);

  // Instead of setting the volume for every oscillator individually, we can just
  // control the overall output volume of the whole Sound library.
  s.volume(value);
}
