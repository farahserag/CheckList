class Task {
  final String name;
  bool isDone;

  Task({required this.name, this.isDone = false});

  // 3mlna qema awlya l isDone = false f constructor //

  void doneChange() {
    isDone = !isDone;
  }

  /// method di mohmetha enha te3ks qemt isDone lma app yesht8l ///
}
