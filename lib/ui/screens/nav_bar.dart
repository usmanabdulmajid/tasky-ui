import 'package:flutter/material.dart';
import 'package:test_app/core/common_widgets/tasky_icons.dart';
import 'package:test_app/core/core.dart';
import 'package:test_app/ui/screens/digital_clock_screen.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  late final PageController pageController;
  int selectedIndex = 0;
  final items = <BottomNavigationBarItem>[
    BottomNavigationBarItem(
      label: 'HOME',
      icon: TaskyIcons.home,
      activeIcon: TaskyIcons.home,
    ),
    BottomNavigationBarItem(
      label: 'CHALLENGE',
      icon: TaskyIcons.challenge,
      activeIcon: TaskyIcons.challenge,
    ),
    BottomNavigationBarItem(
      label: 'POMODORO',
      icon: TaskyIcons.time,
      activeIcon: TaskyIcons.time,
    ),
    BottomNavigationBarItem(
      label: 'TASKS',
      icon: TaskyIcons.taskCalendar,
      activeIcon: TaskyIcons.taskCalendar,
    ),
  ];

  @override
  void initState() {
    super.initState();
    pageController = PageController();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (selectedIndex != 0) {
          setState(() {
            selectedIndex = 0;
          });
          pageController.jumpToPage(selectedIndex);
          return false;
        }
        return true;
      },
      child: Scaffold(
        body: PageView(
          physics: const NeverScrollableScrollPhysics(),
          controller: pageController,
          children: const [
            DigitalClockScreen(),
            Scaffold(
              body: Center(
                child: Text(
                  'CHALLENGE',
                  style: TextStyle(color: AppColor.white),
                ),
              ),
            ),
            Scaffold(
              body: Center(
                child: Text(
                  'POMODORO',
                  style: TextStyle(color: AppColor.white),
                ),
              ),
            ),
            Scaffold(
              body: Center(
                child: Text(
                  'TASKS',
                  style: TextStyle(color: AppColor.white),
                ),
              ),
            ),
          ],
          onPageChanged: (page) {
            setState(() {
              selectedIndex = page;
            });
          },
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: selectedIndex,
          items: items,
          onTap: (index) {
            setState(() {
              selectedIndex = index;
            });
            pageController.jumpToPage(index);
          },
        ),
      ),
    );
  }
}
