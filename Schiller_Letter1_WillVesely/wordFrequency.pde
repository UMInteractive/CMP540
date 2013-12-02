
class WordFreq {

  ArrayList <WordTile> wordFrequency;
  String [] stopWords = loadStrings("stopWords.txt");

  WordFreq(String[] tokens) {

    wordFrequency = new ArrayList();
    for (String t:tokens) {
      if (! _isStopWord(t)) {
        int index = _search(t, wordFrequency);
        if (index >= 0) {
          (wordFrequency.get(index)).incr();
        }//if 
        else {
          wordFrequency.add(new WordTile(t));
        }//else
      }//if
    }//for
  }//wordFreq()

  void arrange(int N) {
    WordTile tile;
    for (int i = 0; i < N; i++) {
      tile = wordFrequency.get(i);
      tile.setFontSize();

      float cx     = width/2;
      float cy     = height/2;
      float R      = 0.0;
      float dR     = 0.2;
      float theta  = 0.0;
      float dTheta = 0.6;
      float px;
      float py;

      do {
        float x = cx + R*cos(theta);
        float y = cy + R*sin(theta);
        tile.setXY(x, y);
        px      = x;
        py      = y;
        theta  += dTheta;
        R      += dR;
      }//do
      while (!clear (i));
    }//for
  }//arange()

  boolean clear(int n) {
    WordTile tile1 = wordFrequency.get(n);
    for (int i = 0; i < n; i++) {
      WordTile tile2 = wordFrequency.get(i);
      if (tile1.intersect(tile2)) {
        return false;
      }//if
    }//for
    return true;
  }//clear()

  void display(int N) {
    for (int i = 0; i < N; i++) {
      WordTile tile = wordFrequency.get(i);
      tile.display();
    }//for
  }//display

    int N() { //# of table entries
    return wordFrequency.size();
  }//N()

  String[] samples() { //Return all words
    String[] k = new String[N()];
    int i = 0;
    for (Word w:wordFrequency) {
      k[i++] = w.getWord();
    }//for
    return k;
  }//samples()

  int[] counts() { //return frequencies
    int [] v = new int[N()];
    int i = 0;
    for (WordTile w:wordFrequency) {
      v[i++] = w.getFreq();
    }
    return v;
  }//counts()

  int maxFreq() {
    return max(counts());
  }//maxFreq()

  int _search(String w, ArrayList<WordTile>L) {
    for (int i = 0; i < L.size(); i++) {
      if (L.get(i).getWord().equals(w))
        return i;
    }
    return -1;
  }// _search()

  boolean _isStopWord(String word) {
    for (String stopWord:stopWords) {
      if (word.equals(stopWord)) {
        return true;
      }
    }
    return false;
  }// _isStopWord()

}//class WordFreq

