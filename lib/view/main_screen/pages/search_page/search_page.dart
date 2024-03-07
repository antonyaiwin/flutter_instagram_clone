// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_instagram_clone/data/dummy/dummy_db.dart';
import 'package:flutter_instagram_clone/view/main_screen/pages/search_page/widgets/search_app_bar.dart';
import 'widgets/search_grid_view.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SearchAppBar(),
      body: SearchGridView(
        childCount: DummyDb.imagesList.length,
        builder: (context, index) => Image.network(
          DummyDb.imagesList[index],
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
