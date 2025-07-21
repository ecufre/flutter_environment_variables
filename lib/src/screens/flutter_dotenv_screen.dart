import 'package:flutter/material.dart';
import 'package:flutter_environment_variables/src/core/environment_variables/flutter_dotenv/flutter_dotenv_service.dart';

class FlutterDotenvScreen extends StatelessWidget {
  const FlutterDotenvScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Dotenv'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            children: [
              Text(
                'String Environment Variables:',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),

              Text(
                FlutterDotenvService.getStringEnvironmentVariable(
                  'DEV_API_KEY',
                ),
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.blueGrey,
                ),
              ),
              Text(
                FlutterDotenvService.getStringEnvironmentVariable(
                  'PROD_API_KEY',
                ),
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.blueGrey,
                ),
              ),
              Text(
                FlutterDotenvService.getStringEnvironmentVariable(
                  'STAGE_API_KEY',
                ),
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.blueGrey,
                ),
              ),
              const SizedBox(height: 16),
              Text(
                'Integer Environment Variables:',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                FlutterDotenvService.getIntEnvironmentVariable(
                  'VERSION',
                ).toString(),
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.blueGrey,
                ),
              ),
              const SizedBox(height: 16),
              Text(
                'Double Environment Variables:',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                FlutterDotenvService.getDoubleEnvironmentVariable(
                  'DOUBLE_VALUE',
                ).toString(),
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.blueGrey,
                ),
              ),
              const SizedBox(height: 16),
              Text(
                'Boolean Environment Variables:',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                FlutterDotenvService.getBoolEnvironmentVariable(
                  'BOOLEAN_VALUE',
                ).toString(),
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.blueGrey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
