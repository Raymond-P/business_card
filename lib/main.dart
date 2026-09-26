import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: .center,
            children: [
              Text('Hello World!'),
              Row(
                children: [
                  Icon(
                    Icons.catching_pokemon,
                    color: const Color.fromARGB(255, 255, 17, 0),
                  ),
                  Text('Hello World!'),
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.catching_pokemon,
                    color: const Color.fromARGB(255, 255, 17, 0),
                  ),
                  Text('Hello World!'),
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.catching_pokemon,
                    color: const Color.fromARGB(255, 255, 17, 0),
                  ),
                  Text('Hello World!'),
                ],
              ),
              Icon(
                Icons.catching_pokemon,
                color: const Color.fromARGB(255, 255, 17, 0),
              ),
              Text('Hello World!'),
              Icon(
                Icons.catching_pokemon,
                color: const Color.fromARGB(255, 255, 17, 0),
              ),
              Image.network(
                'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
                width: 100,
                height: 100,
              ),

              // Image.asset("assets/images/dash.png"),
            ],
          ),
        ),
      ),
    );
  }
}
