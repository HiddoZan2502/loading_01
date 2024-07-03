import 'package:flutter/material.dart';
import 'package:loading_01/AvatarLoader.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Avatar loading'),
        ),
        body: Center(
          child: AvatarLoader(
            imageUrl: 'https://example.com/avatar.jpg',
            radius: 50.0,
          ),
        ),
      ),
    );
  }
}
