import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import './_modals.dart';
import '../basic_pages/01_button_page.dart' deferred as button_page;
import '../basic_pages/02_text_page.dart' deferred as text_page;
import '../basic_pages/03_icon_page.dart' deferred as icon_page;
import '../basic_pages/04_image_page.dart' deferred as image_page;
import '../basic_pages/05_input_page.dart' deferred as input_page;
// import '../basic_pages/06_popup_page.dart' deferred as popup_page;
// import '../basic_pages/07_style_page.dart' deferred as style_page;
// import '../basic_pages/08_toast_page.dart' deferred as toast_page;

// 🌎 Project imports:
// import '../basic_pages/main.dart' deferred as basic_pages;

List<CompRoute> basicCompRoutes = <CompRoute>[
  CompRoute(
    name: 'Button',
    path: '/button',
    future: () => button_page.loadLibrary(),
    component: (BuildContext context) => button_page.ButtonPage(),
  ),
  CompRoute(
    name: 'Text',
    path: '/text',
    future: () => text_page.loadLibrary(),
    component: (BuildContext context) => text_page.TextPage(),
  ),
  CompRoute(
    name: 'Icon',
    path: '/icon',
    future: () => icon_page.loadLibrary(),
    component: (BuildContext context) => icon_page.IconPage(),
  ),
  CompRoute(
    name: 'Image',
    path: '/image',
    future: () => image_page.loadLibrary(),
    component: (BuildContext context) => image_page.ImagePage(),
  ),
  CompRoute(
    name: 'Input',
    path: '/input',
    future: () => input_page.loadLibrary(),
    component: (BuildContext context) => input_page.InputPage(),
  ),
  // CompRoute(
  //   name: 'Popup',
  //   path: '/popup',
  //   future: () => popup_page.loadLibrary(),
  //   component: (BuildContext context) => popup_page.PopupPage(),
  // ),
  // CompRoute(
  //   name: 'Style',
  //   path: '/style',
  //   future: () => style_page.loadLibrary(),
  //   component: (BuildContext context) => style_page.StylePage(),
  // ),
  // CompRoute(
  //   name: 'Toast',
  //   path: '/toast',
  //   future: () => toast_page.loadLibrary(),
  //   component: (BuildContext context) => toast_page.ToastPage(),
  // ),
];
