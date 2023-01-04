import 'package:flutter/material.dart';
import 'package:inventory_app_ui/screens/transfer/screen_transfer.dart';
import 'package:inventory_app_ui/screens/widgets/bottom_nav.dart';

import 'home/screen_home.dart';
import 'inwards/screen_inwards.dart';
import 'outwards/screen_outwards.dart';

class MainScreen extends StatelessWidget {
  MainScreen({Key? key}) : super(key: key);
  final _pages = [
    const ScreenHome(),
    const ScreenInwards(),
    const ScreenOutwards(),
    const ScreenTransfer(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: indexChangeNotifier,
        builder: (context, int index, _) {
          return _pages[index];
        },
      ),
      bottomNavigationBar: const BottomNavigationWidget(),
    );
  }
}
