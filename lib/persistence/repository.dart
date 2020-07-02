import 'package:inject/inject.dart';
import 'package:pocketapp/persistence/api_provider.dart';

@provide
@singleton
class Repository {
  ApiProvider apiProvider;

  Repository(this.apiProvider);
}