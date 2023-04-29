import 'package:flutter/material.dart';
import 'package:art_store/constants/constants.dart';
import 'package:art_store/screen/registration.dart';
import 'package:art_store/screen/reset_password.dart';

class Otherfunctionality extends StatelessWidget {
  const Otherfunctionality({super.key});

  static const id = 'otherfunctionality';

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 35,
      alignment: Alignment.bottomRight,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton(
              child: const Text(
                "Create account",
                style: TextStyle(color: AppColors.white, fontSize: 18),
                textAlign: TextAlign.right,
              ),
              onPressed: () {
                Navigator.pushNamed(context, RegistrationScreen.id);
              }),
          const SizedBox(
            width: 0,
          ),
          TextButton(
              child: const Text(
                "forget password?",
                style: TextStyle(color: AppColors.Gold, fontSize: 15),
                textAlign: TextAlign.right,
              ),
              onPressed: () {
                Navigator.pushNamed(context, ResetPassword.id);
              }),
        ],
      ),
    );
  }
}
