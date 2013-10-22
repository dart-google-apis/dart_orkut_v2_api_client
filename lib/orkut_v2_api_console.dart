library orkut_v2_api.console;

import "package:google_oauth2_client/google_oauth2_console.dart" as oauth2;

import 'package:google_orkut_v2_api/src/console_client.dart';

import "package:google_orkut_v2_api/orkut_v2_api_client.dart";

/** Lets you manage activities, comments and badges in Orkut. More stuff coming in time. */
class Orkut extends Client with ConsoleClient {

  /** OAuth Scope2: Manage your Orkut activity */
  static const String ORKUT_SCOPE = "https://www.googleapis.com/auth/orkut";

  /** OAuth Scope2: View your Orkut data */
  static const String ORKUT_READONLY_SCOPE = "https://www.googleapis.com/auth/orkut.readonly";

  final oauth2.OAuth2Console auth;

  Orkut([oauth2.OAuth2Console this.auth]);
}
