import 'package:flutter/material.dart';
import 'quizzler_page.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Quizzler !!',
      home: FirstScreen(),
    ),
  );
}

class FirstScreen extends StatefulWidget {
  FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  //TODO : ศึกษาการกำหนดค่าเพื่อใช้งาน textField -> https://docs.flutter.dev/cookbook/forms/retrieve-input
  //เริ่มต้นกำหนดค่าสำหรับ textField
  final myController = TextEditingController();
  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    super.dispose();
  }
  //โดยถ้าต้องการอ้างถึงค่าข้อมูลใน textField นี้ สามารถอ้างถึงด้วย myController.text
  //จบการกำหนดค่าต่างๆสำหรับ textField

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          //TODO 1: ใส่ข้อความตกแต่งหรือ widget เพิ่มเติม เพื่อให้ผู้ใช้ทราบว่าต้องกรอกชื่อ

        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(2.5),
            child: Center(
              child: Text(
                'Quizzzzzz',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 60,
                  fontFamily: 'Rowdies',
                  fontWeight: FontWeight.normal,
                  color: Colors.indigo,
                ),
              ),
            ),
          ),
        ),
          Text(
              'please type your name',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 25,
                fontFamily: 'SourceSansPro',
                color: Colors.indigo,
                fontWeight: FontWeight.w100,
              ),
            ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Center(
                child: TextField(
                  textAlign: TextAlign.center,
                  controller: myController,
                ),
              ),
            ),
          ),
          //TODO : ศึกษาตัวอย่างการใช้ GestureDetector และ onTap -> https://docs.flutter.dev/cookbook/gestures/handling-taps
          //เริ่มต้นตัวอย่างการใช้งาน
          GestureDetector(
            onTap: () {
              //TODO : ศึกษาตัวอย่างการใช้ Navigator.push -> https://docs.flutter.dev/cookbook/navigation/navigation-basics
              Navigator.push(context, MaterialPageRoute(builder: (context) => Quizzler(name: myController.text)));
            },
            child: Expanded(
              child: Container(
                child: Text(
                  'NEXT',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Rowdies',
                  ),
                ),
                color: Colors.amber,
                height: 50.0,
                alignment: Alignment.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}