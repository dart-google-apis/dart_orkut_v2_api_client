# google_orkut_v2_api

### Description

Auto-generated client library for accessing the orkut v2 API.

#### ![Logo](http://www.google.com/images/icons/product/orkut-16.png) Orkut API - orkut v2

Lets you manage activities, comments and badges in Orkut. More stuff coming in time.

Official API documentation: http://code.google.com/apis/orkut/v2/reference.html

Adding dependency to pubspec.yaml

```
  dependencies:
    google_orkut_v2_api: '>=0.4.9'
```

For web applications:

```
  import "package:google_orkut_v2_api/orkut_v2_api_browser.dart" as orkutclient;
```

For console application:

```
  import "package:google_orkut_v2_api/orkut_v2_api_console.dart" as orkutclient;
```

Working with out authentication the following constructor can be called:

```
  var orkut = new orkutclient.Orkut();
```

Working with authentication then create a new `GoogleOAuth2` object and pass it to the constructor:


```
  GoogleOAuth2 auth = new GoogleOAuth2(CLIENT_ID, SCOPES);
  var orkut = new orkutclient.Orkut(auth);
```

### Licenses

```
Copyright (c) 2013 Gerwin Sturm & Adam Singer

Licensed under the Apache License, Version 2.0 (the "License"); you may 
not use this file except in compliance with the License. You may obtain a 
copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
License for the specific language governing permissions and limitations 
under the License

------------------------
Based on http://code.google.com/p/google-api-dart-client

Copyright 2012 Google Inc.
Licensed under the Apache License, Version 2.0 (the "License"); you may 
not use this file except in compliance with the License. You may obtain a
copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
License for the specific language governing permissions and limitations 
under the License

```
