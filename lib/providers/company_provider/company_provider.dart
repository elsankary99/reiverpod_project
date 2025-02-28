import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_project/models/company_name_model.dart';
import 'package:riverpod_project/providers/providers.dart';

final getAllCompanies = FutureProvider<List<CompanyNameModel>>((ref) async {
  final service = ref.read(companyNameServiceProvider);
  return await service.getCompanyName();
});
