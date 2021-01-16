import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'settingsScreen.dart';
import 'contactPage.dart';
import 'landingPage.dart';
import 'shopCart.dart';
import 'newCargo.dart';
import 'chatPage.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'TURLUKS KARGO',
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
        ),
        home: MyHomePage(),
        initialRoute: '/',
        routes: {
          '/first': (context) => settingsPage(),
          '/second': (context) => contactPage()
        });
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  PersistentTabController _controller =
      PersistentTabController(initialIndex: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PersistentTabView(context,
            controller: _controller,
            screens: _buildScreens(),
            items: _navBarsItems(),
            confineInSafeArea: true,
            backgroundColor: p,
            handleAndroidBackButtonPress: true,
            resizeToAvoidBottomInset:
                true, // This needs to be true if you want to move up the screen when keyboard appears.
            stateManagement: true,
            hideNavigationBarWhenKeyboardShows:
                true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument.
            decoration: NavBarDecoration(
              borderRadius: BorderRadius.circular(10.0),
              colorBehindNavBar: Colors.white,
            ),
            popAllScreensOnTapOfSelectedTab: true,
            popActionScreens: PopActionScreensType.all,
            itemAnimationProperties: ItemAnimationProperties(
              // Navigation Bar's items animation properties.
              duration: Duration(milliseconds: 200),
              curve: Curves.ease,
            ),
            screenTransitionAnimation: ScreenTransitionAnimation(
              // Screen transition animation on change of selected tab.
              animateTabTransition: true,
              curve: Curves.ease,
              duration: Duration(milliseconds: 200),
            ),
            navBarStyle: NavBarStyle
                .style15 // Choose the nav bar style with this property.
            ));
  }
}

List<Widget> _buildScreens() {
  return [
    landingPage(),
    shopCart(),
    newCargoPage(),
    chatPage(),
    settingsPage(),
  ];
}

List<PersistentBottomNavBarItem> _navBarsItems() {
  return [
    PersistentBottomNavBarItem(
      icon: Icon(Icons.home),
      title: ("الصفحة الرئيسية"),
      activeColor: golden,
      inactiveColor: Colors.grey,
    ),
    PersistentBottomNavBarItem(
      icon: Icon(Icons.shopping_cart),
      title: ("طلباتي"),
      activeColor: golden,
      inactiveColor: Colors.grey,
    ),
    PersistentBottomNavBarItem(
      icon: Icon(
        Icons.add,
        color: Colors.white,
      ),
      title: ("إضافة"),
      activeColor: golden,
      inactiveColor: Colors.grey,
    ),
    PersistentBottomNavBarItem(
      icon: Icon(Icons.message),
      title: ("تواصل معنا"),
      activeColor: golden,
      inactiveColor: Colors.grey,
    ),
    PersistentBottomNavBarItem(
      icon: Icon(Icons.settings),
      title: ("الإعدادات"),
      activeColor: golden,
      inactiveColor: Colors.grey,
    ),
  ];
}
