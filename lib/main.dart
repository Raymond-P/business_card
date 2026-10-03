import 'package:flutter/material.dart';
import "./sample_user_input.dart";

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(body: SampleUserInput()));
  }
}

class SimpleLayout extends StatelessWidget {
  const SimpleLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Row(
            children: [
              Column(
                children: [
                  Image.network(
                    'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
                    width: 100,
                    height: 100,
                  ),
                  Text("001"),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
