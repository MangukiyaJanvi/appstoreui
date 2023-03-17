import 'package:appstore/screens/homescreen/appsscreen/view/app_screen.dart';
import 'package:appstore/screens/homescreen/gamesscreen/view/game_screen.dart';
import 'package:appstore/screens/homescreen/todayscreen/view/today_screen.dart';
import 'package:flutter/cupertino.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List ScreenList=[TodayScreen(),GameScreen(),AppScreen()];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(items: [
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.today), label: 'Today'),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.rocket_fill), label: 'Games'),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.square_stack_3d_up_fill), label: 'Apps'),
        ]), tabBuilder: (context, index) => ScreenList[index],
      ),
    );
  }
}
