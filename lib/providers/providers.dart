import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_project/services/company_name_service.dart';

final dioProvider = Provider<Dio>((ref) {
  return Dio();
});

final companyNameServiceProvider = Provider<CompanyNameService>((ref) {
  return CompanyNameService(dio: ref.read(dioProvider));
});
