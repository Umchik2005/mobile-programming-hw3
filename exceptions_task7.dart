// Name: Muhammad Umar Toshpo'latov
// ID: 220085
// Group: Tuesday 14:00

import 'dart:async';

// Task: List Access
void showItemAt(List<dynamic> items, int position) {
  try {
    print("Item at position $position: ${items[position]}");
  } on RangeError {
    print("Warning: Index is out of range.");
  }
}

// Task: Age Parsing
void interpretUserAge(String entry) {
  try {
    final int years = int.parse(entry);
    print("The user's age is $years");
  } on FormatException {
    print("Warning: Provided value is not a valid number.");
  }
}

// Task: Custom Exception
class EmptyFieldException implements Exception {
  final String details;
  EmptyFieldException(this.details);

  @override
  String toString() => "EmptyFieldException: $details";
}

void analyzeText(String content) {
  if (content.trim().isEmpty) {
    throw EmptyFieldException("Input cannot be blank.");
  }
  print("Analyzing content: $content");
}

// Task: Database Handling
void fetchFromDatabase() {
  try {
    print("Attempting to retrieve data from database...");
    throw Exception("Database access failure");
  } catch (e) {
    print("Exception captured: $e");
  } finally {
    print("Database session terminated.");
  }
}

Future<void> main() async {
  print("=== Task: List Access ===");
  showItemAt([10, 20, 30], 1);
  showItemAt([10, 20, 30], 5);

  print("\n=== Task: Age Parsing ===");
  interpretUserAge("25");
  interpretUserAge("xyz");

  print("\n=== Task: Custom Exception ===");
  try {
    analyzeText("");
  } on EmptyFieldException catch (e) {
    print("Custom exception handled: $e");
  }

  print("\n=== Task: Database Handling ===");
  fetchFromDatabase();
}
