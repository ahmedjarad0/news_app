import 'package:flutter/material.dart';

import '../data/fake_new_app.dart';
import '../widgets/new_widget.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen(this.function, {Key? key}) : super(key: key);
  final Function function;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: news.where((element) => element.isLiked).length,
        itemBuilder: (context, index) {
          return NewModel(
              news.where((element) => element.isLiked).toList()[index],
              function);
        });
  }
}
