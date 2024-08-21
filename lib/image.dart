import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Image(
        image: NetworkImage('https://images.app.goo.gl/dF7CpqDmBfgw4qzu8'),
      ),
    );
  }
}
