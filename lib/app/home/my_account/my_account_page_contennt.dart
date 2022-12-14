import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class MyAccountPageCountent extends StatelessWidget {
  const MyAccountPageCountent({
    Key? key,
    required this.email,
  }) : super(key: key);

  final String? email;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("jesteś zalogowany jako $email"),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              FirebaseAuth.instance.signOut();
            },
            child: const Text("Wyloguj"),
          ),
        ],
      ),
    );
  }
}