import 'package:flutter/material.dart';
import 'package:store_app/src/core/models/product_model.dart';
import 'package:store_app/src/features/store/screens/details/pages/widgets/detail_list_widget.dart';

import 'widgets/details_app_bar_widget.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage(
      {Key? key,
      required this.product,
      required this.list,
      required this.onBack,
      required this.controller,
      required this.onChangeProduct})
      : super(key: key);

  final ProductModel product;
  final List<ProductModel> list;
  final VoidCallback onBack;
  final PageController controller;
  final ValueChanged<ProductModel> onChangeProduct;

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NotificationListener(
        onNotification: (notification) {
          setState(() {});
          return false;
        },
        child: CustomScrollView(
          slivers: [
            DetailAppBarWidget(
              product: widget.product,
              onBack: widget.onBack,
            ),
            DetailListWidget(
              product: widget.product,
              list: widget.list,
              controller: widget.controller,
              onChangeProduct: widget.onChangeProduct,
            ),
          ],
        ),
      ),
    );
  }
}
