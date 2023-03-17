import 'package:appstore/utils/list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppScreen extends StatefulWidget {
  const AppScreen({Key? key}) : super(key: key);

  @override
  State<AppScreen> createState() => _AppScreenState();
}

class _AppScreenState extends State<AppScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CupertinoPageScaffold(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Apps',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                  CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage('assets/images/girl.jpg'),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                height: 1.5,
                color: CupertinoColors.systemGrey3,
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'NOW WITH SIRI',
                style:
                    TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Triplt:Travel Planner',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              Text(
                'Quickly get flight info with Siri',
                style: TextStyle(color: Colors.grey, fontSize: 25),
              ),
              SizedBox(
                height: 10,
              ),
              Image.asset(
                'assets/images/a2.png',
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: socialimg.length,
                  itemBuilder: (context, index) =>
                      Box2(socialimg[index], socialname[index]),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

Widget Box2(String img, String name)
{
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
      children: [
        Image.asset(img,height: 100,width: 100,fit: BoxFit.cover,),
        SizedBox(width: 5,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            Text('View more ...',style: TextStyle(color: Colors.grey)),
          ],
        ),
        Expanded(child: SizedBox(width: 5,)),
        Container(
          height: 30,
          width: 60,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.blue.shade100),
          child: Text(
            'OPEN',
            style: TextStyle(color: Colors.blue.shade900),
          ),
        ),
      ],
    ),
  );
}
}
