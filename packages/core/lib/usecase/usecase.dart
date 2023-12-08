import 'dart:async';

abstract class UseCase<Type, Params> {
  const UseCase();
  FutureOr<Type> call(Params params);
}
