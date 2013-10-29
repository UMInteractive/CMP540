class Bar {
  ArrayList<Particle> particles;
  float w;
  float h;
  color inside;
  color outline;
  AudioSample sound;
  PVector position;
  PVector motion;
  float timeLeft;
  boolean playing;

  Bar(PVector pos, color c, AudioSample s) {
    position = pos;
    particles = new ArrayList<Particle>(); // empty array list
    inside = c;
    sound = s;
    w = displayWidth/6;
    h = height/2;
    timeLeft = 0;
    playing = false;
  }

  void display() {
    if (timeLeft > 0) {
      fill(inside, map(timeLeft, 50, 0, 255, 0));
      stroke(outline);
      rect(position.x, position.y, w, h);
      timeLeft--;
    }

    if (timeLeft < 30) {
      playing = false;
    }

      for (int i = particles.size()-1; i >= 0; i--) {
        Particle particle = particles.get(i);
        particle.display();
        if (particle.timeLeft <= 0) {
          particles.remove(i);
        }
      }
    }

  void play(float x, float y) {
    sound.trigger();
    particles = new ArrayList<Particle>(); 

    for (int i = 0; i < 100; i++) {
      PVector pos = new PVector();
      pos.x = x;
      pos.y = y;
      Particle tmpParticle = new Particle(pos);
      particles.add(tmpParticle);
    }
    timeLeft = 50;
    playing = true;
  }

  boolean touchingMe(float x, float y) {
    if (!playing) {
      if (x <= position.x + w && x >= position.x && y <= position.y + h && y >= position.y) {
        return true;
      } 
      else {
        return false;
      }
    }
    return false;
  }
}

