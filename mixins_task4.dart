// Name: Muhammad Umar Toshpo'latov
// ID: 220085
// Group: Tuesday 14:00


// Task: Flying Capability
mixin CanFly {
  void takeFlight() {
    print("Lifting off!");
  }
}

class WingedAnimal with CanFly {
  String species;
  WingedAnimal(this.species);
}

class Aircraft with CanFly {
  String type;
  Aircraft(this.type);
}

// Task: Logging Utility
mixin Reporter {
  void record(String message) {
    print(message);
  }
}

class NetworkService with Reporter {
  void loadData() {
    record("Information retrieved successfully");
  }
}

// Task: Validation Logic
mixin CredentialsChecker {
  bool checkEmail(String email) {
    bool containsAt = email.contains('@');
    bool containsDot = email.contains('.');
    return containsAt && containsDot;
  }

  bool checkPassword(String password) {
    return password.length >= 8;
  }
}

class Registration with CredentialsChecker {
  String emailAddress;
  String secretCode;

  Registration(this.emailAddress, this.secretCode);

  void register() {
    if (checkEmail(emailAddress) && checkPassword(secretCode)) {
      print("Registration completed successfully!");
    } else {
      print("Registration failed. Verify your details and try again.");
    }
  }
}

// Task: Performance Arts
mixin Performer {
  void act() {
    print("Carrying out a performance");
  }
}

mixin Instrumentalist {
  void playMusic() {
    print("Producing music with an instrument");
  }
}

class Entertainer {
  String stageName;
  Entertainer(this.stageName);
}

class Ballerina extends Entertainer with Performer {
  Ballerina(String stageName) : super(stageName);

  void dance() {
    act();
  }
}

class GuitarPlayer extends Entertainer with Performer, Instrumentalist {
  GuitarPlayer(String stageName) : super(stageName);

  void performShow() {
    act();
    playMusic();
  }
}

void main() {
  // Task: Flying Capability
  WingedAnimal sparrow = WingedAnimal("Sparrow");
  sparrow.takeFlight();

  Aircraft boeing = Aircraft("Boeing 747");
  boeing.takeFlight();

  // Task: Logging Utility
  NetworkService service = NetworkService();
  service.loadData();

  // Task: Validation Logic
  Registration user = Registration("m.toshpolatov@newuu.uz", "SuperSecret");
  user.register();

  Registration fakeUser = Registration("invalidEmail.123456789", "123456789");
  fakeUser.register();

  // Task: Performance Arts
  Ballerina dancer = Ballerina("Nigora");
  dancer.dance();

  GuitarPlayer guitarist = GuitarPlayer("Jonibek");
  guitarist.performShow();
}
