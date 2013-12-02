
class WordTile extends Word {

  PVector location;
  float   tileB;
  float   tileW;
  float   tileH;
  color   tileColor;
  float   tileFS = 24;
  int     fA = int(textAscent()) ;
  int     fD = int(textDescent());

  WordTile(String newWord) {
    super(newWord);
    setSize();
    location  = new PVector(0, 0);
    tileColor = color(0);
  }  //WordTile()

  void setXY(float x, float y) {
    location.x = x;
    location.y = y;
  }  //setXY()

  void setFontSize() {
    tileFS = map(freq, 1, 23, 9, 340);
    setSize();
  }  //setFontSize()

  void setSize() {
    textSize(tileFS);
    tileW  = textWidth(word);
    tileH  = textAscent();
    tileB  = textDescent();
  }  //setTileSize()

  boolean intersect(WordTile t2) {
    float left1  = location.x;
    float right1 = location.x + tileW;
    float top1   = location.y - tileH;
    float bot1   = location.y + tileB;
    float left2  = t2.location.x;
    float right2 = left2 + t2.tileW;
    float bot2   = t2.location.y + tileB;
    float top2   = bot2 - t2.tileH;
    
    return !(right1 < left2 || left1 > right2 || bot1 < top2 || top1 > bot2);
  }//intersect

  void display() {
    fill(tileColor);
    textSize(tileFS);
    text(word, location.x, location.y);
  }  //display()
  
}  //class WordTile

