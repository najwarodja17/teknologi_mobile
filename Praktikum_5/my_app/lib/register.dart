import 'package:flutter/material.dart';
import 'package:my_app/components/overflow_bar_register.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: theme.colorScheme.primary,
        leading: Image.asset('assets/diamond.png'),
        title: const Text('SHRINE'),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              child: RegisterView(context),
            ),
            // Footer section - REGISTER button
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
                      Navigator.pushNamed(context, '/login');
                    },
                    child: Text(
                      'Sign In',
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

  ListView RegisterView(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      children: <Widget>[
        const SizedBox(height: 40.0),
        Column(
          children: <Widget>[
            Image.asset('assets/diamond.png'),
          ],
        ),

        const SizedBox(height: 10.0),
        Column(
          children: <Widget>[
            Text(
              'Registrasi',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text('Lorem Ipsum dolar sit amet, consectetur adipiscing elit'),
          ],
        ),

        //ANCHOR - Spacer
        const SizedBox(height: 60.0),

        //SECTION - Username
        Padding(
          padding: const EdgeInsets.only(bottom: 8),
          child: Text(
            'Masukan Nama User',
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
            ),
          ),
        ),
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

        //ANCHOR - Spacer
        const SizedBox(height: 12.0),

        //SECTION - Password
        Padding(
          padding: const EdgeInsets.only(bottom: 8),
          child: Text(
            'Masukan Password',
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
            ),
          ),
        ),
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

        //ANCHOR - Spacer
        const SizedBox(height: 12.0),

        Padding(
          padding: const EdgeInsets.only(bottom: 8),
          child: Text(
            'Masukan Kembali Password',
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
            ),
          ),
        ),
        TextField(
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

        //SECTION - Button Register
        //ANCHOR - Spacer
        const SizedBox(height: 12.0),
        OverflowBarRegister(
            usernameController: _usernameController,
            passwordController: _passwordController),
      ],
    );
  }
}
