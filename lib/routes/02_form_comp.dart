import 'package:flutter/widgets.dart';

import './_modals.dart';
import '../form_pages/01_cell_page.dart' deferred as cell_page;
import '../form_pages/02_checkbox_page.dart' deferred as checkbox_page;
import '../form_pages/03_form_page.dart' deferred as form_page;
// 🌎 Project imports:
// import '../form_pages/main.dart' deferred as form_pages;
import '../form_pages/04_radio_page.dart' deferred as radio_page;

import '../form_pages/05_rate_page.dart' deferred as rate_page;
import '../form_pages/06_search_page.dart' deferred as search_page;
import '../form_pages/07_segment_page.dart' deferred as segment_page;

List<CompRoute> formCompRoutes = <CompRoute>[
  CompRoute(
    name: 'Cell',
    path: '/cell',
    future: () => cell_page.loadLibrary(),
    component: (BuildContext context) => cell_page.CellPage(),
  ),
  CompRoute(
    name: 'Checkbox',
    path: '/checkbox',
    future: () => checkbox_page.loadLibrary(),
    component: (BuildContext context) => checkbox_page.CheckboxPage(),
  ),
  CompRoute(
    name: 'Form',
    path: '/form',
    future: () => form_page.loadLibrary(),
    component: (BuildContext context) => form_page.FormPage(),
  ),
  CompRoute(
    name: 'Radio',
    path: '/radio',
    future: () => radio_page.loadLibrary(),
    component: (BuildContext context) => radio_page.RadioPage(),
  ),
  CompRoute(
    name: 'Rate',
    path: '/rate',
    future: () => rate_page.loadLibrary(),
    component: (BuildContext context) => rate_page.RatePage(),
  ),
  CompRoute(
    name: 'Search',
    path: '/search',
    future: () => search_page.loadLibrary(),
    component: (BuildContext context) => search_page.SearchPage(),
  ),
  CompRoute(
    name: 'Segment',
    path: '/segment',
    future: () => segment_page.loadLibrary(),
    component: (BuildContext context) => segment_page.SegmentPage(),
  ),
];
