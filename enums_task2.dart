// Name: Muhammad Umar Toshpo'latov
// ID: 220085
// Group: Tuesday 14:00

// Task 2.2
enum PurchaseStage {
  awaiting,
  inProgress,
  dispatched,
  completed,
  revoked
}

// Task 2.3
enum SignalLight {
  stopSignal,
  warningSignal,
  goSignal
}

String suggestMovement(SignalLight signal) {
  switch (signal) {
    case SignalLight.stopSignal:
      return 'Halt';
    case SignalLight.warningSignal:
      return 'Proceed with care';
    case SignalLight.goSignal:
      return 'Move ahead';
    default:
      return 'Unknown signal';
  }
}

// Task 2.4
enum AccessLevel {
  superAdmin,
  contentManager,
  visitor
}

class Account {
  String username;
  AccessLevel level;

  Account(this.username, this.level);

  bool canModifyContent() {
    return level == AccessLevel.superAdmin || level == AccessLevel.contentManager;
  }
}

// Task 2.5
int signalDurationInSeconds(SignalLight signal) {
  switch (signal) {
    case SignalLight.stopSignal:
      return 30;
    case SignalLight.warningSignal:
      return 5;
    case SignalLight.goSignal:
      return 45;
    default:
      return 0;
  }
}

void main() {
  // Task 2.2
  PurchaseStage stage = PurchaseStage.inProgress;
  print('Current purchase stage: $stage');

  // Task 2.3
  SignalLight activeSignal = SignalLight.stopSignal;
  print('Active signal: $activeSignal');
  print('Suggested action: ${suggestMovement(activeSignal)}');

  // Task 2.4
  Account account = Account('Alice', AccessLevel.contentManager);
  print('Account holder: ${account.username}, Access level: ${account.level}');
  print('Permission to modify content: ${account.canModifyContent()}');

  // Task 2.5
  SignalLight signal1 = SignalLight.goSignal;
  SignalLight signal2 = SignalLight.warningSignal;
  SignalLight signal3 = SignalLight.stopSignal;
  print('Go signal lasts for: ${signalDurationInSeconds(signal1)} seconds');
  print('Warning signal lasts for: ${signalDurationInSeconds(signal2)} seconds');    
  print('Stop signal lasts for: ${signalDurationInSeconds(signal3)} seconds');
}
