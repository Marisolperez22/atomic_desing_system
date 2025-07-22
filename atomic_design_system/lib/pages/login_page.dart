import 'package:flutter/material.dart';


class LoginPage extends StatelessWidget {
  final Widget form;

  const LoginPage({super.key, required this.form});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          const SizedBox(height: 200),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: Color.fromARGB(247, 255, 255, 255),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: SingleChildScrollView(
                  child: form,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
