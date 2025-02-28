import 'package:dio/dio.dart';
import 'package:riverpod_project/models/company_name_model.dart';

class CompanyNameService {
  final Dio dio;
  CompanyNameService({required this.dio});

  Future<List<CompanyNameModel>> getCompanyName() async {
    final response = await dio.get(
      'http://universities.hipolabs.com/search?country=Egypt',
    );
    final data = response.data as List<dynamic>;
    List<CompanyNameModel> allCompanies = [];
    for (var company in data) {
      allCompanies.add(
        CompanyNameModel.fromJson(company as Map<String, dynamic>),
      );
    }
    return allCompanies;
  }
}
