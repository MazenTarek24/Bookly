import 'ListPriceModel.dart';
import 'RetailPriceModel.dart';

class OfferModel {
  int? finskyOfferType;
  ListPriceModel? listPrice;
  RetailPriceModel? retailPrice;
  bool? giftable;

  OfferModel.fromJson(Map<String, dynamic> json) {
    finskyOfferType = json['finskyOfferType'];
    listPrice = ListPriceModel.fromJson(json['listPrice']);
    retailPrice = RetailPriceModel.fromJson(json['retailPrice']);
    giftable = json['giftable'];
  }
}