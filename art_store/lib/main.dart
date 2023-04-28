import 'package:art_store/screen/account.dart';
import 'package:art_store/screen/home.dart';
import 'package:art_store/screen/otherfunctionality.dart';
import 'package:art_store/screen/products.dart';
import 'package:art_store/screen/reset_password.dart';
import 'package:art_store/widgets/Bottom_navigation_bar.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:art_store/screen/registration.dart';
import 'package:art_store/screen/login.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/art_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ArtBloc(),
      child: MaterialApp(
        title: 'Tsehay Art Store',
        theme: ThemeData(),
        initialRoute: LoginScreen.id,
        routes: {
          Base.id: (context) => const Base(),
          LoginScreen.id: (context) => const LoginScreen(),
          RegistrationScreen.id: (context) => const RegistrationScreen(),
          Account.id: (context) => Account(),
          Product_screen.id: (context) => const Product_screen(),
          Home_page.id: (context) => const Home_page(
                name: '',
              ),
          ResetPassword.id: (context) => const ResetPassword(),
          Otherfunctionality.id: (context) => const Otherfunctionality()
        },
      ),
    );
  }
}
