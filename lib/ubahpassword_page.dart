import 'package:flutter/material.dart';

class UbahpasswordPage extends StatefulWidget {
  const UbahpasswordPage({Key? key}) : super(key: key);

  @override
  State<UbahpasswordPage> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<UbahpasswordPage> {
  final _formKey = GlobalKey<FormState>();
  bool _showOldPassword = false;
  bool _showNewPassword = false;
  bool _showConfirmPassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text('Ubah Password'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextFormField(
                obscureText: !_showOldPassword,
                decoration: InputDecoration(
                  labelText: 'Password Lama',
                  suffixIcon: IconButton(
                    icon: Icon(_showOldPassword
                        ? Icons.visibility
                        : Icons.visibility_off),
                    onPressed: () {
                      setState(() {
                        _showOldPassword = !_showOldPassword;
                      });
                    },
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Masukkan password lama';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16.0),
              TextFormField(
                obscureText: !_showNewPassword,
                decoration: InputDecoration(
                  labelText: 'Password Baru',
                  suffixIcon: IconButton(
                    icon: Icon(_showNewPassword
                        ? Icons.visibility
                        : Icons.visibility_off),
                    onPressed: () {
                      setState(() {
                        _showNewPassword = !_showNewPassword;
                      });
                    },
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Masukkan password baru';
                  }
                  if (value.length < 8) {
                    return 'Password harus lebih dari 8 karakter';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16.0),
              TextFormField(
                obscureText: !_showConfirmPassword,
                decoration: InputDecoration(
                  labelText: 'Konfirmasi Password',
                  suffixIcon: IconButton(
                    icon: Icon(_showConfirmPassword
                        ? Icons.visibility
                        : Icons.visibility_off),
                    onPressed: () {
                      setState(() {
                        _showConfirmPassword = !_showConfirmPassword;
                      });
                    },
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Masukkan konfirmasi password';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    //TODO: Implement password change logic
                  }
                },
                child: const Text('Ubah Password'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
