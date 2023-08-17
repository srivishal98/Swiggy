import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:amplify_datastore/amplify_datastore.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';
import 'package:swiggy/views/screenNavigation/screenNavigation.dart';

import 'amplifyconfiguration.dart';
import 'models/ModelProvider.dart';


void main() {

  WidgetsFlutterBinding.ensureInitialized();
   _configureAmplify();
  runApp(const MyApp());

}

Future<void> _configureAmplify() async {
  final _amplify = Amplify;
  try {
    await Amplify.addPlugin(AmplifyAuthCognito());
    await Amplify.configure(amplifyconfig);
    final provider = ModelProvider();

    final dataStorePlugin = AmplifyDataStore(modelProvider: ModelProvider.instance);
    await _amplify.addPlugin(dataStorePlugin);
    await _amplify.configure(amplifyconfig);
    await _amplify.addPlugin(AmplifyAPI());
    safePrint('Successfully configured');
  } on Exception catch (e) {
    safePrint('Error configuring Amplify: $e');
  }
  final datastorePlugin =
  AmplifyDataStore(modelProvider: ModelProvider.instance);
  await Amplify.addPlugin(datastorePlugin);

  try {
    await Amplify.configure(amplifyconfig);
  } on AmplifyAlreadyConfiguredException {
    safePrint(
        'Tried to reconfigure Amplify; this can occur when your app restarts on Android.');
  }
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Authenticator(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        builder: Authenticator.builder(),
        home: const Scaffold(
          body: ScreenNavigator()
        ),
      ),
    );
  }
}