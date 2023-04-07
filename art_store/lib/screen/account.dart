import 'package:flutter/material.dart';

class Account extends StatelessWidget {
  const Account({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
