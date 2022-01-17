import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:store_app/src/features/store/screens/home/stores/home_store.dart';

import 'screens/details/container/details_container.dart';
import 'screens/home/container/home_container.dart';

class StoreRoute extends StatelessWidget {
  const StoreRoute({Key? key, required this.controller}) : super(key: key);
  final HomeStore controller;
  @override
  Widget build(BuildContext context) {
    return Navigator(
      initialRoute: '/',
      onGenerateRoute: (settings) {
        if (settings.name == '/') {
          return MaterialPageRoute(
            builder: (context) {
              return Observer(builder: (_) {
                return HomeContainer(
                  controller: controller,
                  onItemTap: (route, arguments) {
                    Navigator.of(context)
                        .pushNamed(route, arguments: arguments);
                  },
                );
              });
            },
          );
        }
        if (settings.name == '/detail') {
          return MaterialPageRoute(
            builder: (context) {
              return DetailContainer(
                repository: controller.repository,
                arguments: (settings.arguments as DetailArguments),
                onBack: () {
                  Navigator.of(context).pop();
                },
              );
            },
          );
        }
      },
    );
  }
}
