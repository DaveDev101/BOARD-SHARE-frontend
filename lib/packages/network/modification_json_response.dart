class ModificationJsonResponse<T> {
  ModificationJsonResponse({
    required this.error,
    required this.message,
    required this.data,
  });

  bool error;
  String message;
  T data;

  factory ModificationJsonResponse.fromJson(
    Map<String, dynamic> json,
    T Function(Map<String, dynamic>) fromJsonT,
  ) {
    return ModificationJsonResponse<T>(
      error: json['error'] as bool,
      message: json['message'] as String,
      data: fromJsonT(json['data'] as Map<String, dynamic>),
    );
  }
}
