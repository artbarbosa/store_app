import 'package:flutter/material.dart';
import 'package:store_app/src/features/store/screens/home/pages/widgets/icon_bottom_navigator_widget.dart';

class BottomNavigatorComponent extends StatelessWidget {
  const BottomNavigatorComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          decoration: const BoxDecoration(
            border: Border(
              top: BorderSide(color: Colors.white12, width: 1),
            ),
            color: Colors.white,
          ),
          height: 55,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const <Widget>[
              IconBottomNavigatorWidget(
                icon: Icons.grid_view_sharp,
                size: 23,
                isActivy: true,
              ),
              IconBottomNavigatorWidget(
                icon: Icons.search,
                size: 23,
              ),
              IconBottomNavigatorWidget(
                icon: Icons.local_mall_outlined,
                size: 23,
                topPadding: 4,
                bottomPadding: 4,
                fontSize: 0,
              ),
              IconBottomNavigatorWidget(
                icon: Icons.bookmark_border_sharp,
                size: 23,
              ),
              IconBottomNavigatorWidget(
                icon: Icons.settings_outlined,
                size: 23,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
