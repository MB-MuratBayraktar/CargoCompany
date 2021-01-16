import 'package:flutter/material.dart';
import 'landingPage.dart';

class shopCart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: golden,
          centerTitle: true,
          title: Text('Shopping cart')),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          height: 900,
          child: (Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                    padding: const EdgeInsets.only(left: 18.0, top: 18),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.23,
                      height: MediaQuery.of(context).size.width * 0.23,
                      decoration: BoxDecoration(
                          /* image: DecorationImage(
                            image: AssetImage('images/003-box.png'),
                          ),*/
                          color: p,
                          borderRadius: BorderRadius.circular(20)),
                      child: new Center(
                        widthFactor: 75,
                        heightFactor: 75,
                        child: Image.asset(
                          'images/003-box.png',
                          height: 75,
                          width: 75,
                        ),
                      ),
                    )),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    children: [
                      Text(
                        '(x5) مستندات ',
                        style: TextStyle(fontSize: 20),
                      ),
                      Text('الوجهة: كاليفورنيا / الولايات المتحدة')
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Text(
                    '25 \$ ',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                height: 1,
                width: 350,
                color: golden.withOpacity(0.2),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                    padding: const EdgeInsets.only(left: 18.0, top: 0),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.23,
                      height: MediaQuery.of(context).size.width * 0.23,
                      decoration: BoxDecoration(
                          /* image: DecorationImage(
                            image: AssetImage('images/003-box.png'),
                          ),*/
                          color: p,
                          borderRadius: BorderRadius.circular(20)),
                      child: new Center(
                        widthFactor: 75,
                        heightFactor: 75,
                        child: Image.asset(
                          'images/003-box.png',
                          height: 75,
                          width: 75,
                        ),
                      ),
                    )),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    children: [
                      Text(
                        '(x1) أدوات ',
                        style: TextStyle(fontSize: 20),
                      ),
                      Text('الوجهة: نيفادا / الولايات المتحدة')
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Text(
                    '18 \$ ',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                height: 1,
                width: 350,
                color: golden.withOpacity(0.2),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                    padding: const EdgeInsets.only(left: 18.0, top: 0),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.23,
                      height: MediaQuery.of(context).size.width * 0.23,
                      decoration: BoxDecoration(
                          /* image: DecorationImage(
                            image: AssetImage('images/003-box.png'),
                          ),*/
                          color: p,
                          borderRadius: BorderRadius.circular(20)),
                      child: new Center(
                        widthFactor: 75,
                        heightFactor: 75,
                        child: Image.asset(
                          'images/003-box.png',
                          height: 75,
                          width: 75,
                        ),
                      ),
                    )),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    children: [
                      Text(
                        '(x1) الكترونيات ',
                        style: TextStyle(fontSize: 20),
                      ),
                      Text('الوجهة: هامبورغ / المانيا')
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Text(
                    '20 \$ ',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            )
          ])),
        ),
      ),
    );
  }
}
