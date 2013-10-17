Person people[];
Morsel morsels[];
int morselCount = 0;
boolean feeding = false;

void setup() {
  size(500, 500);
  //object  = create new use the constructor
  people = new Person[10];
  for (int i = 0; i < 10; i++) {
    people[i] = new Person(50, 10);
  }
  morsels = new Morsel[100];
}


void draw() {
  background(0);
  for (int i = 0; i < people.length; i++) {
    people[i].display();
    if (feeding) {
      int closestMorsel = nearestMorsel(people[i]);
      if (closestMorsel != -1) {
        people[i].findMorsel(morsels[closestMorsel]);
        if (people[i].isEatingMorsel(morsels[closestMorsel]) && morsels[closestMorsel].thickness > 0) {
          morsels[closestMorsel].thickness--;
          if (morsels[closestMorsel].thickness < 1) {
            morsels[closestMorsel].eaten = true;
          }
        }
      }
    }
  }

  for (int i = 0; i < morselCount; i++) {
    if (!morsels[i].eaten) {
      morsels[i].display();
    }
  }

  /*
  if (myPerson.isEatingMorsel(myMorsel) && myMorsel.thickness != 0) {
   println("Chomp!");
   if (myMorsel.thickness > 0) {
   myMorsel.thickness--;
   }
   else if (myMorsel.thickness < 1) {
   myMorsel.thickness = 0;
   }
   }
   */
}

void mousePressed() {
  if (morselCount < 100) {

    morsels[morselCount] = new Morsel();
    morselCount++;
  }
}

void keyPressed() {
  feeding = !feeding;
}
int nearestMorsel(Person p) {
  float distanceToNearestMorsel = 9999; 
  int closestMorsel = -1;
  for (int i = 0; i < morselCount; i++) {
    if (morsels[i].eaten == false) {
      float d = dist(p.x, p.y, morsels[i].x, morsels[i].y); 
      if (d < distanceToNearestMorsel) {
        distanceToNearestMorsel = d;
        closestMorsel = i;
      }
    }
  } 
  return closestMorsel;
}

