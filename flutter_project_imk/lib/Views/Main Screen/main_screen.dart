import 'package:flutter/material.dart';
import 'package:flutter_project_imk/Views/Main%20Screen/account_screen.dart';
import 'package:flutter_project_imk/Views/Main%20Screen/analytics_screen.dart';
import 'package:flutter_project_imk/Views/Main%20Screen/home_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 1;
  var _pageController = new PageController(initialPage: 0);
  final List<Widget> _children = [
    AnalyticsScreen(),
    HomeScreen(),
    AccountScreen(),
  ];

  void _pageChange(index) {
    setState(() {
      _currentIndex =  index;
    });
  }

  void onTapped(index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            onPageChanged: _pageChange,
            controller: _pageController,
            itemCount: _children.length,
            itemBuilder: (context, index) => _children[_currentIndex],
          ),
          /* _children[_currentIndex], */
          Container(
            height: MediaQuery.of(context).size.height * 0.12,
            padding: EdgeInsets.only(top: 20),
            decoration: BoxDecoration(
              color: Color(0xFFF2CC8F),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () => onTapped(0),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.06,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: _currentIndex == 0 ? Color(0xFF3D405B) : Color(0xFFF2CC8F),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(
                          Icons.analytics,
                          size: 26,
                        ),
                        Text(
                          "Analytics",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w600,
                            color: _currentIndex == 0 ? Color(0xFFF4F1DE) : Color(0xFF3D405B),
                            fontSize: 14,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () => onTapped(1),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.06,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: _currentIndex == 1 ? Color(0xFF3D405B) : Color(0xFFF2CC8F),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(
                          Icons.home,
                          size: 26,
                        ),
                        Text(
                          "Home",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w600,
                            color: _currentIndex == 1 ? Color(0xFFF4F1DE) : Color(0xFF3D405B),
                            fontSize: 14,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () => onTapped(2),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.06,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: _currentIndex == 2 ? Color(0xFF3D405B) : Color(0xFFF2CC8F),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(
                          Icons.person_outline,
                          size: 26,
                        ),
                        Text(
                          "Account",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w600,
                            color: _currentIndex == 2 ? Color(0xFFF4F1DE) : Color(0xFF3D405B),
                            fontSize: 14,
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
