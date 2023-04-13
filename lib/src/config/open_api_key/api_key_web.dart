import '../const.dart';
import 'api_key_base.dart';

String get OPENAI_API_KEY {
  const defineKey = String.fromEnvironment(ENVKEY);
  if (defineKey.isNotEmpty) {
    return defineKey;
  }
  //todo your OpenAI API key
  return '';
}
