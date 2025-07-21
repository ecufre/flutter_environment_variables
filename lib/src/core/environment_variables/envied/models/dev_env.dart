import 'package:envied/envied.dart';
import 'package:flutter_environment_variables/src/core/environment_variables/envied/models/env.dart';

part 'dev_env.g.dart';

@Envied(path: '.env.dev')
class DevEnv extends Env {
  @override
  @EnviedField(varName: 'API_KEY')
  String apiKey = _DevEnv.apiKey;

  @override
  @EnviedField(varName: 'INTEGER_VALUE')
  int intValue = _DevEnv.intValue;

  @override
  @EnviedField(varName: 'DOUBLE_VALUE')
  double doubleValue = _DevEnv.doubleValue;

  @override
  @EnviedField(varName: 'BOOLEAN_VALUE')
  bool boolValue = _DevEnv.boolValue;
}
