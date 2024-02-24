import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wegox/screens/splash_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  runApp(DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) => const DriversApp(), // Wrap your app
  ));
}

class DriversApp extends StatelessWidget {
  const DriversApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wegox',
      debugShowCheckedModeBanner: false,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          secondary: Colors.blue,
        ),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}
