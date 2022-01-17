import 'package:flutter/material.dart';
import 'package:store_app/src/features/store/screens/details/pages/widgets/detail_color_container_widget.dart';

class DetailsColorComponent extends StatelessWidget {
  const DetailsColorComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: Row(
        children: const [
          Padding(
            padding: EdgeInsets.only(left: 6),
            child: Text(
              'Color:',
              style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Rocko',
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF8F9093)),
            ),
          ),
          Spacer(),
          DetailColorContainerWidget(color: Colors.red),
          DetailColorContainerWidget(color: Colors.black),
          DetailColorContainerWidget(color: Colors.yellow),
          DetailColorContainerWidget(color: Colors.green),
        ],
      ),
    );
  }
}
