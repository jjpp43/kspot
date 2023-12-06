//앱의 루트 위젯입니다. 주로 네비게이션 및 테마 설정을 담당합니다.
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
//import 'package:kspot/example_view.dart';
import 'package:kspot/src/shared/app_colors.dart';
import 'src/view/homeScreen.dart';
import 'src/view/searchScreen.dart';
import 'src/view/profileScreen.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  int _currentIndex = 0;

  final List<Widget> _children = [
    HomeScreen(),
    SearchScreen(),
    ProfileScreen(),
    //ExampleView()
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BackgroundColor,
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        backgroundColor: BackgroundColor,
        selectedItemColor: PrimaryColor,
        selectedIconTheme: IconThemeData(color: PrimaryColor),
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
        elevation: 1,
        items: [
          BottomNavigationBarItem(
            icon: _currentIndex == 0
                ? SvgPicture.asset('assets/icons/house-fill.svg',
                    width: 24,
                    height: 24,
                    colorFilter:
                        ColorFilter.mode(PrimaryColor, BlendMode.srcIn))
                : SvgPicture.asset('assets/icons/house.svg',
                    width: 24,
                    height: 24,
                    colorFilter:
                        ColorFilter.mode(MediumGreyColor, BlendMode.srcIn)),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: _currentIndex == 1
                ? SvgPicture.asset('assets/icons/magnifying-glass-fill.svg',
                    width: 24,
                    height: 24,
                    colorFilter:
                        ColorFilter.mode(PrimaryColor, BlendMode.srcIn))
                : SvgPicture.asset('assets/icons/magnifying-glass.svg',
                    width: 24,
                    height: 24,
                    colorFilter:
                        ColorFilter.mode(MediumGreyColor, BlendMode.srcIn)),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: _currentIndex == 2
                ? SvgPicture.asset('assets/icons/user-fill.svg',
                    width: 24,
                    height: 24,
                    colorFilter:
                        ColorFilter.mode(PrimaryColor, BlendMode.srcIn))
                : SvgPicture.asset('assets/icons/user.svg',
                    width: 24,
                    height: 24,
                    colorFilter:
                        ColorFilter.mode(MediumGreyColor, BlendMode.srcIn)),
            label: 'User',
          ),
          // BottomNavigationBarItem(
          //     icon: Icon(
          //       Icons.accessibility,
          //       color: Colors.red,
          //     ),
          //     label: 'Test')
        ],
      ),
    );
  }
}
