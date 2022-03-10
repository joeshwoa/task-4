import 'package:flutter/material.dart';
import 'package:task4/core/size_config.dart';
import 'package:task4/model/my_tasks.dart';
import 'package:task4/widgets/task_wid.dart';

class Home extends StatefulWidget {
  Color c;
  Home(this.c);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int num_tasks = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(children: [
          Container(
            width: double.infinity,
            height: SizeConfig.screenHeight! * 0.03,
            child: Center(child: Text('tasks')),
          ),
          Container(
            child: ListView.builder(
              itemBuilder: (context, index) => Task_card(
                  widget.c,
                  My_tasks.Tasks[index].name,
                  My_tasks.Tasks[index].de,
                  My_tasks.Tasks[index].day,
                  My_tasks.Tasks[index].mon,
                  My_tasks.Tasks[index].year),
              itemCount: My_tasks.Tasks.length,
            ),
          )
        ]),
      ),
    );
  }
}
