import 'package:flutter/material.dart';

class AdministrasiPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Pembayaran'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'KOMPONEN',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              SizedBox(height: 16.0),
              _buildRow('Uang Bangunan', 'Rp. 3.000.000', 'Rp. 3.000.000', 'Rp. 0'),
              Divider(),
              SizedBox(height: 16.0),
              _buildRow('Biaya SKS', 'Rp. 3.000.000', 'Rp. 3.000.000', 'Rp. 0'),
              Divider(),
              SizedBox(height: 16.0),
              _buildRow('Biaya Kegiatan', 'Rp. 100.000', 'Rp. 100.000', 'Rp. 0'),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildRow(String komponen, String harga, String terbayar, String sisa) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          flex: 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(komponen, style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 4.0),
              Text(harga, style: TextStyle(fontSize: 12.0)),
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text('TERBAYAR', style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 4.0),
              Text(terbayar, style: TextStyle(color: Colors.green)),
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text('SISA', style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 4.0),
              Text(sisa, style: TextStyle(color: Colors.red)),
            ],
          ),
        ),
      ],
    );
  }
}