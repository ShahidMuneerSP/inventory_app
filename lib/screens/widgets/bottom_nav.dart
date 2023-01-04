import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

ValueNotifier<int> indexChangeNotifier = ValueNotifier(0);

class BottomNavigationWidget extends StatelessWidget {
  const BottomNavigationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: indexChangeNotifier,
      builder: (context, int newIndex, _) {
        return BottomNavigationBar(
            currentIndex: newIndex,
            onTap: (index) {
              indexChangeNotifier.value = index;
            },
            backgroundColor: Colors.white,
            selectedItemColor: newIndex == 0
                ? const Color.fromARGB(223, 183, 40, 27)
                : newIndex == 1
                    ? const Color.fromARGB(255, 36, 165, 96)
                    : newIndex == 2
                        ? const Color.fromARGB(223, 183, 40, 27)
                        : const Color.fromARGB(255, 19, 91, 151),
            unselectedItemColor: Colors.grey,
            selectedIconTheme: newIndex == 0
                ? const IconThemeData(color: Color.fromARGB(223, 183, 40, 27))
                : newIndex == 1
                    ? const IconThemeData(
                        color: Color.fromARGB(255, 36, 165, 96))
                    : newIndex == 2
                        ? const IconThemeData(
                            color: Color.fromARGB(223, 183, 40, 27))
                        : const IconThemeData(
                            color: Color.fromARGB(255, 19, 91, 151)),
            unselectedIconTheme: const IconThemeData(color: Colors.grey),
            type: BottomNavigationBarType.fixed,
            items: [
              const BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'HOME',
              ),
              BottomNavigationBarItem(
                  icon: Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: SizedBox(
                        height: 20.h,
                        width: 20.w,
                        child: SvgPicture.asset(
                          "assets/inward_icon.svg",
                          color: newIndex == 1
                              ? const Color.fromARGB(255, 36, 165, 96)
                              : Colors.grey,
                        )),
                  ),
                  label: "INWARDS"),
              BottomNavigationBarItem(
                  icon: Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: SizedBox(
                        height: 20.h,
                        width: 20.w,
                        child: SvgPicture.asset("assets/inward_icon.svg",
                            color: newIndex == 2
                                ? const Color.fromARGB(223, 183, 40, 27)
                                : Colors.grey)),
                  ),
                  label: "OUTWARDS"),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: SizedBox(
                      height: 20.h,
                      width: 20.w,
                      child: SvgPicture.asset(
                        "assets/transfer_icon.svg",
                        color: newIndex == 3
                            ? const Color.fromARGB(255, 19, 91, 151)
                            : Colors.grey,
                      )),
                ),
                label: "TRANSFER",
              ),
            ]);
      },
    );
  }
}
