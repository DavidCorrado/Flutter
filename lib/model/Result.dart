//Sealed class like https://github.com/dart-lang/language/issues/349#issuecomment-388912316
abstract class Result<T> {
  factory Result.success(T data) = ResultSuccess<T>;

  factory Result.loading() = ResultLoading;

  factory Result.failure(Exception exception) = ResultError;
}

class ResultLoading<T> implements Result<T> {
  const ResultLoading();
}

class ResultSuccess<T> implements Result<T> {
  final T data;

  const ResultSuccess(this.data);
}

class ResultError<T> implements Result<T> {
  final Exception exception;

  const ResultError(this.exception);
}
