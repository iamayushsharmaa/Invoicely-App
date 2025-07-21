import 'package:dio/dio.dart';
import 'package:invoice/features/invoice/data/model/invoice_model.dart';

class InvoiceApiService {
  final Dio dio;
  static final String baseUrl = 'https://invoicely-367c.onrender.com';

  InvoiceApiService({required this.dio});

  Future<InvoiceModel> createInvoice(InvoiceModel request) async {
    try {
      final response = await dio.post(
        '/api/v1/invoice',
        data: request.toMap(),
      );
      return InvoiceModel.fromMap(response.data);
    } catch (e) {
      print('Error: \$e');
    }
  }

  Future<InvoiceModel> searchInvoice(InvoiceModel request) async {
    try {
      final response = await dio.get(
        '/api/v1/invoices/search',
        queryParameters: request.toMap(),
      );
      return InvoiceModel.fromMap(response.data);
    } catch (e) {
      print('Error: \$e');
    }
  }


  Future<InvoiceModel> getAllInvoices(InvoiceModel request) async {
    try {
      final response = await dio.get(
        '/api/v1/invoices',
        queryParameters: request.toMap(),
      );
      return InvoiceModel.fromMap(response.data);
    } catch (e) {
      print('Error: \$e');
    }
  }

  Future<InvoiceModel> getInvoiceById(InvoiceModel request) async {
    try {
      final response = await dio.get(
        '/api/v1/invoice/{id}',
        queryParameters: request.toMap(),
      );
      return InvoiceModel.fromMap(response.data);
    } catch (e) {
      print('Error: \$e');
    }
  }

  Future<InvoiceModel> updateInvoice(InvoiceModel request) async {
    try {

    } catch (e) {
      print('Error: \$e');
    }
  }

  Future<InvoiceModel> deleteInvoice(InvoiceModel request) async {
    try {
      final response = await dio.get(
        '/api/v1/invoices/delete',
        queryParameters: request.toMap(),
      );
      return InvoiceModel.fromMap(response.data);
    } catch (e) {
      print('Error: \$e');
    }
  }
}
