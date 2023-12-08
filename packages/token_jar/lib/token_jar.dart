import 'package:authentication/authentication.dart';
import 'package:core/core.dart';

abstract class TokenJar {
  Future<DataState<void>> save(AccessTokenEntity token);

  Future<DataState<AccessTokenEntity>> get(); 
}