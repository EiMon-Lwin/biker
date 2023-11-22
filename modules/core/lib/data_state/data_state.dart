abstract class DataState<T> {
  final T? data;
  final Exception? error;

  const DataState({this.data, this.error});

  void onError(void Function(Exception? error) handler) {
    if(this is DataFailed) handler(error);
  }

  void onSuccess(void Function(T data) handler) {
    if(this is DataSuccess) handler(data!);
  }
}

class DataSuccess<T> extends DataState<T> {
  const DataSuccess(T data) : super(data: data);
}

class DataFailed<T> extends DataState<T> {
  const DataFailed(Exception error) : super(error: error);
}
