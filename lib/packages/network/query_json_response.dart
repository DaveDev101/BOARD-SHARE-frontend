class QueryJsonResponseS<T> {
  QueryJsonResponseS({
    required this.ok,
    required this.err,
    required this.data,
    this.searchTerm,
    this.taxonomyTerms,
    this.cnt,
    this.order,
  });

  bool ok;
  String? err;
  T data;
  String? searchTerm;
  List<String>? taxonomyTerms;
  DCount? cnt;
  List<DOrder>? order;

  factory QueryJsonResponseS.fromJson(
    Map<String, dynamic> json,
    T Function(Map<String, dynamic>) fromJsonT,
  ) {
    return QueryJsonResponseS<T>(
      ok: json['ok'] as bool,
      err: json['err'] != null ? json['err'] as String : '',
      data: fromJsonT(json['data']),
      searchTerm: json['search_term'] as String?,
      taxonomyTerms: json['taxonomy_terms'] != null
          ? List<String>.from(json['taxonomy_terms'])
          : null,
      cnt: json['cnt'] != null ? DCount.fromJson(json['cnt']) : null,
      order: json['order'] != null
          ? (json['order'] as List).map((o) => DOrder.fromJson(o)).toList()
          : null,
    );
  }
}

class QueryJsonResponseL<T> {
  QueryJsonResponseL({
    required this.ok,
    required this.err,
    required this.data,
    this.searchTerm,
    this.taxonomyTerms,
    this.cnt,
    this.order,
  });

  bool ok;
  String? err;
  List<T> data;
  String? searchTerm;
  List<String>? taxonomyTerms;
  DCount? cnt;
  List<DOrder>? order;

  factory QueryJsonResponseL.fromJson(
    Map<String, dynamic> json,
    T Function(Map<String, dynamic>) fromJsonT,
  ) {
    return QueryJsonResponseL<T>(
      ok: json['ok'] as bool,
      err: json['err'] != null ? json['err'] as String : '',
      data: (json['data'] as List).map((d) => fromJsonT(d)).toList(),
      searchTerm: json['search_term'] as String?,
      taxonomyTerms: json['taxonomy_terms'] != null
          ? List<String>.from(json['taxonomy_terms'])
          : null,
      cnt: json['cnt'] != null ? DCount.fromJson(json['cnt']) : null,
      order: json['order'] != null
          ? (json['order'] as List).map((o) => DOrder.fromJson(o)).toList()
          : null,
    );
  }
}

class DCount {
  DCount({this.totalCount, this.limitCount, this.offset});

  int? totalCount;
  int? limitCount;
  int? offset;

  factory DCount.fromJson(Map<String, dynamic> json) {
    return DCount(
      totalCount: json['total_count'] is int
          ? json['total_count'] as int?
          : (json['total_count'] is double
              ? (json['total_count'] as double).toInt()
              : null),
      limitCount: json['limit_count'] is int
          ? json['limit_count'] as int?
          : (json['limit_count'] is double
              ? (json['limit_count'] as double).toInt()
              : null),
      offset: json['offset'] is int
          ? json['offset'] as int?
          : (json['offset'] is double
              ? (json['offset'] as double).toInt()
              : null),
    );
  }

  Map<String, dynamic> toJson() => {
        'total_count': totalCount ?? 0,
        'limit_count': limitCount,
        'offset': offset,
      };
}

class DOrder {
  DOrder({
    this.orderBy,
    this.orderDir,
  });

  String? orderBy;
  String? orderDir;

  factory DOrder.fromJson(Map<String, dynamic> json) {
    return DOrder(
      orderBy: json['order_by'] as String?,
      orderDir: json['order_dir'] as String?,
    );
  }

  Map<String, dynamic> toJson() => {'order_by': orderBy, 'order_dir': orderDir};
}
