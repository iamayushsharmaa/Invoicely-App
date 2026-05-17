class RetryHandler {
  DateTime? _lastRetry;
  final Duration cooldown;

  RetryHandler({this.cooldown = const Duration(seconds: 2)});

  bool get canRetry {
    if (_lastRetry == null) return true;
    return DateTime.now().difference(_lastRetry!) > cooldown;
  }

  void markRetry() {
    _lastRetry = DateTime.now();
  }
}
