import 'package:flutter/material.dart';

class OverflowBarRegister extends StatelessWidget {
  const OverflowBarRegister({
    super.key,
    required this.usernameController,
    required this.passwordController,
  });

  final TextEditingController usernameController;
  final TextEditingController passwordController;

  @override
  Widget build(BuildContext context) {
    return OverflowBar(
      alignment: MainAxisAlignment.end,
      children: <Widget>[
        TextButton(
          child: const Text('Hapus'),
          onPressed: () {
            usernameController.clear();
            passwordController.clear();
          },
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            backgroundColor: const Color.fromARGB(255, 100, 185, 255),
          ),
          child: const Text('Daftar'),
          onPressed: () {
            Navigator.pushNamed(context, '/login');
          },
        ),
      ],
    );
  }
}
