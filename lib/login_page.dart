import 'package:flutter/material.dart';
import 'package:flutter_application_utswdk/home_page.dart';
import 'package:flutter_application_utswdk/lupapassword_page.dart';
import 'package:flutter_application_utswdk/register_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  String? _username;
  String? _password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Set background color to white
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: MediaQuery.of(context).size.height,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      'assets/images/logo_umt.png', // Path to your logo image
                      height: 100, // Adjust the height as needed
                    ),
                    SizedBox(height: 20), // Space between image and text
                    Text(
                      'SIAKAD FTUMT',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold, // Make the text bold
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Sistem Akademik',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey, // Set the text color to grey
                      ),
                    ),
                    SizedBox(height: 30),
                    Row(
                      mainAxisAlignment:
                          MainAxisAlignment.start, // Align to the left
                      children: [
                        Text(
                          'Sign In',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment:
                          MainAxisAlignment.start, // Align to the left
                      children: [
                        Text(
                          'Hi there! Nice to see you again.',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 2.5,
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Username',
                          border:
                              OutlineInputBorder(), // Add OutlineInputBorder
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Silakan masukkan username';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          _username = value;
                        },
                      ),
                    ),
                    SizedBox(height: 16),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 2.5,
                      child: TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          border:
                              OutlineInputBorder(), // Add OutlineInputBorder
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Silakan masukkan password';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          _password = value;
                        },
                      ),
                    ),
                    SizedBox(height: 32),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            _formKey.currentState!.save();
                            // Navigate to HomePage when the sign-in button is pressed
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HomePage(),
                              ),
                            );
                            // Navigate to HomePage
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          padding: EdgeInsets.symmetric(
                            horizontal: 48,
                            vertical: 16,
                          ),
                          textStyle: TextStyle(fontSize: 18),
                        ),
                        child: Text('Sign In'),
                      ),
                    ),
                    SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Belum punya akun?'),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => RegisterPage(),
                              ),
                            );
                          },
                          child: Text('Daftar'),
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LupapasswordPage(),
                          ),
                        );
                      },
                      child: Text('Lupa Password'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
