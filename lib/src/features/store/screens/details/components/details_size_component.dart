import 'package:flutter/material.dart';
import 'package:store_app/src/features/store/screens/details/pages/widgets/detail_text_size_widget.dart';

class DetailsSizeComponent extends StatelessWidget {
  const DetailsSizeComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: Row(
        children: const [
          Padding(
            padding: EdgeInsets.only(left: 6),
            child: Text(
              'Size (US):',
              style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Rocko',
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF8F9093)),
            ),
          ),
          Spacer(),
          DetailTextSizeWidget(text: '4'),
          DetailTextSizeWidget(text: '6'),
          DetailTextSizeWidget(text: '8'),
        ],
      ),
    );
  }
}
