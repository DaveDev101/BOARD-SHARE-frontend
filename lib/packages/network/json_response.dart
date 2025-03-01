class JsonResponse<T> {
  JsonResponse({
    required this.error,
    required this.message,
    required this.data,
  });

  bool error;
  String message;
  T data;

  factory JsonResponse.fromJson(
    Map<String, dynamic> json,
    T Function(Map<String, dynamic>) fromJsonT,
  ) {
    return JsonResponse<T>(
      error: json['error'] as bool,
      message: json['message'] as String,
      data: fromJsonT(json['data'] as Map<String, dynamic>),
    );
  }
}
