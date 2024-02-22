class ComparativeReportDataModel {
  LineItems? lineItems;
  String? error;

  ComparativeReportDataModel({this.lineItems});

  ComparativeReportDataModel.fromJson(Map<String, dynamic> json) {
    lineItems = json['line_items'] != null
        ? new LineItems.fromJson(json['line_items'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.lineItems != null) {
      data['line_items'] = this.lineItems!.toJson();
    }
    return data;
  }
}

class LineItems {
  num? docCount;
  TotalItemQty? totalItemQty;

  LineItems({this.docCount, this.totalItemQty});

  LineItems.fromJson(Map<String, dynamic> json) {
    docCount = json['doc_count'];
    totalItemQty = json['total_item_qty'] != null
        ? new TotalItemQty.fromJson(json['total_item_qty'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['doc_count'] = this.docCount;
    if (this.totalItemQty != null) {
      data['total_item_qty'] = this.totalItemQty!.toJson();
    }
    return data;
  }
}

class TotalItemQty {
  num? docCountErrorUpperBound;
  num? sumOtherDocCount;
  List<Buckets>? buckets;

  TotalItemQty(
      {this.docCountErrorUpperBound, this.sumOtherDocCount, this.buckets});

  TotalItemQty.fromJson(Map<String, dynamic> json) {
    docCountErrorUpperBound = json['doc_count_error_upper_bound'];
    sumOtherDocCount = json['sum_other_doc_count'];
    if (json['buckets'] != null) {
      buckets = <Buckets>[];
      json['buckets'].forEach((v) {
        buckets!.add(new Buckets.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['doc_count_error_upper_bound'] = this.docCountErrorUpperBound;
    data['sum_other_doc_count'] = this.sumOtherDocCount;
    if (this.buckets != null) {
      data['buckets'] = this.buckets!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Buckets {
  String? key;
  num? docCount;
  TotalSale? totalSale;
  TotQty? totQty;

  Buckets({this.key, this.docCount, this.totalSale, this.totQty});

  Buckets.fromJson(Map<String, dynamic> json) {
    key = json['key'];
    docCount = json['doc_count'];
    totalSale = json['total_sale'] != null
        ? new TotalSale.fromJson(json['total_sale'])
        : null;
    totQty =
    json['tot_qty'] != null ? new TotQty.fromJson(json['tot_qty']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['key'] = this.key;
    data['doc_count'] = this.docCount;
    if (this.totalSale != null) {
      data['total_sale'] = this.totalSale!.toJson();
    }
    if (this.totQty != null) {
      data['tot_qty'] = this.totQty!.toJson();
    }
    return data;
  }
}

class TotalSale {
  num? value;

  TotalSale({this.value});

  TotalSale.fromJson(Map<String, dynamic> json) {
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['value'] = this.value;
    return data;
  }
}

class TotQty {
  num? value;

  TotQty({this.value});

  TotQty.fromJson(Map<String, dynamic> json) {
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['value'] = this.value;
    return data;
  }
}
