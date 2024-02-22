class ReportApiDataModel {
  GrossTotal? grossTotal;
  String? currency;
  String? error;
  OrderTimeline? orderTimeline;
  AggregatedData? tableTime;
  Tenders? tenders;
  Tenders? topAssociate;
  TopItems? topItems;

  AggregatedData? totalRevenue;
  AggregatedData? totalTax;

  ReportApiDataModel(
      {this.grossTotal,
      this.orderTimeline,
      this.tableTime,
      this.tenders,
      this.totalRevenue,
      this.totalTax,
      this.error});

  ReportApiDataModel.fromJson(Map<String, dynamic> json) {
    grossTotal = json['gross_total'] != null
        ? GrossTotal.fromJson(json['gross_total'])
        : null;
    orderTimeline = json['order_timeline'] != null
        ? OrderTimeline.fromJson(json['order_timeline'])
        : null;
    tenders =
        json['tenders'] != null ? Tenders.fromJson(json['tenders']) : null;
    topAssociate = json['top_associate'] != null
        ? Tenders.fromJson(json['top_associate'])
        : null;
    tableTime = json['table_time'] != null
        ? AggregatedData.fromJson(json['table_time'])
        : null;
    totalRevenue = json['total_revenue'] != null
        ? AggregatedData.fromJson(json['total_revenue'])
        : null;
    totalTax = json['total_tax'] != null
        ? AggregatedData.fromJson(json['total_tax'])
        : null;
    topItems = json['top_items'] != null
        ? TopItems.fromJson(json['top_items'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (grossTotal != null) {
      data['gross_total'] = grossTotal!.toJson();
    }
    if (orderTimeline != null) {
      data['order_timeline'] = orderTimeline!.toJson();
    }
    if (tableTime != null) {
      data['table_time'] = tableTime!.toJson();
    }
    if (tenders != null) {
      data['tenders'] = tenders!.toJson();
    }
    if (totalRevenue != null) {
      data['total_revenue'] = totalRevenue!.toJson();
    }
    if (totalTax != null) {
      data['total_tax'] = totalTax!.toJson();
    }
    return data;
  }
}

class GrossTotal {
  num? avg;
  num? count;
  num? max;
  num? min;
  num? sum;

  GrossTotal({this.avg, this.count, this.max, this.min, this.sum});

  GrossTotal.fromJson(Map<String, dynamic> json) {
    avg = json['avg'];
    count = json['count'];
    max = json['max'];
    min = json['min'];
    sum = json['sum'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['avg'] = avg;
    data['count'] = count;
    data['max'] = max;
    data['min'] = min;
    data['sum'] = sum;
    return data;
  }
}

class OrderTimeline {
  List<Buckets>? buckets;

  OrderTimeline({this.buckets});

  OrderTimeline.fromJson(Map<String, dynamic> json) {
    if (json['buckets'] != null) {
      buckets = <Buckets>[];
      json['buckets'].forEach((v) {
        buckets!.add(Buckets.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (buckets != null) {
      data['buckets'] = buckets!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Buckets {
  num? docCount;
  num? key;
  String? keyAsString;
  Total? total;

  Buckets({this.docCount, this.key, this.keyAsString, this.total});

  Buckets.fromJson(Map<String, dynamic> json) {
    docCount = json['doc_count'];
    key = json['key'];
    keyAsString = json['key_as_string'];
    total = json['total'] != null ? Total.fromJson(json['total']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['doc_count'] = docCount;
    data['key'] = key;
    data['key_as_string'] = keyAsString;
    if (total != null) {
      data['total'] = total!.toJson();
    }
    return data;
  }
}

class StringBuckets {
  num? docCount;
  String? key;
  String? keyAsString;
  Total? total;

  StringBuckets({this.docCount, this.key, this.keyAsString, this.total});

  StringBuckets.fromJson(Map<String, dynamic> json) {
    docCount = json['doc_count'];
    key = json['key'].toString();
    keyAsString = json['key_as_string'];
    total = json['total_value'] != null ? Total.fromJson(json['total_value']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['doc_count'] = docCount;
    data['key'] = key;
    data['key_as_string'] = keyAsString;
    if (total != null) {
      data['total'] = total!.toJson();
    }
    return data;
  }
}

class Tenders {
  List<TenderBuckets>? buckets;
  int? docCountErrorUpperBound;
  int? sumOtherDocCount;

  Tenders({this.buckets, this.docCountErrorUpperBound, this.sumOtherDocCount});

  Tenders.fromJson(Map<String, dynamic> json) {
    if (json['buckets'] != null) {
      buckets = <TenderBuckets>[];
      json['buckets'].forEach((v) {
        buckets!.add(TenderBuckets.fromJson(v));
      });
    }
    docCountErrorUpperBound = json['doc_count_error_upper_bound'];
    sumOtherDocCount = json['sum_other_doc_count'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (buckets != null) {
      data['buckets'] = buckets!.map((v) => v.toJson()).toList();
    }
    data['doc_count_error_upper_bound'] = docCountErrorUpperBound;
    data['sum_other_doc_count'] = sumOtherDocCount;
    return data;
  }
}

class TenderBuckets {
  int? docCount;
  String? key;
  Total? totalValue;

  TenderBuckets({this.docCount, this.key, this.totalValue});

  TenderBuckets.fromJson(Map<String, dynamic> json) {
    docCount = json['doc_count'];
    key = json['key'];
    totalValue = json['total_value'] != null
        ? Total.fromJson(json['total_value'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['doc_count'] = docCount;
    data['key'] = key;
    if (totalValue != null) {
      data['total_value'] = totalValue!.toJson();
    }
    return data;
  }
}

class Total {
  num? value;

  Total({this.value});

  Total.fromJson(Map<String, dynamic> json) {
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['value'] = value;
    return data;
  }
}

class AggregatedData {
  num? avg;
  num? count;
  num? max;
  num? min;
  num? sum;

  AggregatedData({this.avg, this.count, this.max, this.min, this.sum});

  AggregatedData.fromJson(Map<String, dynamic> json) {
    avg = json['avg'];
    count = json['count'];
    max = json['max'];
    min = json['min'];
    sum = json['sum'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['avg'] = avg;
    data['count'] = count;
    data['max'] = max;
    data['min'] = min;
    data['sum'] = sum;
    return data;
  }
}

class TopItems {
  int? docCount;
  TotalQty? totalQty;

  TopItems({this.docCount, this.totalQty});

  TopItems.fromJson(Map<String, dynamic> json) {
    docCount = json['doc_count'];
    totalQty = json['total_qty'] != null
        ? TotalQty.fromJson(json['total_qty'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['doc_count'] = docCount;
    if (totalQty != null) {
      data['total_qty'] = totalQty!.toJson();
    }
    return data;
  }
}

class TotalQty {
  List<StringBuckets>? buckets;
  int? docCountErrorUpperBound;
  int? sumOtherDocCount;

  TotalQty({this.buckets, this.docCountErrorUpperBound, this.sumOtherDocCount});

  TotalQty.fromJson(Map<String, dynamic> json) {
    if (json['buckets'] != null) {
      buckets = <StringBuckets>[];
      json['buckets'].forEach((v) {
        buckets!.add(StringBuckets.fromJson(v));
      });
    }
    docCountErrorUpperBound = json['doc_count_error_upper_bound'];
    sumOtherDocCount = json['sum_other_doc_count'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    if (buckets != null) {
      data['buckets'] = buckets!.map((v) => v.toJson()).toList();
    }
    data['doc_count_error_upper_bound'] = docCountErrorUpperBound;
    data['sum_other_doc_count'] = sumOtherDocCount;
    return data;
  }
}

class TotalValue {
  int? value;

  TotalValue({this.value});

  TotalValue.fromJson(Map<String, dynamic> json) {
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['value'] = value;
    return data;
  }
}