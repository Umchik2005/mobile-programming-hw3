// Name: Muhammad Umar Toshpo'latov
// ID: 220085
// Group: Tuesday 14:00

// Task 1.2
class Novel {
  String bookTitle;
  String writer;
  int pageCount;
  
  Novel(this.bookTitle, this.writer, this.pageCount);
  
  void showDetails() {
    print('Novel details: $bookTitle, written by $writer, $pageCount pages');
  }
}

// Task 1.3
class Learner {
  String fullName;
  int yearsOld;
  List<double> scores;

  Learner(this.fullName, this.yearsOld, this.scores);

  double computeAverageScore() {
    double total = scores.reduce((a, b) => a + b);
    return total / scores.length;
  }
}

// Task 1.4
class Wallet {
  int walletNumber;
  String ownerName;
  double currentBalance;

  Wallet(this.walletNumber, this.ownerName, this.currentBalance);

  void addFunds(double amount) {
    if (amount > 0) {
      currentBalance += amount;
      print('Added: \$${amount}. Updated balance: \$${currentBalance}');
    } else {
      print('Invalid operation: negative values are not allowed');
    }
  }

  void spendFunds(double amount) {
    if (amount > 0 && amount <= currentBalance) {
      currentBalance -= amount;
      print('Spent: \$${amount}. Remaining balance: \$${currentBalance}');
    } else {
      print('Insufficient balance, transaction cannot be processed');
    }
  }
}

// Task 1.5
class Quadrilateral {
  double length;
  double breadth;

  Quadrilateral(this.length, this.breadth);

  double getArea() {
    return length * breadth;
  }

  double getPerimeter() {
    return (length + breadth) * 2;
  }
}

void main() {
  // Task 1.2
  Novel novel = Novel('Man eng zo\'riman', 'Muhammad Umar', 300);
  novel.showDetails();
  
  // Task 1.3
  Learner learner = Learner('Alice Johnson', 21, [90.0, 88.5, 95.0]);
  double averageScore = learner.computeAverageScore();
  print('The average score for ${learner.fullName} is $averageScore');

  // Task 1.4
  Wallet wallet1 = Wallet(111222, 'Mamarayim', 12000.0);
  Wallet wallet2 = Wallet(333444, 'Jonibek', 50.0);

  wallet1.addFunds(600.0);
  wallet1.spendFunds(250.0);
  wallet2.addFunds(100.0);
  wallet2.spendFunds(200.0);

  // Task 1.5
  Quadrilateral shape = Quadrilateral(4.0, 10.0);
  double area = shape.getArea();
  double perimeter = shape.getPerimeter();  
  print('Shape area: $area, perimeter: $perimeter');
}
