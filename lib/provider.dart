import 'package:flutter_tutorial/model/users.dart';
import 'package:flutter_tutorial/service/api.dart';
import 'package:flutter_tutorial/service/authentication_service.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

List<SingleChildWidget> providers = [
  ...independentServices,
  ...dependentServices,
  ...uiConsumableProviders
];

List<SingleChildWidget> independentServices = [
  Provider.value(value: Api()),
];

List<SingleChildWidget> dependentServices = [
  ProxyProvider<Api, AuthenticationService>(
    update: (context, api, authenticationService) =>
        AuthenticationService(api: api),
  ),
];

List<SingleChildWidget> uiConsumableProviders = [
  StreamProvider<User>(
    create: (context) =>
        Provider.of<AuthenticationService>(context, listen: false).user,
    lazy: false,
  ),
];
