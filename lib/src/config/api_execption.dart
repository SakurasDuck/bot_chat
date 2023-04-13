/// Api 异常
/// [code] 错误代码，例如403，500
/// [message] 错误消息
/// [innerException] 内部异常
/// [stackTrace] 错误栈跟踪
/// [level] 异常级别
class ApiException implements Exception {
  int code = 0;
  String message;
  Object? innerException;
  StackTrace? stackTrace;
  String? level;

  bool get enableErrorLog =>
      level != null &&
      level?.isNotEmpty == true &&
      level != '友好提示' &&
      level != '0';

  ApiException(this.code, this.message, [this.level]);

  ApiException.withInner(
      this.code, this.message, this.innerException, this.stackTrace);

  @override
  String toString() {
    if (message.isNotEmpty != true) return '服务器异常';

    if (innerException == null) {
      return message;
    }

    return "ApiException $code: $message ${level ?? ''} (Inner exception: $innerException)\n\n$stackTrace";
  }
}
