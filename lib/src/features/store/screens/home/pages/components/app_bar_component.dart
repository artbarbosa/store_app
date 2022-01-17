import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:store_app/src/core/models/category_model.dart';
import 'package:store_app/src/features/store/screens/home/pages/widgets/text_category_widget.dart';
import 'package:store_app/src/features/store/screens/home/stores/home_store.dart';

class AppBarComponent extends StatelessWidget {
  const AppBarComponent({
    Key? key,
    required this.list,
    required this.controller,
  }) : super(key: key);
  final List<CategoryModel> list;
  final HomeStore controller;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.white,
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: Container(
          decoration: BoxDecoration(border: Border.all(color: const Color(0xFFECECEC))),
          height: 40,
          child: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: ListView.builder(
              itemCount: list.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Observer(builder: (_) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 3),
                    child: Row(
                      children: [
                        if (index == 0) ...[
                          GestureDetector(
                            onTap: () {
                              controller.category = 'All';
                            },
                            child: const Padding(
                                padding: EdgeInsets.only(right: 3),
                                child: TextCategoryWidget(
                                  text: 'All',
                                  isActivy: true,
                                )),
                          ),
                          GestureDetector(
                            onTap: () =>
                                controller.category = list[index].category,
                            child: TextCategoryWidget(
                              text: list[index].category,
                            ),
                          ),
                        ] else ...[
                          GestureDetector(
                            onTap: () =>
                                controller.category = list[index].category,
                            child: TextCategoryWidget(
                              text: list[index].category,
                            ),
                          ),
                        ],
                      ],
                    ),
                  );
                });
              },
            ),
          ),
        ),
      ),
      title: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            Padding(
              padding:  EdgeInsets.only(right: 105.0),
              child:  Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              ),
            ),
            Text(
              'Zemmedy',
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Vectory',
                  fontSize: 24),
            ),
          ],
        ),
      ),
      actions: const [
        Padding(
          padding: EdgeInsets.only(top: 22.0,right: 10),
          child: Icon(
            Icons.tune,
            color: Colors.black,
          ),
        )
      ],
    );
  }
}
