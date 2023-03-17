import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TodayScreen extends StatefulWidget {
  const TodayScreen({Key? key}) : super(key: key);

  @override
  State<TodayScreen> createState() => _TodayScreenState();
}

class _TodayScreenState extends State<TodayScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CupertinoPageScaffold(
        child: Padding(
          padding: const EdgeInsets.only(top: 8,left: 8,right: 8),
          child: ListView(
            children: [
              SizedBox(height: 10,),
              Text('WEDNESDAY, SEPTEMBER 12'),
              SizedBox(height: 5,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Today',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
                  CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage('assets/images/girl.jpg'),
                  ),
                ],
              ),
              SizedBox(height: 5,),
              Image.asset('assets/images/t1.PNG'),
              SizedBox(height: 5,),
              Image.asset('assets/images/t2.PNG'),
            ],
          ),
        ),
      ),
    );
  }
}
