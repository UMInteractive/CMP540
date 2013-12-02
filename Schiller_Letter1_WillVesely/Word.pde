

class Word {                 

  String word;
  int freq;

  Word(String newWord) {   
    word = newWord;
    freq = 1;
  }  // Word()

  String getWord() {
    return word;
  }  // getWord()

  int getFreq() {
    return freq;
  }  // getFreq()

  void incr() { 
    freq++;
  }  // incr()

}  //class Word

