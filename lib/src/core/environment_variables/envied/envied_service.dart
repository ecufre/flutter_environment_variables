import 'package:flutter_environment_variables/src/core/environment_variables/envied/models/dev_env.dart';
import 'package:flutter_environment_variables/src/core/environment_variables/envied/models/env.dart';
import 'package:flutter_environment_variables/src/core/environment_variables/envied/models/prod_env.dart';
import 'package:flutter_environment_variables/src/core/environment_variables/envied/models/stage_env.dart';

class EnviedService {
  EnviedService() {
    _environmentVariables = DevEnv();
    _environment = 'dev';
  }

  late Env _environmentVariables;
  late String _environment;

  void changeEnvironment(String newEnvironment) {
    switch (newEnvironment) {
      case 'dev':
        _environmentVariables = DevEnv();
        _environment = 'dev';
        break;
      case 'stage':
        _environmentVariables = StageEnv();
        _environment = 'stage';
        break;
      case 'prod':
        _environmentVariables = ProdEnv();
        _environment = 'prod';
        break;
      default:
        _environmentVariables = DevEnv();
        _environment = 'dev';

        break;
    }
  }

  String getEnvironment() => _environment;

  Env getEnvironmentVariables() => _environmentVariables;
}
