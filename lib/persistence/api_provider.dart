import 'package:http/http.dart';
import 'package:inject/inject.dart';

@provide
@singleton
class ApiProvider {
  Client client = Client();

}