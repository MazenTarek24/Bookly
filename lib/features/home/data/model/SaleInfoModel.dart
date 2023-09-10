import 'ListPriceModel.dart';
import 'OfferModel.dart';
import 'RetailPriceModel.dart';

class SaleInfoModel {
  String? country;
  String? saleability;
  bool? isEbook;
  ListPriceModel? listPrice;
  RetailPriceModel? retailPrice;
  String? buyLink;
  List<OfferModel>? offers;

  SaleInfoModel.fromJson(Map<String, dynamic> json) {
    country = json['country'];
    saleability = json['saleability'];
    isEbook = json['isEbook'];
    listPrice =json['listPrice'] != null ?
    ListPriceModel.fromJson(json['listPrice']) : null;
    retailPrice = json['retailPrice'] != null ?
    RetailPriceModel.fromJson(json['retailPrice']) : null;

    buyLink = json['buyLink'];
    offers =  json['offers'] != null ? List<OfferModel>.from(
        json['offers'].map((offer) => OfferModel.fromJson(offer))) : null;
  }
}