class ListPriceModel {
  double? amount;
  String? currencyCode;

  ListPriceModel.fromJson(Map<String, dynamic> json) {
    amount = json['amount'];
    currencyCode = json['currencyCode'];
  }
}