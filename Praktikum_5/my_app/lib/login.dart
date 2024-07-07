import 'package:flutter/material.dart';
import 'package:my_app/components/overflow_bar_login.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // TODO: Add text editing controllers (101)
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              child: LoginView(),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Sudah Punya Akun? ',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/register');
                    },
                    child: Text(
                      'Sign up',
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  ListView LoginView() {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      children: <Widget>[
        const SizedBox(height: 80.0),
        Column(
          children: <Widget>[
            Image.asset('assets/diamond.png'),
            const SizedBox(height: 16.0),
            const Text('SHRINE'),
          ],
        ),
        const SizedBox(height: 120.0),
        // TODO: Remove filled: true values (103)
        // TODO: Add TextField widgets (101)
        //SECTION - [Name]
        TextField(
          controller: _usernameController,
          decoration: InputDecoration(
              filled: true,
              labelText: 'Username',
              labelStyle: TextStyle(
                color: Colors.black45,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide(
                  color: Colors.blue,
                  width: 1.0,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide(
                  color: Colors.blue,
                  width: 1.0,
                ),
              ),
              contentPadding:
                  EdgeInsets.symmetric(vertical: 14, horizontal: 16),
              fillColor: Colors.white),
        ),

        // SECTION - Spacer
        const SizedBox(height: 12.0),

        //SECTION - Password
        TextField(
          controller: _passwordController,
          decoration: InputDecoration(
              filled: true,
              labelText: 'Password',
              labelStyle: TextStyle(
                color: Colors.black45,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide(
                  color: Colors.blue,
                  width: 1.0,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide(
                  color: Colors.blue,
                  width: 1.0,
                ),
              ),
              contentPadding:
                  EdgeInsets.symmetric(vertical: 14, horizontal: 16),
              fillColor: Colors.white),
          obscureText: true,
        ),

        // SECTION - Spacer
        const SizedBox(height: 12.0),

        //SECTION - Button bar
        // TODO: Add button bar (101)
        OverflowBarLogin(
            usernameController: _usernameController,
            passwordController: _passwordController),
      ],
    );
  }
}
