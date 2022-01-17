import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';

import 'package:store_app/src/core/error/failure.dart';
import 'package:store_app/src/features/store/screens/details/container/details_container.dart';
import 'package:store_app/src/features/store/screens/home/pages/home_error.dart';
import 'package:store_app/src/features/store/screens/home/pages/home_loading.dart';
import 'package:store_app/src/features/store/screens/home/pages/home_page.dart';
import 'package:store_app/src/features/store/screens/home/stores/home_store.dart';

class HomeContainer extends StatelessWidget {
  const HomeContainer({
    Key? key,
    required this.onItemTap,
    required this.controller,
  }) : super(key: key);
  final Function(String, DetailArguments) onItemTap;
  final HomeStore controller;

  @override
  Widget build(BuildContext context) {
    final Future<List<Object>> getAllCategories;
    final Future<List<Object>> changeCategory;

    return Observer(builder: (_) {
      return FutureBuilder(
        future: Future.wait(
            [controller.changeCategory(), controller.getAllCategories()]),
        builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const HomeLoading();
          }
          if (snapshot.connectionState == ConnectionState.done &&
              snapshot.hasData) {
            return Observer(builder: (_) {
              return HomePage(
                categoryList: snapshot.data![1],
                productList: snapshot.data![0],
                onItemTap: onItemTap,
                controller: controller,
              );
            });
          }
          if (snapshot.hasError) {
            return HomeError(
              error: (snapshot.error as Failure).message!,
            );
          }

          return Container();
        },
      );
    });
  }
}
