import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:journalapp/data/notifiers.dart';
import 'package:journalapp/firebase_options.dart';
import 'package:journalapp/views/pages/splashscreen_page.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: isDarkModeNotifier,
      builder: (context, value, child) {
      return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: .fromSeed(seedColor: Color(0xFFB8543A),
        brightness: value ? Brightness.dark : Brightness.light,
        ),
      ),
      home: const SplashscreenPage(),
    );
      },
    );
  }
}
