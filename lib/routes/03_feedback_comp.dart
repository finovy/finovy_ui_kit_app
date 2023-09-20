import 'package:flutter/widgets.dart';

import './_modals.dart';
import '../feedback_pages/01_dialog_page.dart' deferred as dialog_page;
import '../feedback_pages/02_toast_page.dart' deferred as toast_page;
import '../feedback_pages/03_progress_page.dart' deferred as progress_page;

List<CompRoute> feedbackCompRoutes = <CompRoute>[
  CompRoute(
    name: 'Dialog',
    path: '/dialog',
    future: () => dialog_page.loadLibrary(),
    component: (BuildContext context) => dialog_page.DialogPage(),
  ),
  CompRoute(
    name: 'Toast',
    path: '/toast',
    future: () => toast_page.loadLibrary(),
    component: (BuildContext context) => toast_page.ToastPage(),
  ),
  CompRoute(
    name: 'Progress',
    path: '/progress',
    future: () => progress_page.loadLibrary(),
    component: (BuildContext context) => progress_page.ProgressPage(),
  ),
];
