/// Response models for the Grammar Check API.

/// API Response wrapper.
class GrammarcheckResponse {
  final String status;
  final dynamic error;
  final GrammarcheckData? data;

  /// Set only when the current plan locks one or more fields; null otherwise.
  final PremiumInfo? premium;

  GrammarcheckResponse({
    required this.status,
    this.error,
    this.data,
    this.premium,
  });

  factory GrammarcheckResponse.fromJson(Map<String, dynamic> json) => GrammarcheckResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? GrammarcheckData.fromJson(json['data']) : null,
    premium: json['premium'] != null ? PremiumInfo.fromJson(json['premium']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
    if (premium != null) 'premium': premium!.toJson(),
  };
}

/// Describes fields the current plan does not unlock. Locked fields arrive as null
/// in [data], and [lockedFields] names them (nested ones use dot paths).
class PremiumInfo {
  final String? message;
  final String? upgradeUrl;
  final List<String>? lockedFields;

  PremiumInfo({this.message, this.upgradeUrl, this.lockedFields});

  factory PremiumInfo.fromJson(Map<String, dynamic> json) => PremiumInfo(
    message: json['message'] as String?,
    upgradeUrl: json['upgrade_url'] as String?,
    lockedFields: (json['locked_fields'] as List?)?.map((e) => e.toString()).toList(),
  );

  Map<String, dynamic> toJson() => {
    if (message != null) 'message': message,
    if (upgradeUrl != null) 'upgrade_url': upgradeUrl,
    if (lockedFields != null) 'locked_fields': lockedFields,
  };
}

/// Response data for the Grammar Check API.

class GrammarcheckData {
  bool? modified;
  String? corrected;
  num? errorCount;
  List<GrammarcheckDataCorrectionsItem>? corrections;

  GrammarcheckData({
    this.modified,
    this.corrected,
    this.errorCount,
    this.corrections,
  });

  factory GrammarcheckData.fromJson(Map<String, dynamic> json) => GrammarcheckData(
      modified: json['modified'],
      corrected: json['corrected'],
      errorCount: json['errorCount'],
      corrections: (json['corrections'] as List?)?.map((e) => GrammarcheckDataCorrectionsItem.fromJson(e)).toList(),
    );
}

class GrammarcheckDataCorrectionsItem {
  String? rule;
  String? message;
  GrammarcheckDataCorrectionsItemPosition? position;
  List<String>? suggestions;

  GrammarcheckDataCorrectionsItem({
    this.rule,
    this.message,
    this.position,
    this.suggestions,
  });

  factory GrammarcheckDataCorrectionsItem.fromJson(Map<String, dynamic> json) => GrammarcheckDataCorrectionsItem(
      rule: json['rule'],
      message: json['message'],
      position: json['position'] != null ? GrammarcheckDataCorrectionsItemPosition.fromJson(json['position']) : null,
      suggestions: (json['suggestions'] as List?)?.cast<String>(),
    );
}

class GrammarcheckDataCorrectionsItemPosition {
  num? start;
  num? end;

  GrammarcheckDataCorrectionsItemPosition({
    this.start,
    this.end,
  });

  factory GrammarcheckDataCorrectionsItemPosition.fromJson(Map<String, dynamic> json) => GrammarcheckDataCorrectionsItemPosition(
      start: json['start'],
      end: json['end'],
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
