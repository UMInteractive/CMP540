class PianoKey {
  AudioSample note;

  PianoKey(int num) {
    note = minim.loadSample( "note" + num + ".wav", 512);
  }
  
  void play() {
     note.trigger(); 
  }
}

