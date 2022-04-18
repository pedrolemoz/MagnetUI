class AppState {
  final String message;

  AppState(this.message);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is AppState && other.message == message;
  }

  @override
  int get hashCode => message.hashCode;
}
