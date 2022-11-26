import 'package:dating_app/pages/home.dart';
import 'package:dating_app/pages/login.dart';
import 'package:dating_app/pages/otp_form.dart';
import 'package:dating_app/pages/root_app.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: 'https://qmqowzewvofaobtauczi.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InFtcW93emV3dm9mYW9idGF1Y3ppIiwicm9sZSI6ImFub24iLCJpYXQiOjE2Njg3MDI5NjIsImV4cCI6MTk4NDI3ODk2Mn0.xJpTHX-3HpqU4Jcr_44NXcRZSxCZaONd8kkrGBr0dPI',
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => RootApp(),
        '/my_phone': (context) => const OtpForm(),
        '/my_home': (context) => const OtpForm(),
        '/otp_form': (context) => const OtpForm(),
        '/login': (context) => const Login(),
      },
    );
  }
}
