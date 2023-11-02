import 'package:flutter/widgets.dart';

import './_modals.dart';
import '../feedback_pages/01_dialog_page.dart' deferred as dialog_page;
import '../feedback_pages/02_toast_page.dart' deferred as toast_page;
import '../feedback_pages/03_progress_page.dart' deferred as progress_page;
import '../feedback_pages/04_steps_page.dart' deferred as steps_page;
import '../feedback_pages/05_notice_page.dart' deferred as notice_page;

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
  CompRoute(
    name: 'Steps',
    path: '/steps',
    future: () => steps_page.loadLibrary(),
    component: (BuildContext context) => steps_page.StepsPage(),
  ),
  CompRoute(
    name: 'NoticeBar',
    path: '/noticeBar',
    future: () => notice_page.loadLibrary(),
    component: (BuildContext context) => notice_page.NoticeBarPage(),
  ),
];
