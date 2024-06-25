import 'package:json_annotation/json_annotation.dart';

part 'stock_response_model.g.dart';

@JsonSerializable()
class StockModel {
  @JsonKey(includeIfNull: true)
  StockTypeModel? stockType;
  int? id;
  String? code;
  String? name;
  String? description;
  bool? status;
  int? stockTypeId;
  int? type;
  int? salesKDV;
  int? sackKilo;

  StockModel({
    this.code,
    this.description,
    this.id,
    this.name,
    this.sackKilo,
    this.salesKDV,
    this.status,
    this.stockType,
    this.stockTypeId,
    this.type,
  });

  StockModel fromJson(Map<String, dynamic> json) {
    return _$StockModelFromJson(json);
  }

  @override
  factory StockModel.fromJson(Map<String, dynamic> json) {
    return _$StockModelFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$StockModelToJson(this);
  }
}

@JsonSerializable()
class StockTypeModel {
  int? id;
  String? code;
  String? name;

  StockTypeModel({
    this.code,
    this.id,
    this.name,
  });

  StockTypeModel fromJson(Map<String, dynamic> json) {
    return _$StockTypeModelFromJson(json);
  }

  @override
  factory StockTypeModel.fromJson(Map<String, dynamic> json) {
    return _$StockTypeModelFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$StockTypeModelToJson(this);
  }
}
