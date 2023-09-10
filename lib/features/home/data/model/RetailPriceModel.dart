class RetailPriceModel {
  double? amount;
  String? currencyCode;

  RetailPriceModel.fromJson(Map<String, dynamic> json) {
    amount = json['amount'];
    currencyCode = json['currencyCode'];
  }
}