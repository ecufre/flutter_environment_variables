import 'package:flutter/material.dart';
import 'package:flutter_environment_variables/src/screens/envied_screen.dart';
import 'package:flutter_environment_variables/src/screens/flutter_dotenv_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const FlutterDotenvScreen(),
                  ),
                );
              },
              child: Text('Flutter Dotenv'),
            ),
            const SizedBox(height: 30.0),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const EnviedScreen(),
                  ),
                );
              },
              child: Text('Envied'),
            ),
          ],
        ),
      ),
    );
  }
}
