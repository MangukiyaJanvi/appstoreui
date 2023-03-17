import 'package:appstore/screens/homescreen/appsscreen/view/app_screen.dart';
import 'package:appstore/screens/homescreen/gamesscreen/view/game_screen.dart';
import 'package:appstore/screens/homescreen/todayscreen/view/today_screen.dart';
import 'package:appstore/screens/homescreen/view/home_screen.dart';
import 'package:flutter/cupertino.dart';

void main()
{
  runApp(
    CupertinoApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(p0) => HomeScreen(),
        'todayscreen':(p0) => TodayScreen(),
        'gamescreen':(p0) => GameScreen(),
        'appscreen':(p0) => AppScreen(),
      },
    ),
  );
}