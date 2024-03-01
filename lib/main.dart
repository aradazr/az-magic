import 'package:azmagic/Model/splash_screen.dart';
import 'package:azmagic/providers/globalkey_provider.dart';

import 'package:azmagic/theme/theme_provider.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_locales/flutter_locales.dart';

import 'package:provider/provider.dart';

void main() async {

   WidgetsFlutterBinding.ensureInitialized();
  await Locales.init(['en', 'fa']);


  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.black,
      statusBarIconBrightness: Brightness.light,
      systemNavigationBarColor: Colors.black,
      systemNavigationBarIconBrightness: Brightness.dark,
      systemNavigationBarDividerColor: Colors.white));
       WidgetsFlutterBinding.ensureInitialized();
  runApp(MultiProvider(providers: [
    //* theme provider
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
    ),

    //* key provider
    ChangeNotifierProvider(
      create: (context) => GlobalKeyProvider(),
    ),
  ], child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return LocaleBuilder(
      builder:(locale) => MaterialApp(
          title: 'az magic',
        
        localizationsDelegates: Locales.delegates,
        supportedLocales: Locales.supportedLocales,
        locale: locale,
                  debugShowCheckedModeBanner: false,
          theme: Provider.of<ThemeProvider>(context).themeData,
          home: const SplashScreen()),
    );
  }
}
