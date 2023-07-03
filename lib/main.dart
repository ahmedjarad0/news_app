import 'package:flutter/material.dart';
import 'package:review0/news_app/screen/main_screen.dart';

import 'news_app/screen/all_news_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {

    return  const MaterialApp(
     debugShowCheckedModeBanner: false,
     home: MainScreen(),
   );
  }
}
