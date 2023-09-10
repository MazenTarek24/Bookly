import 'AccessInfoModel.dart';
import 'SaleInfoModel.dart';
import 'SearchInfoModel.dart';
import 'VolumInfo.dart';

class BookModel {
  String? kind;
  String? id;
  String? etag;
  String? selfLink;
  VolumeInfo? volumeInfo;
  SaleInfoModel? saleInfo;
  AccessInfoModel? accessInfo;
  SearchInfoModel? searchInfo;


   BookModel(this.kind, this.id, this.etag, this.selfLink,this.volumeInfo,
      this.saleInfo, this.accessInfo, this.searchInfo);

  BookModel.fromJson(Map<String, dynamic>? json) {
    if (json != null) {
      kind = json['kind'];
      id = json['id'];
      etag = json['etag'];
      selfLink = json['selfLink'];
      volumeInfo = VolumeInfo.fromJson(json['volumeInfo']);
      saleInfo = json['saleInfo'] != null
          ? SaleInfoModel.fromJson(json['saleInfo'])
          : null;
      accessInfo = json['accessInfo'] != null
          ? AccessInfoModel.fromJson(json['accessInfo'])
          : null;
      searchInfo = json['searchInfo'] != null
          ? SearchInfoModel.fromJson(json['searchInfo'])
          : null;
    }
  }
}
