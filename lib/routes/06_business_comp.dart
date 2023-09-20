import 'package:flutter/widgets.dart';

import './_modals.dart';
// 🌎 Project imports:
// import '../business_pages/main.dart';
import '../business_pages/01_event_page.dart' deferred as event_container_page;
import '../business_pages/02_picker_page.dart' deferred as picker_date_page;
import '../business_pages/03_holder_page.dart' deferred as place_holder_page;
import '../business_pages/04_verifycode_page.dart' deferred as verify_code_page;

List<CompRoute> businessCompRoutes = <CompRoute>[
  CompRoute(
    name: 'EventContainer',
    path: '/eventContainer',
    future: () => event_container_page.loadLibrary(),
    component: (BuildContext context) => event_container_page.EventContainer(),
  ),
  CompRoute(
    name: 'PickerDate',
    path: '/pickerDate',
    future: () => picker_date_page.loadLibrary(),
    component: (BuildContext context) => picker_date_page.PickerPage(),
  ),
  CompRoute(
    name: 'PlaceHolder',
    path: '/placeHolder',
    future: () => place_holder_page.loadLibrary(),
    component: (BuildContext context) => place_holder_page.PlaceHolderPage(),
  ),
  CompRoute(
    name: 'VerifyCode',
    path: '/verifyCode',
    future: () => verify_code_page.loadLibrary(),
    component: (BuildContext context) => verify_code_page.VerifyCodePage(),
  ),
];
