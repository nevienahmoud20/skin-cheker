import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_checker/gen/fonts.gen.dart';
import 'package:skin_checker/screens/shared/after_splash/view.dart';

import 'generated/codegen_loader.g.dart';
import 'helper/colors.dart';
import 'screens/doctor/home/pages/upload_image/view.dart';
import 'screens/shared/splash/view.dart';

void main() {
  runApp(
    EasyLocalization(
      path: 'assets/langs',
      startLocale: const Locale('en'),
      fallbackLocale: const Locale('en'),
      saveLocale: true,
      supportedLocales: const [Locale('ar'), Locale('en')],
      assetLoader: const CodegenLoader(),
      child: ScreenUtilInit(
        designSize: const Size(375, 812),
        builder: (context) => const MyApp(),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Skin Checker',
      debugShowCheckedModeBanner: false,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      theme: ThemeData(
        primarySwatch: buildMaterialColor(0xff66BFC5),
        platform: TargetPlatform.iOS,
        bottomAppBarColor: Colors.red,
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
            systemOverlayStyle: SystemUiOverlayStyle(
              statusBarColor: Color(0xff01B4D2),
            )
        ),
        bottomNavigationBarTheme:
            const BottomNavigationBarThemeData(backgroundColor: Colors.yellow),
        inputDecorationTheme: const InputDecorationTheme(
            filled: true,
            fillColor: Color(0xffE7F7F9),
            border: InputBorder.none,
            disabledBorder: InputBorder.none,
            enabledBorder: InputBorder.none),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              primary: const Color(0xff01B4D2),
              textStyle: TextStyle(
                  fontSize: 14.sp, fontFamily: FontFamily.bold, height: 1.4),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.r))),
        ),
      ),
      builder: (context, widget) {
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(textScaleFactor: .90),
          child: widget!,
        );
      },
      home:  SplashScreen(),
    );
  }
}
