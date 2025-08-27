import '../../data/model/invoice_request.dart';
import '../../data/model/invoice_response.dart';
import '../entities/invoice_enitity.dart';
import '../entities/invoice_item_entity.dart';
import '../entities/invoice_request_entity.dart';

extension InvoiceRequestEntityMapper on InvoiceRequestEntity {
  InvoiceRequest toDto({required String status}) {
    final subTotal = items.fold(0.0, (sum, item) => sum + item.total);
    final totalAmount = subTotal - discount + tax;

    return InvoiceRequest(
      clientId: clientId,
      client: null,
      // optional if API requires
      invoiceNumber: invoiceNumber,
      invoiceDate: invoiceDate,
      dueDate: dueDate,
      billingFrom: billingFrom,
      billingTo: billingTo,
      notes: notes,
      status: status,
      discount: discount,
      tax: tax,
      currency: currency,
      logoUrl: logoUrl,
      items: items.map((e) => e.toDto()).toList(),
      subTotal: subTotal,
      totalAmount: totalAmount,
    );
  }
}

extension InvoiceItemEntityMapper on InvoiceItemEntity {
  InvoiceItem toDto() {
    return InvoiceItem(
      description: description,
      quantity: quantity,
      price: price,
      total: total,
    );
  }
}

extension InvoiceResponseMapper on InvoiceResponse {
  InvoiceEntity toEntity() {
    return InvoiceEntity(
      id: id,
      clientId: clientId,
      invoiceNumber: invoiceNumber,
      invoiceDate: invoiceDate,
      dueDate: dueDate,
      billingFrom: billingFrom,
      billingTo: billingTo,
      notes: notes,
      status: status,
      subTotal: subTotal,
      discount: discount,
      tax: tax,
      totalAmount: totalAmount,
      logoUrl: logoUrl,
      currency: currency,
      paid: paid,
      paymentDate: paymentDate,
      items: items.map((item) => item.toEntity()).toList(),
    );
  }
}

extension InvoiceItemMapper on InvoiceItemResponse {
  InvoiceItemEntity toEntity() {
    return InvoiceItemEntity(
      description: description,
      quantity: quantity,
      price: price,
      total: total,
    );
  }
}
