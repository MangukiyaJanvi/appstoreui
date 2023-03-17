import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../utils/list.dart';

class GameScreen extends StatefulWidget {
  const GameScreen({Key? key}) : super(key: key);

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {

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
                    'Games',
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
              Text('New Game',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),),
              SizedBox(
                height: 5,
              ),
              Text('Warhammer Aos : Realm War',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
              Text('Compete in thrilling batties',style: TextStyle(color: Colors.grey,fontSize: 25),),
              SizedBox(
                height: 10,
              ),
              Image.asset(
                'assets/images/a1.jpg',
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: game.length,
                  itemBuilder: (context, index) =>
                      Box(game[index], gamen[index]),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
  Widget Box(String img, String name) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Image.asset(
            img,
            height: 100,
            width: 100,
            fit: BoxFit.cover,
          ),
          SizedBox(width: 10,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              Row(
                children: [
                  Container(
                    height: 30,
                    width: 60,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.blue.shade100),
                    child: Text(
                      'GET',
                      style: TextStyle(color: Colors.blue.shade900),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('in app'),
                      Text('- purchase'),
                    ],
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
