import 'package:art_store/screen/login.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Account extends StatefulWidget {
  Account({super.key});
  static const String id = 'account_screen';

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  final _auth = FirebaseAuth.instance;

  late User loggedInUser;

  @override
  void initState() {
    super.initState();

    getCurrentUser();
  }

  void getCurrentUser() async {
    try {
      final User = await _auth.currentUser;
      if (User != null) {
        loggedInUser = User;
        print(loggedInUser.email);
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: null,
        actions: <Widget>[
          IconButton(
              onPressed: () {
                _auth.signOut();
                Navigator.pop(context);
              },
              icon: const Icon(Icons.logout))
        ],
      ),
      body: Center(
        child: SafeArea(
          child: Container(
            width: double.infinity,
            color: Colors.black,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const CircleAvatar(
                    backgroundColor: Color(0xffdfd38b),
                    radius: 50,
                    backgroundImage: AssetImage('images/user.png')),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Natnel Debebe',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color(0xffdfd38b)),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: 130,
                  height: 30,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xffdfd38b),
                      foregroundColor: Colors.black,
                    ),
                    onPressed: () {},
                    child: Row(
                      children: const [
                        Text(
                          '+ Add your art',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
