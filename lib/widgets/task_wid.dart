import 'package:flutter/material.dart';
import 'package:task4/core/size_config.dart';

class Task_card extends StatelessWidget {
  Color c ;
  String name , de ;
  int day , mon ,year;
  Task_card(this.c,this.name,this.de,this.day,this.mon,this.year);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.screenHeight! * 0.25,
      width: SizeConfig.screenWidth! * 0.7,
      decoration: BoxDecoration(color: c,borderRadius: BorderRadius.circular(25)),
      child: Column(
        children: [
          Container(child: Text(name,),),
          Container(child: Text(de,),),
          Container(child: Text('dead line',),),
          Container(child: Text(day.toString()+'/'+mon.toString()+'/'+year.toString(),),),
        ],
      ),
    );
  }
}
