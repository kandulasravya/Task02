import 'package:assignment/login.dart';
import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'Home.dart';
import 'Chat.dart';
import 'Search.dart';
import 'Profile.dart';
import "login.dart";
import 'signin.dart';
import 'open.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),

      routes: {
        HomeScreen.id: (context) =>HomeScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        SignupScreen.id: (context) =>SignupScreen(),
        Chat.id: (context) => Chat(),
        Home.id:  (context) => MyHomePage(title: 'Instagram',),
      },

    );
  }
}
class HomeMainPage extends StatefulWidget {
  @override
  _HomeMainPageState createState() => _HomeMainPageState();
}
class _HomeMainPageState extends State<HomeMainPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("This is Main Page "),
    );
  }
}
class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int selectedPage = 0;
  final _pageOptions = [Home(),  Search(), Profile()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: _pageOptions[selectedPage],
      bottomNavigationBar: ConvexAppBar(
        items: [
          TabItem(icon: Icons.home, title: 'Home'),
          TabItem(icon: Icons.search, title: 'Search'),
          TabItem(icon: Icons.person, title: 'Profile'),
          TabItem(icon:Icon(Icons.video_camera_front),title:'Reels'),
          TabItem(icon:Icons.favorite,title:'feed'),

        ],
        initialActiveIndex: 0,//optional, default as 0
        onTap: (int i ){
          setState(() {
            selectedPage = i;
          });
        },
      ),// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

