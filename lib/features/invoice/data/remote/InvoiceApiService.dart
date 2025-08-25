import 'package:dio/dio.dart';

import '../model/invoice_request.dart';
import '../model/invoice_response.dart';

class InvoiceApiService {
  final Dio dio;
  static const String baseUrl = 'https://invoicely-367c.onrender.com/api/v1';

  InvoiceApiService({required this.dio});

  Future<InvoiceResponse?> createInvoice(InvoiceRequest request) async {
    try {
      final response = await dio.post(
        '$baseUrl/invoices',
        data: request.toJson(),
      );
      return InvoiceResponse.fromJson(response.data);
    } catch (e) {
      print('Error creating invoice: $e');
      return null;
    }
  }

  Future<List<InvoiceResponse>> getAllInvoices() async {
    try {
      final response = await dio.get('$baseUrl/invoices');
      return (response.data as List)
          .map((item) => InvoiceResponse.fromJson(item))
          .toList();
    } catch (e) {
      print('Error fetching invoices: $e');
      return [];
    }
  }

  Future<List<InvoiceResponse>> searchInvoices({
    String? invoiceNumber,
    String? clientName,
    DateTime? fromDate,
    DateTime? toDate,
  }) async {
    try {
      final queryParams = {
        'invoiceNumber': invoiceNumber,
        'clientName': clientName,
        'fromDate': fromDate?.toIso8601String(),
        'toDate': toDate?.toIso8601String(),
      }..removeWhere((key, value) => value == null);

      final response = await dio.get(
        '$baseUrl/invoice/search',
        queryParameters: queryParams,
      );
      return (response.data as List)
          .map((e) => InvoiceResponse.fromJson(e))
          .toList();
    } catch (e) {
      print('Error searching invoices: $e');
      return [];
    }
  }

  Future<List<InvoiceResponse>> getInvoicesByClient(String clientId) async {
    try {
      final response = await dio.get('$baseUrl/invoices/client/$clientId');
      return (response.data as List)
          .map((item) => InvoiceResponse.fromJson(item))
          .toList();
    } catch (e) {
      print('Error fetching client invoices: $e');
      return [];
    }
  }

  Future<InvoiceResponse?> getInvoiceById(String invoiceId) async {
    try {
      final response = await dio.get('$baseUrl/invoices/$invoiceId');
      return InvoiceResponse.fromJson(response.data);
    } catch (e) {
      print('Error fetching invoice: $e');
      return null;
    }
  }

  Future<InvoiceResponse?> updateInvoice(
    String invoiceId,
    InvoiceRequest request,
  ) async {
    try {
      final response = await dio.put(
        '$baseUrl/invoices/$invoiceId',
        data: request.toJson(),
      );
      return InvoiceResponse.fromJson(response.data);
    } catch (e) {
      print('Error updating invoice: $e');
      return null;
    }
  }

  Future<bool> deleteInvoice(String invoiceId) async {
    try {
      await dio.delete('$baseUrl/invoices/$invoiceId');
      return true;
    } catch (e) {
      print('Error deleting invoice: $e');
      return false;
    }
  }

  Future<InvoiceResponse?> markInvoiceAsPaid(String invoiceId) async {
    try {
      final response = await dio.patch(
        '$baseUrl/invoices/$invoiceId/mark-paid',
      );
      return InvoiceResponse.fromJson(response.data);
    } catch (e) {
      print('Error marking invoice as paid: $e');
      return null;
    }
  }
}
