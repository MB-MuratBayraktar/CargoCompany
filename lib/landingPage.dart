import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:country_list_pick/country_list_pick.dart';
import 'package:countdown_flutter/countdown_flutter.dart';

Color g = Color(0xff402E32);
Color golden = Color(0xffC59A3D);
Color lastnight = Color(0xff0D0C0A);
Color beig = Color(0xffDFE0DF);
Color p = Color(0xffFFF8EE);

class landingPage extends StatefulWidget {
  @override
  _landingPageState createState() => _landingPageState();
}

class _landingPageState extends State<landingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
          elevation: 5,
          backgroundColor: golden,
          centerTitle: true,
          title: Text('TURLUKS')),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        child: ListView(
          children: [
            SizedBox(height: 20),
            CarouselSlider(
              options: CarouselOptions(
                height: 350,
                autoPlay: true,
                aspectRatio: 16 / 9,
                enlargeCenterPage: true,
                autoPlayCurve: Curves.fastOutSlowIn,
                autoPlayAnimationDuration: Duration(milliseconds: 800),
              ),
              items: [
                Container(
                  margin: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: AssetImage('images/impact.jpg'),
                          fit: BoxFit.cover)),
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: AssetImage('images/call.jpg'),
                          fit: BoxFit.cover)),
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: AssetImage('images/callCenter.jpg'),
                          fit: BoxFit.cover)),
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: AssetImage('images/call.jpg'),
                          fit: BoxFit.cover)),
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: AssetImage('images/call.jpg'),
                          fit: BoxFit.cover)),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              creatAlertDialog(context);
                            },
                            child: Container(
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Image.asset('images/008-checklist.png'),
                              ),
                              height: MediaQuery.of(context).size.width * 0.3,
                              width: MediaQuery.of(context).size.width * 0.3,
                              decoration: BoxDecoration(
                                  /*  image: DecorationImage(
                                      image: AssetImage('images/008-checklist.png')),
                               */
                                  borderRadius: BorderRadius.circular(35),
                                  color: p),
                            ),
                          ),
                          Text(
                            'حساب تكاليف الشحن',
                            style: TextStyle(fontSize: 22, color: lastnight),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Image.asset('images/012-date.png'),
                              ),
                              height: MediaQuery.of(context).size.width * 0.3,
                              width: MediaQuery.of(context).size.width * 0.3,
                              decoration: BoxDecoration(
                                  /*  image: DecorationImage(
                                      image: AssetImage('images/008-checklist.png')),
                               */
                                  borderRadius: BorderRadius.circular(35),
                                  color: p),
                            ),
                          ),
                          Text(
                            'مواعيد الشحن',
                            style: TextStyle(fontSize: 22, color: lastnight),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Stack(children: [
                Container(
                  height: 180,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: p,
                      borderRadius: BorderRadius.circular(35),
                      image: DecorationImage(
                          image: AssetImage('images/win.jpg'),
                          fit: BoxFit.cover)),
                ),
                Container(
                  height: 180,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.25),
                    borderRadius: BorderRadius.circular(35),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        SizedBox(height: 40),
                        Padding(
                          padding: const EdgeInsets.all(5),
                          child: Text(
                            'ثانية : دقيقة : ساعة',
                            style: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CountdownFormatted(
                                duration: Duration(
                                    hours: 5, minutes: 57, seconds: 18),
                                onFinish: () {
                                  print('finished!');
                                },
                                builder: (BuildContext ctx, String remaining) {
                                  return Text(
                                    remaining,
                                    style: TextStyle(
                                        fontSize: 35,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  );
                                }),
                          ],
                        ),
                        /*Padding(
                          padding: const EdgeInsets.all(5),
                          child: Text(
                            'شارك في السحب',
                            style: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),*/
                      ],
                    ),
                  ],
                ),
              ]),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(35)),
                    width: MediaQuery.of(context).size.width - 100,
                    height: 50,
                    child: Center(
                      child: Text(
                        'شارك في السحب على جائزة الشهر',
                        style: TextStyle(
                            fontSize: 25,
                            color: golden,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      drawer: Drawer(
        elevation: 15,
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 55,
                    backgroundImage: AssetImage('images/turluks.png'),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/w.jpg'), fit: BoxFit.cover),
              ),
            ),
            ListTile(
              title: Text("Ttem 1"),
              trailing: Icon(Icons.arrow_forward),
            ),
            ListTile(
              title: Text("Item 2"),
              trailing: Icon(Icons.arrow_forward),
            ),
            ListTile(
              title: Text("Item 3"),
              trailing: Icon(Icons.arrow_forward),
            ),
            ListTile(
              title: Text("Item 4"),
              trailing: Icon(Icons.arrow_forward),
            ),
          ],
        ),
      ),
    );
  }
}

Widget createHeader() {
  return DrawerHeader(
      margin: EdgeInsets.zero,
      padding: EdgeInsets.zero,
      decoration: BoxDecoration(
          /*
          image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage('path/to/header_background.png'))*/
          color: golden),
      child: Stack(children: <Widget>[
        Positioned(
            bottom: 12.0,
            left: 16.0,
            child: Text("Flutter Step-by-Step",
                style: TextStyle(
                    color: golden,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w500))),
      ]));
}

class CustomDialogBox extends StatefulWidget {
  final String title, descriptions, text;
  final Image img;

  const CustomDialogBox(
      {Key key, this.title, this.descriptions, this.text, this.img})
      : super(key: key);

  @override
  _CustomDialogBoxState createState() => _CustomDialogBoxState();
}

class _CustomDialogBoxState extends State<CustomDialogBox> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: contentBox(context),
    );
  }

  contentBox(context) {
    return Stack(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    offset: Offset(0, 10),
                    blurRadius: 10),
              ]),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                widget.title,
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                widget.descriptions,
                style: TextStyle(fontSize: 14),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 22,
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: FlatButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text(
                      widget.text,
                      style: TextStyle(fontSize: 18),
                    )),
              ),
            ],
          ),
        ),
        Positioned(
          left: MediaQuery.of(context).size.width / 2,
          right: MediaQuery.of(context).size.width / 2,
          child: CircleAvatar(
            backgroundColor: Colors.transparent,
            radius: 15,
            child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                child: Image.asset("assets/model.jpeg")),
          ),
        ),
      ],
    );
  }
}

creatAlertDialog(BuildContext context) {
  TextEditingController h = TextEditingController();
  TextEditingController w = TextEditingController();
  TextEditingController depth = TextEditingController();
  TextEditingController weight = TextEditingController();
  TextEditingController price = TextEditingController();
  void _calculate() {
    if (h.text.trim().isNotEmpty &&
        w.text.trim().isNotEmpty &&
        depth.text.trim().isNotEmpty &&
        weight.text.trim().isNotEmpty) {
      final hVal = double.parse(h.text);
      final wVal = double.parse(w.text);
      final depthVal = double.parse(depth.text);
      final weightVal = double.parse(weight.text);

      price.text = (hVal * wVal * depthVal * 0.000001 * weightVal * 0.2)
          .toStringAsFixed(2);
    }
  }

  return showDialog(
      context: context,
      builder: (_) => SingleChildScrollView(
            child: new AlertDialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0))),
              title: Text('حساب تكاليف الشحن'),
              elevation: 10,
              content: Builder(
                builder: (context) {
                  // Get available height and width of the build area of this widget. Make a choice depending on the size.
                  var height = MediaQuery.of(context).size.height;
                  var width = MediaQuery.of(context).size.width;
                  return Container(
                    height: height - 100,
                    width: width - 100,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'الطول: (سم) ',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        TextField(
                          textAlign: TextAlign.right,
                          keyboardType: TextInputType.number,
                          controller: h,
                          onChanged: (value) {
                            _calculate();
                          },
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 10.0),
                              child: Text(
                                'العرض: (سم) ',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                        TextField(
                          textAlign: TextAlign.right,
                          keyboardType: TextInputType.number,
                          controller: w,
                          onChanged: (value) {
                            _calculate();
                          },
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 10.0),
                              child: Text(
                                'الارتفاع: (سم) ',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                        TextField(
                          textAlign: TextAlign.right,
                          keyboardType: TextInputType.number,
                          controller: depth,
                          onChanged: (value) {
                            _calculate();
                          },
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 10.0),
                              child: Text(
                                'الوزن: (غرام) ',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                        TextField(
                          decoration:
                              InputDecoration(hintText: 'الرجاء إدخال الوزن'),
                          textAlign: TextAlign.right,
                          keyboardType: TextInputType.number,
                          controller: weight,
                          onChanged: (value) {
                            _calculate();
                          },
                        ),
                        SizedBox(height: 50),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ClipRect(
                            child: CountryListPick(
                              onChanged: (CountryCode code) {
                                final a = SnackBar(
                                  elevation: 10,
                                  content:
                                      Text(' تم اختيار دولة: ${code.name} '),
                                );
                              },
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Container(
                            height: 2,
                            color: golden,
                            width: MediaQuery.of(context).size.width * 0.3,
                          ),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              ': السعر الإجمالي (شامل للضرائب)  ',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                        AbsorbPointer(
                          child: TextField(
                            textAlign: TextAlign.right,
                            keyboardType: TextInputType.number,
                            controller: price,
                            onChanged: (value) {
                              _calculate();
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Container(
                            width: 300,
                            child: MaterialButton(
                              color: golden,
                              child: Text(
                                'خروج',
                                style: TextStyle(color: Colors.white),
                              ),
                              onPressed: () {
                                Navigator.of(context, rootNavigator: true)
                                    .pop('dialog');
                              },
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
          ));
}
