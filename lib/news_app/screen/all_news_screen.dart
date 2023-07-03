import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../data/fake_new_app.dart';
import '../widgets/new_widget.dart';

class AllNewsScreen extends StatelessWidget {
  const AllNewsScreen(this.function,{Key? key}) : super(key: key);
  final Function function ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: ListView.builder(
          itemCount: news.length,
          itemBuilder: (context, index) {
            return NewModel(news[index],function);
          }),
    );
  }
}
