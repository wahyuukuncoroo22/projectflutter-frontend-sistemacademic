import 'package:flutter/material.dart';

class KartuRencanaStudiPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rencana Studi',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Rencana Studi'),
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
  final List<Semester> semesters = [
    Semester(
      number: 1,
      status: 'Aktif',
      sks: 22,
    ),
    Semester(
      number: 2,
      status: 'Aktif',
      sks: 22,
    ),
    Semester(
      number: 3,
      status: 'Aktif',
      sks: 22,
    ),
    Semester(
      number: 4,
      status: 'Aktif',
      sks: 22,
    ),
    Semester(
      number: 5,
      status: 'Aktif',
      sks: 22,
    ),
    Semester(
      number: 6,
      status: 'Cuti Kuliah',
      sks: 0,
    ),
    Semester(
      number: 7,
      status: 'Aktif',
      sks: 22,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView.builder(
        itemCount: semesters.length,
        itemBuilder: (context, index) {
          return SemesterCard(semester: semesters[index]);
        },
      ),
    );
  }
}

class Semester {
  final int number;
  final String status;
  final int sks;

  Semester({required this.number, required this.status, required this.sks});
}

class SemesterCard extends StatelessWidget {
  final Semester semester;

  SemesterCard({required this.semester});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text('Semester ${semester.number}'),
        subtitle: Text('Status: ${semester.status}'),
        trailing: Text('SKS: ${semester.sks}'),
      ),
    );
  }
}
