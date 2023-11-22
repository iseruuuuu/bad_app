import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class ManyAnimationScreen extends StatelessWidget {
  const ManyAnimationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: 100,
        itemBuilder: (context, index) {
          return FadeInImage.memoryNetwork(
            placeholder: kTransparentImage,
            image:
                'https://pbs.twimg.com/profile_images/1642880523373789185/eNP5YbVw_400x400.jpg',
            width: 50,
            height: 50,
          );
        },
      ),
    );
  }
}
