import 'package:bucket_list/screens/home_page.dart';
import 'package:flutter/material.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title:"Bucket List",
      theme: ThemeData(
        primaryColor: Colors.amber,
        accentColor: Colors.amberAccent,
      ),
      home:HomePage(),
    );
  }
}
