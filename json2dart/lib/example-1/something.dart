class Something {
  final String variable;

  Something({required this.variable});

  factory Something.fromJson(Map<String, dynamic> json) {
    return Something(
      variable: json['small'],
    );
  }
}
