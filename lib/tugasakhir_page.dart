import 'package:flutter/material.dart';
import 'package:flutter_application_utswdk/administrasi_page.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TugasAkhirPage(),
    );
  }
}

class TugasAkhirPage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<TugasAkhirPage> {
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
            Text('SIAKAD FT'),
          ],
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: ListView(
          padding: EdgeInsets.all(20.0),
          children: <Widget>[
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => KerjaPraktekPage()),
                );
              },
              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Container(
                  height: 200, // Adjust height as needed
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/bg_page.jpg'),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'TUGAS KERJA PRAKTIK',
                        style: TextStyle(fontSize: 16.0, color: Colors.white),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        'UNIVERSITAS MUHAMMADIYAH TANGERANG',
                        style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      SizedBox(height: 20.0),
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 10.0),
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Text(
                          'DONE',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SkripsiPage()),
                );
              },
              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Container(
                  height: 200, // Adjust height as needed
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/bg_page.jpg'),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'TUGAS SKRIPSI',
                        style: TextStyle(fontSize: 16.0, color: Colors.white),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        'UNIVERSITAS MUHAMMADIYAH TANGERANG',
                        style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      SizedBox(height: 20.0),
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 10.0),
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Text(
                          'FAILED',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class KerjaPraktekPage extends StatefulWidget {
  const KerjaPraktekPage({Key? key}) : super(key: key);

  @override
  _KerjaPraktekPageState createState() => _KerjaPraktekPageState();
}

class _KerjaPraktekPageState extends State<KerjaPraktekPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Kembali ke halaman sebelumnya
          },
        ),
        title: Text('KERJA PRAKTEK'),
      ),
      body: ListView(
        padding: EdgeInsets.all(20.0),
        children: [
          Stack(
            children: [
              Container(
                height: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/bg_page.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                top: 50,
                left: 20,
                child: Text(
                  'KERJA PRAKTEK',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              Positioned(
                top: 80,
                left: 20,
                child: Text(
                  'Status Progres: ANALISIS DAN PERANCANGAN SISTEM PENJADWALAN SIDANG',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'JUDUL KERJA PRAKTEK',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'ANALISIS DAN PERANCANGAN SISTEM PENJADWALAN SIDANG',
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'TEMPAT PENELITIAN',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'PENGADILAN AGAMA KELAS 1.A TANGERANG',
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Dosen Pembimbing',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Ir. Rohmat Taufiq, ST., M.Kom',
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => AdministrasiPage()),
                    ); // Navigate to TugasAkhir page
                  },
                  child: Text('Informasi Administrasi'),
                ),
              ],
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            itemCount: 5,
            itemBuilder: (context, index) {
              return StatusItem(
                icon: Icons.book,
                title: 'Pendaftaran Judul',
                date: '20-10-2024',
                status: Status.completed,
              );
            },
          ),
        ],
      ),
    );
  }
}

enum Status {
  pending,
  completed,
}

class StatusItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String date;
  final Status status;

  const StatusItem({
    Key? key,
    required this.icon,
    required this.title,
    required this.date,
    required this.status,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(icon),
        title: Text(title),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(date),
            SizedBox(height: 4),
            status == Status.pending
                ? Text('Belum Selesai', style: TextStyle(color: Colors.red))
                : Text('Selesai', style: TextStyle(color: Colors.green)),
          ],
        ),
      ),
    );
  }
}

class SkripsiPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Skripsi'),
      ),
      body: Center(
        child: Text('Halaman Skripsi'),
      ),
    );
  }
}
