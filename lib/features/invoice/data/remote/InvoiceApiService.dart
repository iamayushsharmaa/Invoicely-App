import 'package:dio/dio.dart';

class InvoiceApiService {
  final Dio dio;
  static final String baseUrl = 'https://invoicely-367c.onrender.com';

  InvoiceApiService({required this.dio});


}
