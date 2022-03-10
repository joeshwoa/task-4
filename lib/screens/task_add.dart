import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task4/model/my_tasks.dart';

import '../core/size_config.dart';


class Home extends StatefulWidget{
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late String name , de ;
  late int day , mon ,year;
  TextEditingController n =TextEditingController(),d =TextEditingController(),da =TextEditingController(),m =TextEditingController(),y =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            SizedBox(height: SizeConfig.screenHeight !* 0.03),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: TextFormField(controller: n,
                  decoration: InputDecoration(
                    labelText: 'Name Task',
                    border: OutlineInputBorder(),
                    suffixIcon: Icon(
                      Icons.attach_file,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: TextFormField(controller: d,
                  decoration: InputDecoration(
                    labelText: 'Detials',
                    border: OutlineInputBorder(),
                    suffixIcon: Icon(
                      Icons.account_tree,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Row(children: [
                  Container(child: TextFormField(controller: da,
                    decoration: InputDecoration(
                      labelText: 'Day',
                      border: OutlineInputBorder(),
                      suffixIcon: Icon(
                        Icons.calendar_today_outlined,
                      ),
                    ),
                  ),),
                  Container(child: TextFormField(controller: m,
                    decoration: InputDecoration(
                      labelText: 'Month',
                      border: OutlineInputBorder(),
                      suffixIcon: Icon(
                        Icons.calendar_today_outlined,
                      ),
                    ),
                  ),),
                  Container(child: TextFormField(controller: y,
                    decoration: InputDecoration(
                      labelText: 'Year',
                      border: OutlineInputBorder(),
                      suffixIcon: Icon(
                        Icons.calendar_today_outlined,
                      ),
                    ),
                  ),),
                ]),
              ),
            ),
            Container(
              height: SizeConfig.screenHeight !* 0.07,
              width: SizeConfig.screenWidth !* 0.8,
              child: OutlinedButton(
                  child: Text('Add'),onPressed: (){
                    My_tasks.Tasks.add()
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Home(,)))
                    .then((value) => setState(() {}));
              },
            ),
            )

          ],
        ));
  }
}
