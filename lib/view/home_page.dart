import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_project/providers/company_provider/company_provider.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final companies = ref.watch(getAllCompanies);

    return Scaffold(
      body: companies.when(
        data: (data) {
          return ListView.separated(
            itemCount: data.length,
            itemBuilder: (context, i) {
              final name = data[i].name ?? 'error';
              return Text(name);
            },
            separatorBuilder: (context, index) {
              return Divider();
            },
          );
        },
        error: (error, _) {
          return Center(child: Text(error.toString()));
        },
        loading: () {
          return Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
