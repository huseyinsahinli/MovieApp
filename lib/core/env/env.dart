import 'package:envied/envied.dart';

part 'env.g.dart';

@Envied(path: 'movie_time.env', obfuscate: true)
abstract class Env {
  @EnviedField(varName: 'API_KEY')
  static final String apiKey = _Env.apiKey;
  @EnviedField(varName: 'BASE_URL')
  static final String baseUrl = _Env.baseUrl;
  @EnviedField(varName: 'IMAGE_URL')
  static final String imageUrl = _Env.imageUrl;
}
