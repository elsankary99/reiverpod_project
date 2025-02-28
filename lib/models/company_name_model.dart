class CompanyNameModel {
  final String? name;

  const CompanyNameModel({this.name});

  factory CompanyNameModel.fromJson(Map<String, dynamic> json) {
    return CompanyNameModel(name: json['name']);
  }
}
