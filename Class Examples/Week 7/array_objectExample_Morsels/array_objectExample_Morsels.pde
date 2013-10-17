//declare the arrays
Person people[];
Morsel morsels[];
//declare the morsel counter
int morselCount = 0;
//set feeding to false
boolean feeding = false;

void setup() {
  size(500, 500);
  //object  = create new use the constructor
  people = new Person[10];
  //create the new people
  for (int i = 0; i < 10; i++) {
    people[i] = new Person(50, 10);
  }
  //initialize the morsels array, don't add any morsels to it though
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
}

void mousePressed() {
  if (morselCount < 100) {

    morsels[morselCount] = new Morsel();
    morselCount++;
  }
}

void keyPressed() {
  //!variable = the opposite of variable
  feeding = !feeding;
}

int nearestMorsel(Person p) {
  //start out with an absurdly large number
  float distanceToNearestMorsel = 9999; 
  //closest morsel starts at a number that doesn't exist in our array
  int closestMorsel = -1;
  //loop through all of the morsels on the screen
  for (int i = 0; i < morselCount; i++) {
    //only pay attention to ones that can be eaten
    if (morsels[i].eaten == false) {
      //find the distance between person and morsel
      float d = dist(p.x, p.y, morsels[i].x, morsels[i].y); 
      if (d < distanceToNearestMorsel) {
      //if less than the current closest distance, set the new closest distance 
        distanceToNearestMorsel = d;
        //set the morsel that's closest
        closestMorsel = i;
      }
    }
  } 
  //after looping through all of them, return the closest morsel.
  return closestMorsel;
}

