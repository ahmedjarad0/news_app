import 'package:flutter/material.dart';
import 'package:review0/news_app/screen/all_news_screen.dart';
import 'package:review0/news_app/screen/favourite_screen.dart';

import '../data/fake_new_app.dart';
import '../models/new_response.dart';
import '../widgets/new_widget.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  likeNews(NewResponse response) {
    int index = news.indexOf(response);
    news[index].isLiked = !news[index].isLiked;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('News App'),
          bottom: const TabBar(tabs: [
            Tab(
              text: 'ALL',
            ),
            Tab(
              text: 'Favourite',
            ),
          ]),
        ),
        body: TabBarView(
            children: [AllNewsScreen(likeNews), FavouriteScreen(likeNews)]),
      ),
    );
  }
}
