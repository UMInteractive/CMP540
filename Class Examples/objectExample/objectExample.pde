

//class object
Person myPerson;
Person myOtherPerson;
Morsel myMorsel;

void setup() {
  size(500,500);
//object  = create new use the constructor
  myPerson = new Person(50, 101);
  myOtherPerson = new Person(40, 6);
  myMorsel = new Morsel();
}


void draw() {
  background(0);
  myPerson.display();
  myOtherPerson.display();
  myMorsel.display();
  myPerson.findMorsel(myMorsel);
  myOtherPerson.wander();
  
  if (myPerson.isEatingMorsel(myMorsel) && myMorsel.thickness != 0) {
     println("Chomp!");
     if (myMorsel.thickness > 0) {
        myMorsel.thickness--; 
     }
     else if (myMorsel.thickness < 1) {
        myMorsel.thickness = 0; 
     }
  }
}

void mousePressed() {
  myPerson.loseWeight();
}
