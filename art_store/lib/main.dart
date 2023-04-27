import 'package:art_store/screen/account.dart';
import 'package:art_store/screen/community.dart';
import 'package:art_store/screen/home.dart';
// import 'package:art_store/screen/products.dart';
import 'package:art_store/screen/welcome.dart';
import 'package:art_store/widgets/Bottom_navigation_bar.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:art_store/screen/registration.dart';
import 'package:art_store/screen/login.dart';
import '';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tsehay Art Store',
      theme: ThemeData(),
      initialRoute: WelcomeScreen.id,
      routes: {
        Base.id: (context) => const Base(),
        WelcomeScreen.id: (context) => const WelcomeScreen(),
        LoginScreen.id: (context) => const LoginScreen(),
        RegistrationScreen.id: (context) => const RegistrationScreen(),
        Account.id: (context) => Account(),
        Home_page.id: (context) => const Home_page(),
        Community.id: (context) => const Community(),
      },
    );
  }
}
