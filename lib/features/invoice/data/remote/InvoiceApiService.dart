import 'package:dio/dio.dart';

import '../model/invoice_request.dart';
import '../model/invoice_response.dart';

class InvoiceApiService {
  final Dio dio;
  static const String baseUrl =
      'https://invoicely-367c.onrender.com/api/v1/invoices';

  InvoiceApiService({required this.dio});

  Future<InvoiceResponse?> createInvoice(InvoiceRequest request) async {
    try {
      final response = await dio.post(baseUrl, data: request.toJson());
      return InvoiceResponse.fromJson(response.data);
    } catch (e) {
      print('Error creating invoice: $e');
      return null;
    }
  }

  Future<List<InvoiceResponse>> searchInvoices(
    Map<String, dynamic> queryParams,
  ) async {
    try {
      final response = await dio.get(
        '$baseUrl/search',
        queryParameters: queryParams,
      );
      return (response.data as List)
          .map((item) => InvoiceResponse.fromJson(item))
          .toList();
    } catch (e) {
      print('Error searching invoices: $e');
      return [];
    }
  }

  Future<List<InvoiceResponse>> getAllInvoices() async {
    try {
      final response = await dio.get(baseUrl);
      return (response.data as List)
          .map((item) => InvoiceResponse.fromJson(item))
          .toList();
    } catch (e) {
      print('Error fetching invoices: $e');
      return [];
    }
  }

  Future<InvoiceResponse?> getInvoiceById(String id) async {
    try {
      final response = await dio.get('$baseUrl/$id');
      return InvoiceResponse.fromJson(response.data);
    } catch (e) {
      print('Error fetching invoice by ID: $e');
      return null;
    }
  }

  Future<InvoiceResponse?> updateInvoice(
    String id,
    InvoiceRequest request,
  ) async {
    try {
      final response = await dio.put('$baseUrl/$id', data: request.toJson());
      return InvoiceResponse.fromJson(response.data);
    } catch (e) {
      print('Error updating invoice: $e');
      return null;
    }
  }

  Future<bool> deleteInvoice(String id) async {
    try {
      await dio.delete('$baseUrl/$id');
      return true;
    } catch (e) {
      print('Error deleting invoice: $e');
      return false;
    }
  }
}
