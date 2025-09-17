// Name: Muhammad Umar Toshpo'latov
// ID: 220085
// Group: Tuesday 14:00


import 'dart:math';

// Task: Weapon Actions
class Armament {
  void execute() {
    print("Performing a general attack");
  }
}

class Blade extends Armament {
  @override
  void execute() {
    print("Slashing with a blade!");
  }
}

class Crossbow extends Armament {
  @override
  void execute() {
    print("Launching an arrow!");
  }
}

// Task: Animal Feeding
class Creature {
  void consume() {
    print("Consuming food");
  }
}

class KingLion extends Creature {
  @override
  void consume() {
    print("Devouring flesh");
  }
}

class MountainGoat extends Creature {
  @override
  void consume() {
    print("Munching on plants");
  }
}

void feedAnimal(Creature creature) {
  creature.consume();
}

// Task: Payment Processing
class TransactionMethod {
  void settle(double amount) {
    print("Completing payment of \$${amount}");
  }
}

class BankCard extends TransactionMethod {
  void handlePayment(double amount) {
    print("Authorizing transaction...");
    settle(amount);
  }
}

class DigitalWallet extends TransactionMethod {
  void handlePayment(double amount) {
    print("Authorizing transaction...");
    settle(amount);
  }
}
