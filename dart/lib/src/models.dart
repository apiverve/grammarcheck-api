/// Response models for the Grammar Check API.

/// API Response wrapper.
class GrammarcheckResponse {
  final String status;
  final dynamic error;
  final GrammarcheckData? data;

  GrammarcheckResponse({
    required this.status,
    this.error,
    this.data,
  });

  factory GrammarcheckResponse.fromJson(Map<String, dynamic> json) => GrammarcheckResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? GrammarcheckData.fromJson(json['data']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
  };
}

/// Response data for the Grammar Check API.

class GrammarcheckData {
  bool? modified;
  String? text;

  GrammarcheckData({
    this.modified,
    this.text,
  });

  factory GrammarcheckData.fromJson(Map<String, dynamic> json) => GrammarcheckData(
      modified: json['modified'],
      text: json['text'],
    );
}

class GrammarcheckRequest {
  String text;

  GrammarcheckRequest({
    required this.text,
  });

  Map<String, dynamic> toJson() => {
      'text': text,
    };
}
