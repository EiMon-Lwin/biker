import 'package:envied/envied.dart';

import 'env_jar.dart';

part 'env_jar_impl.g.dart';

@Envied(path: '.env')
abstract class Env {
  @EnviedField(varName: 'MASTER', obfuscate: true)
  static final String master = _Env.master;

  @EnviedField(varName: 'GOOGLE_MAP_API_KEY', obfuscate: true)
  static final String googleMapApiKey = _Env.googleMapApiKey;
}

class EnvJarImplementation implements EnvJar {
  @override
  String get googleMapApiKey => Env.googleMapApiKey;

  @override
  String get masterKey => Env.master;
}
