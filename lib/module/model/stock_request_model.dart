import 'package:json_annotation/json_annotation.dart';

part 'stock_request_model.g.dart';

@JsonSerializable()
class StockRequestModel {
  @JsonKey(includeIfNull: true)
  int? id;
  String? code;
  String? name;
  String? description;
  bool? status;
  int? stockTypeId;
  int? type;
  int? salesKDV;
  int? sackKilo;

  StockRequestModel({
    this.code,
    this.description,
    this.name,
    this.sackKilo,
    this.salesKDV,
    this.status,
    this.stockTypeId,
    this.type,
    this.id,
  });

  StockRequestModel fromJson(Map<String, dynamic> json) {
    return _$StockRequestModelFromJson(json);
  }

  @override
  factory StockRequestModel.fromJson(Map<String, dynamic> json) {
    return _$StockRequestModelFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$StockRequestModelToJson(this);
  }
}

@JsonSerializable()
class StockTypeRequestModel {
  @JsonKey(includeIfNull: true)
  int? id;
  String? code;
  String? name;

  StockTypeRequestModel({
    this.code,
    this.name,
    this.id,
  });

  StockTypeRequestModel fromJson(Map<String, dynamic> json) {
    return _$StockTypeRequestModelFromJson(json);
  }

  @override
  factory StockTypeRequestModel.fromJson(Map<String, dynamic> json) {
    return _$StockTypeRequestModelFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$StockTypeRequestModelToJson(this);
  }
}
