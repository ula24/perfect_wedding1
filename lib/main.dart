import 'package:flutter/material.dart';
import 'package:perfect_wedding1/Task_List.dart';

import 'About.dart';
import 'Manage_your_posts.dart';
import 'Edit_Task.dart';
import 'Likes.dart';
import 'Login.dart';
import 'Messages.dart';
import 'New_Post.dart';
import 'New_Task.dart';
import 'Profile.dart';
import 'Register.dart';
import 'Saved_Posts.dart';
import 'Search.dart';
import 'Wedding_planner.dart';
import 'alarm.dart';
import 'home.dart';
import 'Setting.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My app',
      theme: ThemeData(
        fontFamily: 'tektonpro-bold',
          primarySwatch: const MaterialColor(0xFFA6523F, {
            50: Color.fromRGBO(166, 82, 63, .1),
            100: Color.fromRGBO(166, 82, 63, .2),
            200: Color.fromRGBO(166, 82, 63, .3),
            300: Color.fromRGBO(166, 82, 63, .4),
            400: Color.fromRGBO(166, 82, 63, .5),
            500: Color.fromRGBO(166, 82, 63, .6),
            600: Color.fromRGBO(166, 82, 63, .7),
            700: Color.fromRGBO(166, 82, 63, .8),
            800: Color.fromRGBO(166, 82, 63, .9),
            900: Color.fromRGBO(166, 82, 63, 1),
          }),
      ),
      initialRoute: '/',
      routes: {
        '/':(context) => home() ,
        '/Login':(context) => Login() ,
        '/Likes':(context) => Likes() ,
        '/Search':(context) => Search(),
        '/Setting':(context) => Setting(),
        '/Register':(context) => Register(),
        '/Profile':(context) => Profile(),
        '/Task_List':(context) => Task_List(),
        '/Register':(context) => Register(),
        '/Messages':(context) => Messages(),
        '/Wedding_planner':(context) => Wedding_planner(),
        '/Saved_Posts':(context) => Saved_Posts(),
        '/About':(context) => About(),
        '/New_Post':(context) => New_Post(),
        '/New_Task':(context) => New_Task(),
        '/Edit_Task':(context) => Edit_Task(),
        '/alarm':(context) => alarm(),
        '/Edit_Profile':(context) => Edit_Profile(),


















      },
    );
  }
}
