Car myCar;
Car myCar2;
Car myCar3;
Car myCar4;
Car myCar5;

int carBeingControlled = 1;
boolean drivingForward = false;
boolean drivingBackwards = false;

void setup() {
  size(500, 500);
  myCar = new Car(20, 50);
  myCar2 = new Car(100, 100.0);  
  myCar3 = new Car(160, 20.0);  
  myCar4 = new Car(260, 400.0);  
  myCar5 = new Car(300.0, 100.0);
}

void draw() {
  background(0);
  myCar.display();
  myCar2.display();
  myCar3.display();
  myCar4.display();
  myCar5.display();
  if (drivingForward == true) {
    myCar.driveForward();
    myCar2.driveForward();
    myCar3.driveForward();
    myCar4.driveForward();
    myCar5.driveForward();
  }

  if (drivingBackwards == true) {
    myCar.driveBackwards();
    myCar2.driveBackwards();
    myCar3.driveBackwards();
    myCar4.driveBackwards();
    myCar5.driveBackwards();
  }
  
  if (keyPressed) {
     if (key == 'b') {
        myCar3.brake();
     } 
  }
}

void keyPressed() {
  switch (key) {
  case '1':
    carBeingControlled = 1;
    break;
  case '2':
    carBeingControlled = 2;
    break;
  case '3':
    carBeingControlled = 3;
    break;
  case '4':
    carBeingControlled = 4;
    break;
  case '5':
    carBeingControlled = 5;
    break;
  }

  if (key == ' ') {
    switch (carBeingControlled) {
    case 1:
      myCar.accelerate();
      break;
    case 2:
      myCar2.accelerate();
      break;
    case 3:
      myCar3.accelerate();
      break;
    case 4:
      myCar4.accelerate();
      break;
    case 5:
      myCar5.accelerate();
      break;
    }
  }

  if (key == 'd') {
    drivingForward = !drivingForward;
  }

  if (key == 'r') {
    drivingBackwards = !drivingBackwards;
  }


  println("I'm controlling " + carBeingControlled);
}

