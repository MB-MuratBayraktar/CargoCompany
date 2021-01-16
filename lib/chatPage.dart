import 'package:flutter/material.dart';
import 'landingPage.dart';

class chatPage extends StatefulWidget {
  @override
  _chatPageState createState() => _chatPageState();
}

class _chatPageState extends State<chatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: golden,
        centerTitle: true,
        title: Text('Chat window'),
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/white.jpg'), fit: BoxFit.cover)),
          child: Column(
            children: [
              msgLeft(' 😊 أهلا بك استاذ أحمد, كيف يمكنني مساعدتك؟', 350, 50),
              msgRight(
                  '🤔 أريد الاستفسار عن ساعات العمل خلال الأعياد الرسمية\nلإرسال هدية بشكل سريع ',
                  400,
                  100),
              msgLeft(
                  'بالطبع!, يمكنكم إرسال هداياكم لأحبابكم\n في الوقت الذي تشاؤون, لكن ننصح بحجز موعد \n لما فيه من ضغط خلال أيام العيد',
                  350,
                  120),
              msgRight('تمام🤩, شكرا جزيلاً لوقتك', 220, 50),
              msgLeft(
                  'لا شكر على واجب  \n أهلآ وسهلاً بكم في شركتنا😊 ', 300, 80)
            ],
          ),
        ),
      ),
    );
  }
}

Widget msgLeft(String t, double w, double h) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: CircleAvatar(
                radius: 32,
                backgroundImage: AssetImage('images/caller.jpg'),
              ),
            ),
            SizedBox(height: 100),
          ],
        ),
        Container(
          width: w,
          height: h,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(25),
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  t,
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    ),
  );
}

Widget msgRight(String t, double w, double h) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: Container(
            width: w,
            height: h,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    t,
                    textAlign: TextAlign.right,
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ],
            ),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 100),
          ],
        ),
      ],
    ),
  );
}
