class InvoiceModel {
  final String invoiceNo;
  final String clientName;
  final String amount;
  final String paymentStatus;

  InvoiceModel({
    required this.invoiceNo,
    required this.clientName,
    required this.amount,
    required this.paymentStatus,
  });

  Map<String, dynamic> toMap() {
    return {
      'invoiceNo': this.invoiceNo,
      'clientName': this.clientName,
      'amount': this.amount,
      'paymentStatus': this.paymentStatus,
    };
  }

  factory InvoiceModel.fromMap(Map<String, dynamic> map) {
    return InvoiceModel(
      invoiceNo: map['invoiceNo'] as String,
      clientName: map['clientName'] as String,
      amount: map['amount'] as String,
      paymentStatus: map['paymentStatus'] as String,
    );
  }
}
