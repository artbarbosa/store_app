import 'package:flutter/material.dart';
import 'package:store_app/src/core/error/failure.dart';
import 'package:store_app/src/core/models/product_model.dart';
import 'package:store_app/src/core/repositories/repository_interface.dart';
import 'package:store_app/src/core/widgets/po_error.dart';
import 'package:store_app/src/core/widgets/po_loading.dart';
import 'package:store_app/src/features/store/screens/details/pages/details_page.dart';

class DetailArguments {
  DetailArguments({required this.product, this.index});
  final ProductModel product;
  final int? index;
}

class DetailContainer extends StatefulWidget {
  const DetailContainer(
      {Key? key,
      required this.repository,
      required this.arguments,
      required this.onBack})
      : super(key: key);
  final IRepository repository;
  final DetailArguments arguments;
  final VoidCallback onBack;

  @override
  State<DetailContainer> createState() => _DeatailContainerState();
}

class _DeatailContainerState extends State<DetailContainer> {
  late PageController _controller;
  late Future<List<ProductModel>> _future;
  ProductModel? _product;

  @override
  void initState() {
    _controller = PageController(
        viewportFraction: 0.5, initialPage: widget.arguments.index!);
    _future = widget.repository.getAllProducts();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ProductModel>>(
      future: _future,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const PoLoading();
        }
        if (snapshot.connectionState == ConnectionState.done &&
            snapshot.hasData) {
          _product ??= widget.arguments.product;
          return DetailsPage(
            product: _product!,
            list: snapshot.data!,
            onBack: widget.onBack,
            controller: _controller,
            onChangeProduct: (ProductModel value) {
              setState(() {
                _product = value;
              });
            },
          );
        }
        if (snapshot.hasError) {
          return PoError(
            error: (snapshot.error as Failure).message!,
          );
        }

        return Container();
      },
    );
  }
}
