import 'package:envied/envied.dart';
import 'package:flutter_environment_variables/src/core/environment_variables/envied/models/env.dart';

part 'stage_env.g.dart';

@Envied(path: '.env.stage')
class StageEnv extends Env {
  @override
  @EnviedField(varName: 'API_KEY')
  String apiKey = _StageEnv.apiKey;

  @override
  @EnviedField(varName: 'INTEGER_VALUE')
  int intValue = _StageEnv.intValue;

  @override
  @EnviedField(varName: 'DOUBLE_VALUE')
  double doubleValue = _StageEnv.doubleValue;

  @override
  @EnviedField(varName: 'BOOLEAN_VALUE')
  bool boolValue = _StageEnv.boolValue;
}
