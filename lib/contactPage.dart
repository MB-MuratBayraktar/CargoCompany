import 'package:flutter/material.dart';

import 'landingPage.dart';

class contactPage extends StatefulWidget {
  @override
  _contactPageState createState() => _contactPageState();
}

class _contactPageState extends State<contactPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: golden,
        centerTitle: true,
        title: Text('contact info'),
      ),
      body: Column(
        children: [
          Expanded(
              child: Container(
            decoration: BoxDecoration(color: Colors.white),
          ))
        ],
      ),
    );
  }
}
