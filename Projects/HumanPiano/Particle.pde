class Particle {
  PVector position;
  PVector trajectory;
  float w;
  float h;
  float timeLeft;
  color pColor;

  Particle(PVector pos, color c) {
    position = pos;
    PVector traj = new PVector();
    traj.x = random(-3,3);
    traj.y = random(1,10);
    trajectory = traj;
    w = 5;
    h = 5;
    pColor = c;
    timeLeft = 100;
  }

  void display() {
    noStroke();
    fill(pColor);
    ellipse(position.x, position.y, w, h); 
    position.x += trajectory.x;
    position.y += trajectory.y;
    timeLeft--;
  }
}

