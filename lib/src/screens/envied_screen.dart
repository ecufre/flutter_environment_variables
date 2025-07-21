import 'package:flutter/material.dart';
import 'package:flutter_environment_variables/src/core/environment_variables/envied/envied_service.dart';
import 'package:flutter_environment_variables/src/core/environment_variables/envied/models/env.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class EnviedScreen extends StatefulWidget {
  const EnviedScreen({super.key});

  @override
  State<EnviedScreen> createState() => _EnviedScreenState();
}

class _EnviedScreenState extends State<EnviedScreen> {
  late String _environment;
  late EnviedService _enviedService;
  late Env _environmentVariables;

  @override
  void initState() {
    super.initState();
    _enviedService = EnviedService();
    _environmentVariables = _enviedService.getEnvironmentVariables();
    _environment = _enviedService.getEnvironment();
  }

  void _changeEnvironment(String name) {
    _enviedService.changeEnvironment(name);
    _environmentVariables = _enviedService.getEnvironmentVariables();
    _environment = _enviedService.getEnvironment();
    if (mounted) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Envied'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            children: [
              Text(
                'Environment:',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                _environment,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.blueGrey,
                ),
              ),
              const SizedBox(height: 16),
              const Divider(),
              const SizedBox(height: 16),
              Text(
                'String Environment Variables:',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                _environmentVariables.apiKey,
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
                _environmentVariables.intValue.toString(),
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
                _environmentVariables.doubleValue.toString(),
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
                _environmentVariables.boolValue.toString(),
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.blueGrey,
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: SpeedDial(
        animatedIcon: AnimatedIcons.menu_close,
        spacing: 5,
        children: [
          SpeedDialChild(
            child: Icon(Icons.change_circle),
            label: 'Dev',
            onTap: () => _changeEnvironment('dev'),
          ),
          SpeedDialChild(
            child: Icon(Icons.change_circle),
            label: 'Stage',
            onTap: () => _changeEnvironment('stage'),
          ),
          SpeedDialChild(
            child: Icon(Icons.change_circle),
            label: 'Prod',
            onTap: () => _changeEnvironment('prod'),
          ),
        ],
      ),
    );
  }
}
