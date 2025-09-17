// Name: Muhammad Umar Toshpo'latov
// ID: 220085
// Group: Tuesday 14:00

import 'dart:async';

// Task 6.2 
Future<String> createSummary() {
  return Future.delayed(Duration(seconds: 1), () => "Summary has been created!");
}

// Task 6.3 
Future<String> createSummaryAsync() async {
  await Future.delayed(Duration(seconds: 1));
  return "Summary completed successfully!";
}

// Task 6.4 
Future<int> getAccountId() async {
  await Future.delayed(Duration(seconds: 1));
  return 123;
}

Future<String> getAccountInfo(int accountId) async {
  await Future.delayed(Duration(seconds: 1));
  return "Information retrieved for account ID $accountId";
}

// Task 6.5 
Future<String> loadSettings() async {
  await Future.delayed(Duration(seconds: 1));
  return "Settings successfully loaded";
}

Future<String> initializeAssets() async {
  await Future.delayed(Duration(seconds: 2));
  return "Assets have been initialized";
}

Future<void> main() async {
  // Task 2
  createSummary().then((output) {
    print(output);
  });

  // Task 3
  String summary = await createSummaryAsync();
  print(summary);

  // Task 4
  int accountId = await getAccountId();
  String accountInfo = await getAccountInfo(accountId);
  print(accountInfo);

  // Task 5
  await Future.wait([loadSettings(), initializeAssets()]);
  print("System is fully operational");
}
