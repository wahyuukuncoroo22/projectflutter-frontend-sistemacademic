import 'package:flutter/material.dart';

class InformasiPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Informasi Tahapan'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            ListTile(
              leading: Icon(Icons.book, color: Colors.green),
              title: Text('Pendaftaran Judul'),
              subtitle: Text('20-10-2024'),
              trailing: Icon(Icons.check_circle, color: Colors.green),
            ),
            ListTile(
              leading: Icon(Icons.credit_card, color: Colors.green),
              title: Text('Verifikasi Keuangan'),
              subtitle: Text('20-10-2024'),
              trailing: Icon(Icons.check_circle, color: Colors.green),
            ),
            ListTile(
              leading: Icon(Icons.list_alt, color: Colors.green),
              title: Text('Verifikasi Akademik'),
              subtitle: Text('20-10-2024'),
              trailing: Icon(Icons.check_circle, color: Colors.green),
            ),
            ListTile(
              leading: Icon(Icons.person, color: Colors.green),
              title: Text('Penentuan Pembimbing'),
              subtitle: Text('20-10-2024'),
              trailing: Icon(Icons.check_circle, color: Colors.green),
            ),
            ListTile(
              leading: Icon(Icons.file_copy, color: Colors.green),
              title: Text('Pengajuan Proposal'),
              subtitle: Text('20-10-2024'),
              trailing: Icon(Icons.check_circle, color: Colors.green),
            ),
          ],
        ),
      ),
    );
  }
}