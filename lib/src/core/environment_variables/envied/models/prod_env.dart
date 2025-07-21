import 'package:envied/envied.dart';
import 'package:flutter_environment_variables/src/core/environment_variables/envied/models/env.dart';

part 'prod_env.g.dart';

@Envied(path: '.env.prod')
class ProdEnv extends Env {
  @override
  @EnviedField(varName: 'API_KEY')
  String apiKey = _ProdEnv.apiKey;

  @override
  @EnviedField(varName: 'INTEGER_VALUE')
  int intValue = _ProdEnv.intValue;

  @override
  @EnviedField(varName: 'DOUBLE_VALUE')
  double doubleValue = _ProdEnv.doubleValue;

  @override
  @EnviedField(varName: 'BOOLEAN_VALUE')
  bool boolValue = _ProdEnv.boolValue;
}
