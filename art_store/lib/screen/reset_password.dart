import 'package:art_store/constants/constants.dart';

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});
  static const String id = 'reset_password';
  @override
  ResetPasswordState createState() => ResetPasswordState();
}

class ResetPasswordState extends State<ResetPassword> {
  final _auth = FirebaseAuth.instance;

  bool showSpinner = false;

  late String email;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.LightGray,
        body: ModalProgressHUD(
            inAsyncCall: showSpinner,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    const Hero(
                      tag: 'logo',
                      child: SizedBox(
                        height: 200.0,
                        // child: Image.asset('images/logo.png'),
                      ),
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    TextField(
                      style: const TextStyle(color: AppColors.Gold),
                      keyboardType: TextInputType.emailAddress,
                      textAlign: TextAlign.center,
                      onChanged: (value) {
                        email = value;
                      },
                      decoration: const InputDecoration(
                        hintText: 'Enter your email',
                        hintStyle: TextStyle(color: Color(0xffdfd38b)),
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(32.0)),
                        ),
                        suffixIcon: Icon(
                          Icons.email,
                          color: AppColors.Gold,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0xffdfd38b), width: 1.0),
                          borderRadius: BorderRadius.all(Radius.circular(32.0)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0xffdfd38b), width: 2.0),
                          borderRadius: BorderRadius.all(Radius.circular(32.0)),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      child: Material(
                        color: const Color(0xffdfd38b),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(30.0)),
                        elevation: 5.0,
                        child: MaterialButton(
                          onPressed: () {
                            FirebaseAuth.instance
                                .sendPasswordResetEmail(email: email)
                                .then((value) => Navigator.of(context).pop());
                          },
                          minWidth: 200.0,
                          height: 42.0,
                          child: const Text(
                            'reset password',
                          ),
                        ),
                      ),
                    ),
                  ]),
            )));
  }
}
