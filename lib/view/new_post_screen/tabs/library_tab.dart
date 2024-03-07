import 'package:flutter/material.dart';
import 'package:flutter_instagram_clone/data/dummy/dummy_db.dart';

class LibraryTab extends StatelessWidget {
  const LibraryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        crossAxisSpacing: 1,
        mainAxisSpacing: 1,
      ),
      itemBuilder: (context, index) {
        return Image.network(DummyDb.personImages[index]);
      },
      itemCount: DummyDb.personImages.length,
    );
  }
}
