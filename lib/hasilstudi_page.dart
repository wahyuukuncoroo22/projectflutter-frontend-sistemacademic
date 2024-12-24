import 'package:flutter/material.dart';

class HasilStudiPage extends StatefulWidget {
  const HasilStudiPage({Key? key}) : super(key: key);

  @override
  _HasilStudiState createState() => _HasilStudiState();
}

class _HasilStudiState extends State<HasilStudiPage> {
  final List<Semester> semesters = [
    Semester(semester: 1, aktif: true, ipk: 3.8, status: 'Aktif'),
    Semester(semester: 2, aktif: true, ipk: 3.62, status: 'Aktif'),
    Semester(semester: 3, aktif: true, ipk: 3.38, status: 'Aktif'),
    Semester(semester: 4, aktif: true, ipk: 3.76, status: 'Aktif'),
    Semester(semester: 5, aktif: true, ipk: 3.66, status: 'Aktif'),
    Semester(semester: 6, aktif: false, ipk: 0, status: 'Cuti Kuliah'),
    Semester(semester: 7, aktif: true, ipk: 0, status: 'Aktif'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hasil Studi'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildInfoCard('Total Mata Kuliah', '112'),
            const SizedBox(height: 16.0),
            _buildInfoCard('Total SKS', '154'),
            const SizedBox(height: 16.0),
            _buildInfoCard('IPK', '3.64'),
            const SizedBox(height: 16.0),
            Expanded(
              child: ListView.builder(
                itemCount: semesters.length,
                itemBuilder: (context, index) {
                  return SemesterCard(semester: semesters[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoCard(String title, String value) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8.0),
            Text(
              value,
              style: const TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Semester {
  final int semester;
  final bool aktif;
  final double ipk;
  final String status;

  Semester({
    required this.semester,
    required this.aktif,
    required this.ipk,
    required this.status,
  });
}

class SemesterCard extends StatelessWidget {
  final Semester semester;

  const SemesterCard({Key? key, required this.semester}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16.0),
      child: ListTile(
        title: Text('Semester ${semester.semester}'),
        subtitle: Text('Status: ${semester.status}'),
        trailing: Text(
            'IPK: ${semester.ipk > 0 ? semester.ipk.toStringAsFixed(2) : 'N/A'}'),
      ),
    );
  }
}
