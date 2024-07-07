import 'package:flutter/material.dart';

class OverflowBarLogin extends StatelessWidget {
  const OverflowBarLogin({
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
      // TODO: Add a beveled rectangular border to CANCEL (103)
      children: <Widget>[
        // TODO: Add buttons (101)
        TextButton(
          child: const Text('CANCEL'),
          onPressed: () {
            // TODO: Clear the text fields (101)
            usernameController.clear();
            passwordController.clear();
          },
        ),
        // TODO: Add an elevation to NEXT (103)
        // TODO: Add a beveled rectangular border to NEXT (103)
        ElevatedButton(
          child: const Text('NEXT'),
          onPressed: () {
            // TODO: Show the next page (101)
            Navigator.pop(context);
          },
        ),
      ],
    );
  }
}
