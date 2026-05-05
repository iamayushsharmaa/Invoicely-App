import 'package:dio/dio.dart';
import 'package:invoice/features/invoice/data/datasources/remote/invoice_remote_datasource.dart';
import 'package:invoice/features/invoice/data/model/invoice_model.dart';
import 'package:invoice/features/invoice/domain/entities/create_invoice_params.dart';

import '../../../../../core/network/api_error_handling.dart';

class InvoiceRemoteDataSourceImpl implements InvoiceRemoteDataSource {
  final Dio _dio;

  InvoiceRemoteDataSourceImpl(this._dio);

  @override
  Future<List<InvoiceModel>> getAllInvoices() async {
    try {
      final response = await _dio.get('/api/v1/invoices');
      final list = response.data as List<dynamic>;

      return list
          .map((e) => InvoiceModel.fromJson(e as Map<String, dynamic>))
          .toList();
    } on DioException catch (e) {
      throw handleDioError(e);
    }
  }

  @override
  Future<InvoiceModel> getInovoiceById(String invoiceId) async {
    try {
      final response = await _dio.get('/api/v1/incoices/$invoiceId');
      return InvoiceModel.fromJson(response.data as Map<String, dynamic>);
    } on DioException catch (e) {
      throw handleDioError(e);
    }
  }

  @override
  Future<List<InvoiceModel>> getInvoicesByClient(String clientId) async {
    try {
      final response = await _dio.get('/api/v1/invoices/client/$clientId');
      final list = response.data as List<dynamic>;

      return list
          .map((e) => InvoiceModel.fromJson(e as Map<String, dynamic>))
          .toList();
    } on DioException catch (e) {
      throw handleDioError(e);
    }
  }

  @override
  Future<InvoiceModel> createInvoice(CreateInvoiceParams params) async {
    try {
      final response = await _dio.post(
        '/api/v1/invoices',
        data: _paramsToJson(params),
      );

      return InvoiceModel.fromJson(response.data as Map<String, dynamic>);
    } on DioException catch (e) {
      throw handleDioError(e);
    }
  }

  @override
  Future<void> deleteInvoice(String invoiceId) async {
    try {
      await _dio.delete('/api/v1/invoices/$invoiceId');
    } on DioException catch (e) {
      throw handleDioError(e);
    }
  }

  @override
  Future<InvoiceModel> markAsPaid(String invoiceId) async {
    try {
      final response = await _dio.patch(
        '/api/v1/invoices/$invoiceId/mark-paid',
      );
      return InvoiceModel.fromJson(response.data as Map<String, dynamic>);
    } on DioException catch (e) {
      throw handleDioError(e);
    }
  }

  @override
  Future<List<InvoiceModel>> searchInvoices({
    String? invoiceNumber,
    String? clientName,
    int page = 0,
    int size = 10,
  }) async {
    try {
      final response = await _dio.get(
        '/api/v1/invoice/search',
        queryParameters: {
          if (invoiceNumber != null) 'invoiceNumber': invoiceNumber,
          if (clientName != null) 'clientName': clientName,
          'page': page,
          'size': size,
        },
      );
      // Spring Page<> wraps results inside 'content'
      final list = response.data['content'] as List<dynamic>;
      return list
          .map((e) => InvoiceModel.fromJson(e as Map<String, dynamic>))
          .toList();
    } on DioException catch (e) {
      throw handleDioError(e);
    }
  }

  @override
  Future<InvoiceModel> updateInvoice(
    String invoiceId,
    CreateInvoiceParams params,
  ) async {
    try {
      final response = await _dio.put(
        '/api/v1/invoices/$invoiceId',
        data: _paramsToJson(params),
      );
      return InvoiceModel.fromJson(response.data as Map<String, dynamic>);
    } on DioException catch (e) {
      throw handleDioError(e);
    }
  }

  Map<String, dynamic> _paramsToJson(CreateInvoiceParams params) => {
    'clientId': params.clientId,
    'invoiceNumber': params.invoiceNumber,
    'invoiceDate': params.invoiceDate.toIso8601String().split('T').first,
    'dueDate': params.dueDate.toIso8601String().split('T').first,
    'billingFrom': params.billingFrom,
    'billingTo': params.billingTo,
    if (params.notes != null) 'notes': params.notes,
    'status': params.status,
    'discount': params.discount,
    'tax': params.tax,
    'currency': params.currency,
    if (params.logoUrl != null) 'logoUrl': params.logoUrl,
    'subTotal': params.subTotal,
    'totalAmount': params.totalAmount,
    'items': params.items
        .map(
          (e) => {
            'description': e.description,
            'quantity': e.quantity,
            'price': e.price,
          },
        )
        .toList(),
  };
}
