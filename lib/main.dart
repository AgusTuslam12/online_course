import 'package:flutter/material.dart';
import 'package:online_course/componen/course.dart';
import 'HomeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: HomeScreen(),
      theme: ThemeData(),
      initialRoute: '/homepages',
      routes: {
        '/homepages': (context) => HomeScreen(),
        '/detailCourse': (context) => course(),
      },
    );
  }
}
