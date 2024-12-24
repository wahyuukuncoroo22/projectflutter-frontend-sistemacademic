import 'package:flutter/material.dart';
import 'package:flutter_application_utswdk/administrasi_page.dart';
import 'package:flutter_application_utswdk/hasilstudi_page.dart';
import 'package:flutter_application_utswdk/informasi_page.dart';
import 'package:flutter_application_utswdk/karturencanastudi_page.dart';
import 'package:flutter_application_utswdk/login_page.dart';
import 'package:flutter_application_utswdk/register_page.dart';
import 'package:flutter_application_utswdk/tugasakhir_page.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SIAKAD FT UMT',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'SIAKAD FT'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Image.asset(
              'assets/images/logo_umt.png', // Path to your logo
              height: 40, // Adjust height as needed
            ),
            SizedBox(width: 8), // Space between logo and title
            Text(widget.title),
          ],
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NotificationPage()),
              );
            },
          ),
          _buildProfileMenu(context),
        ],
      ),
      body: _buildBody(context),
    );
  }

  PopupMenuButton<String> _buildProfileMenu(BuildContext context) {
    return PopupMenuButton<String>(
      icon: Icon(Icons.person),
      onSelected: (String value) {
        switch (value) {
          case 'Profile':
            // Handle profile action
            break;
          case 'Settings':
            // Handle settings action
            break;
          case 'About':
            // Handle about action
            break;
          case 'Login':
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => LoginPage()),
            );
            break;
          case 'Register':
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => RegisterPage()),
            );
            break;
          case 'Logout':
            // Handle logout action
            break;
        }
      },
      itemBuilder: (BuildContext context) {
        return [
          PopupMenuItem<String>(value: 'Profile', child: Text('Profile')),
          PopupMenuItem<String>(value: 'Settings', child: Text('Settings')),
          PopupMenuItem<String>(value: 'About', child: Text('About')),
          PopupMenuItem<String>(value: 'Login', child: Text('Login')),
          PopupMenuItem<String>(value: 'Register', child: Text('Register')),
          PopupMenuItem<String>(value: 'Logout', child: Text('Logout')),
        ];
      },
    );
  }

  Widget _buildBody(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(1.2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          // Image on the left
          Padding(
            padding: const EdgeInsets.only(right: 18.5), // Optional padding
            child: Image.asset(
              'assets/images/UMT.png',
              height: 300, width: 255, // Adjust height as needed
            ),
          ),
          // Column for buttons
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => InformasiPage()),
                  ); // Navigate to Hasil Studi page// Navigate to Informasi page
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.yellow[700],
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  textStyle: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                  )),
                ),
                child: const Text('Informasi'),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => KartuRencanaStudiPage()),
                  ); // Navigate to Kartu Rencana Studi Page
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.yellow[700],
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  textStyle: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                  )),
                ),
                child: const Text('Kartu Rencana Studi'),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HasilStudiPage()),
                  ); // Navigate to Hasil Studi page
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.yellow[700],
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  textStyle: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                  )),
                ),
                child: const Text('Hasil Studi'),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AdministrasiPage()),
                  ); // Navigate to Pembayaran page
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.yellow[700],
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  textStyle: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                  )),
                ),
                child: const Text('Pembayaran'),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TugasAkhirPage()),
                  ); // Navigate to Pembayaran page
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.yellow[700],
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  textStyle: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                  )),
                ),
                child: const Text('Tugas Akhir'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class NotificationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Informasi'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                _showInformasi(context, 'Informasi 1', '10 Oktober 2023');
              },
              child: Text('Informasi 1'),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                _showInformasi(context, 'Informasi 2', '20 Oktober  2023');
              },
              child: Text('Informasi 2'),
            ),
          ],
        ),
      ),
    );
  }

  void _showInformasi(BuildContext context, String judul, String tanggal) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(judul),
          content: Text(
            'Tanggal: $tanggal',
            style: TextStyle(fontSize: 16.0),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Tutup'),
            ),
          ],
        );
      },
    );
  }
}
