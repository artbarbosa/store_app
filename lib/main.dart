import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get_it/get_it.dart';
import 'package:store_app/src/core/inject/inject.dart';
import 'package:store_app/src/core/repositories/repository_imp.dart';
import 'package:store_app/src/features/store/routes.dart';

import 'src/features/store/screens/home/stores/home_store.dart';

void main() {

  Inject.initializer();

  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
  runApp(AppWidget());
}

class AppWidget extends StatelessWidget {
  AppWidget({Key? key}) : super(key: key);

  final HomeStore controller = HomeStore(repository: RepositoryImp(dio: Dio()));
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      home: StoreRoute(
        controller: controller,
      ),
    );
  }
}
