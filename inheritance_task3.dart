// Name: Muhammad Umar Toshpo'latov
// ID: 220085
// Group: Tuesday 14:00

// Task: Animal Hierarchy
class Creature {
  void produceSound() {
    print("Generic creature noise");
  }
}

class Hound extends Creature {
  @override
  void produceSound() {
    print("Bark!");
  }
}

class Feline extends Creature {
  @override
  void produceSound() {
    print("Miau!");
  }
}

// Task: Shape Colors
class Figure {
  String shade;
  Figure(this.shade);
}

class RoundShape extends Figure {
  double radius;

  RoundShape(this.radius, String shade) : super(shade);
}

class BoxShape extends Figure {
  double edge;

  BoxShape(this.edge, String shade) : super(shade);
}

// Task: Employee Payroll
class Worker {
  String fullName;
  double basePay;
  Worker(this.fullName, this.basePay);

  double computePay() {
    return basePay;
  }
}

class Supervisor extends Worker {
  double allowance;
  Supervisor(String fullName, double basePay, this.allowance) : super(fullName, basePay);

  @override
  double computePay() {
    return basePay + allowance;
  }
}

// Task: Library Collection
class CollectionItem {
  String label;
  int code;

  CollectionItem(this.label, this.code);

  void showInfo() {
    print('Item: $label, Code: $code');
  }
}

class Novel extends CollectionItem {
  String writer;

  Novel(String label, int code, this.writer) : super(label, code);

  @override
  void showInfo() {
    print('Novel: $label, Author: $writer, Code: $code');
  }
}

class Disc extends CollectionItem {
  String filmmaker;

  Disc(String label, int code, this.filmmaker) : super(label, code);

  @override
  void showInfo() {
    print('Disc: $label, Director: $filmmaker, Code: $code');
  }
}

void main() {
  // Task: Animal Hierarchy
  Creature dog = Hound();
  Creature cat = Feline();

  dog.produceSound();
  cat.produceSound();

  // Task: Shape Colors
  RoundShape circle = RoundShape(1.2, "Crimson");
  BoxShape square = BoxShape(7.7, "Azure");

  print("Circle shade: ${circle.shade}");
  print("Square shade: ${square.shade}");

  // Task: Employee Payroll
  Worker worker = Worker("Regular Staff", 50000);
  Supervisor boss = Supervisor("Team Lead", 60000, 10000);

  print("Worker total pay: ${worker.computePay()}");
  print("Supervisor total pay: ${boss.computePay()}");

  // Task: Library Collection
  Novel novel = Novel("Future Tales", 1, "John Doe"); //default suggestion of future novel from AI
  Disc dvd = Disc("Interstellar", 2, "Christopher Nolan"); // legend movie

  novel.showInfo();
  dvd.showInfo();
}
