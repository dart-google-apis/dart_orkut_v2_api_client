library orkut_v2_api.browser;

import "package:google_oauth2_client/google_oauth2_browser.dart" as oauth;

import 'package:google_orkut_v2_api/src/browser_client.dart';
import "package:google_orkut_v2_api/orkut_v2_api_client.dart";

/** Lets you manage activities, comments and badges in Orkut. More stuff coming in time. */
@deprecated
class Orkut extends Client with BrowserClient {

  /** OAuth Scope2: Manage your Orkut activity */
  static const String ORKUT_SCOPE = "https://www.googleapis.com/auth/orkut";

  /** OAuth Scope2: View your Orkut data */
  static const String ORKUT_READONLY_SCOPE = "https://www.googleapis.com/auth/orkut.readonly";

  final oauth.OAuth2 auth;

  Orkut([oauth.OAuth2 this.auth]);
}
