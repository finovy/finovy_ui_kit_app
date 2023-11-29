import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fn_ui_kit/fn_ui_kit.dart';

import './components/main.dart';
import './routes/main.dart';
import 'doc_mixin.dart' if (dart.library.html) 'web/doc_mixin.dart';

const Size kIphone6 = Size(375, 667);
const BoxConstraints kMaxConstraints = BoxConstraints(
  maxWidth: 375,
  maxHeight: 667,
);

Future<void> main() async {
  // debugProfileBuildsEnabled = true;
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  CompRouter.init();
  // ignore: always_specify_types
  EasyLocalization.logger.enableLevels = [];
  runApp(
    EasyLocalization(
      supportedLocales: const <Locale>[Locale('en'), Locale('zh')],
      path: 'assets/i18n', //
      fallbackLocale: const Locale('zh'),
      // assetLoader: CodegenLoader(),
      saveLocale: false,
      useOnlyLangCode: true,
      child: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with DocRouterSyncMixin<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: kIphone6,
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (BuildContext context, Widget? child) {
        return FNTheme(
          data: FNThemeData(),
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            onGenerateTitle: (BuildContext context) => tr('App.title'),
            localizationsDelegates: context.localizationDelegates,
            //   ..add(FlanS.delegate),
            supportedLocales: context.supportedLocales,
            locale: context.locale,
            theme: ThemeData(
              primaryColor: FNColors.primary,
              appBarTheme: AppBarTheme(
                elevation: 0.0,
                foregroundColor: FNColors.textColor,
                color: FNColors.background,
                titleTextStyle: FNColors.textAppbarStyle,
              ),
              scaffoldBackgroundColor: Colors.white,
              // primarySwatch: Colors.blue,
              visualDensity: VisualDensity.adaptivePlatformDensity,
            ),
            home: child,
            onUnknownRoute: (RouteSettings settings) =>
                CompRouter.fallbackRoute,
            onGenerateRoute: CompRouter.onGenerateRoute,
            builder: (context, child) => FNDesignContext.fnUIKitContextBuilder(
                context: context, child: child!),
          ),
        );
      },
      child: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        backgroundColor: FNColors.background,
      ),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.only(
            left: 20.0.w,
            right: 20.0.w,
            bottom: 20.0.w,
          ),
          children: <Widget>[
            FnAppTitle(
              languageChanged: () {
                setState(() {
                  if (context.locale == Locale('zh')) {
                    context.setLocale(Locale('en'));
                  } else {
                    context.setLocale(Locale('zh'));
                  }
                });
                print(context.locale.toString());
              },
            ),
            FnAppSubTitle(),
            ...renderList(context, CompRouter.routes)
          ],
        ),
      ),
    );
  }

  List<Widget> renderList(BuildContext context, List<CompRoute> source) {
    final List<Widget> result = <Widget>[];

    for (int i = 0; i < source.length; i++) {
      final CompRoute group = source[i];

      result.add(
        SubTitle(
          text: tr('Nav.${group.name}'),
          padding: EdgeInsets.only(
            top: 24.0.w,
            bottom: 16.0.w,
            left: 18.0.w,
          ),
        ),
      );

      final List<CompRoute> children = group.routes!;
      for (int i = 0; i < children.length; i++) {
        final CompRoute route = children.elementAt(i);
        result.add(RouteButton(
          text: tr('Nav.${route.name}'),
          onPressed: () {
            Navigator.of(context).pushNamed(
              route.path!,
              arguments: <String, String>{'title': route.name},
            );
          },
        ));
        if (i != children.length - 1) {
          result.add(SizedBox(height: 20.0.w));
        }
      }
    }

    return result;
  }
}

class FnAppTitle extends StatelessWidget {
  final VoidCallback? languageChanged;

  const FnAppTitle({Key? key, this.languageChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 16.0.w,
        top: 45.0.w,
        bottom: 16.0.w,
      ),
      child: Row(
        children: <Widget>[
          Image.asset(
            'assets/logo.png',
            width: 100.0.w,
            height: 32.0.w,
            fit: BoxFit.contain,
          ),
          SizedBox(width: 16.0.w),
          Text(
            'Finovy UIKit',
            // tr('App.title'),
            style: TextStyle(fontSize: 24.0.w),
          ),
          Expanded(
              child: FNUIButton(
            type: FNButtonType.text,
            text: context.locale == Locale('en') ? '中文' : 'us',
            iconName: Icons.language,
            textStyle:
                TextStyle(fontSize: FNFontSize10, color: FNColors.primary),
            onTap: () => languageChanged?.call(),
          ))
        ],
      ),
    );
  }
}

class FnAppSubTitle extends StatelessWidget {
  const FnAppSubTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16.0.w),
      padding: EdgeInsets.only(left: 16.0.w),
      child: Text(
        tr('App.description'),
        style: TextStyle(
          fontSize: 14.0.w,
          color: const Color.fromRGBO(69, 90, 100, 0.6),
        ),
      ),
    );
  }
}
