import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task4/core/size_config.dart';
import 'package:task4/screens/home_scr.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  Color c1 = Colors.grey;
  Color c2 = Colors.grey;
  Color reg_c = Colors.grey;
  bool choose1 = false;
  bool choose2 = false;
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
        body: Column(
      children: [
        SizedBox(height: SizeConfig.screenHeight! * 0.03),
        Container(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: TextFormField(
              decoration: InputDecoration(
                labelText: 'Name',
                border: OutlineInputBorder(),
                suffixIcon: Icon(
                  Icons.person_rounded,
                ),
              ),
            ),
          ),
        ),
        Container(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: TextFormField(
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
                suffixIcon: Icon(
                  Icons.email_outlined,
                ),
              ),
            ),
          ),
        ),
        Container(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: TextFormField(
              decoration: InputDecoration(
                labelText: 'Phone Number',
                border: OutlineInputBorder(),
                suffixIcon: Icon(
                  Icons.phone_android_outlined,
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: SizeConfig.screenHeight! * 0.03),
        Container(
          child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        //color: c1,
                        borderRadius: BorderRadius.circular(25)),
                    child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            if (!choose1) {
                              c1 = Colors.blueAccent as Color;
                              c2 = Colors.grey as Color;
                              reg_c = c1;
                              choose1 = true;
                              choose2 = false;
                            } else {
                              c1 = Colors.grey as Color;
                              c2 = Colors.grey as Color;
                              reg_c = Colors.grey as Color;
                              choose1 = false;
                              choose2 = false;
                            }
                          });
                        },
                        child: Text('Male'),
                        style: ElevatedButton.styleFrom(primary: c1)),
                    height: SizeConfig.screenHeight! * 0.2,
                    width: SizeConfig.screenWidth! * 0.4,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      //color: c2,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            if (!choose2) {
                              c2 = Colors.pinkAccent as Color;
                              c1 = Colors.grey as Color;
                              reg_c = c2;
                              choose2 = true;
                              choose1 = false;
                            } else {
                              c1 = Colors.grey as Color;
                              c2 = Colors.grey as Color;
                              reg_c = Colors.grey as Color;
                              choose2 = false;
                              choose1 = false;
                            }
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          primary: c2,
                        ),
                        child: Text('Female')),
                    height: SizeConfig.screenHeight! * 0.2,
                    width: SizeConfig.screenWidth! * 0.4,
                  ),
                )
              ]),
        ),
        SizedBox(height: SizeConfig.screenHeight! * 0.03),
        Container(
          height: SizeConfig.screenHeight! * 0.07,
          width: SizeConfig.screenWidth! * 0.8,
          child: OutlinedButton(
              child: Text('Register'),
              onPressed: () {
                if(choose1==true)
                  {

                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Home(c1)))
                        .then((value) => setState(() {}));
                  }
                else if(choose2==true)
                {

                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Home(c2)))
                      .then((value) => setState(() {}));
                }
              },
              style: OutlinedButton.styleFrom(
                primary: reg_c,
              )),
        )
      ],
    ));
  }
}
