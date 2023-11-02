import 'package:flutter/widgets.dart';

import './_modals.dart';
import '../navigation_pages/01_appbar_page.dart' deferred as app_bar_page;
import '../navigation_pages/02_backbtn_page.dart' deferred as back_btn_page;
import '../navigation_pages/03_scaffold_page.dart' deferred as scaffold_page;
import '../navigation_pages/04_grid_page.dart' deferred as grid_page;

List<CompRoute> navigationCompRoutes = <CompRoute>[
  CompRoute(
    name: 'AppBar',
    path: '/appbar',
    future: () => app_bar_page.loadLibrary(),
    component: (BuildContext context) => app_bar_page.AppbarPage(),
  ),
  CompRoute(
    name: 'BackBtn',
    path: '/backBtn',
    future: () => back_btn_page.loadLibrary(),
    component: (BuildContext context) => back_btn_page.BackBtnPage(),
  ),
  CompRoute(
    name: 'Scaffold',
    path: '/scaffold',
    future: () => scaffold_page.loadLibrary(),
    component: (BuildContext context) => scaffold_page.ScaffoldPage(),
  ),
  CompRoute(
    name: 'Grid',
    path: '/grid',
    future: () => grid_page.loadLibrary(),
    component: (BuildContext context) => grid_page.GridPage(),
  ),
];
