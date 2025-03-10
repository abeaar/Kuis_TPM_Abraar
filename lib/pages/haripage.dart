import 'package:flutter/material.dart';

class HariPage extends StatefulWidget {
  const HariPage({super.key});

  @override
  State<HariPage> createState() => _HariPageState();
}

class _HariPageState extends State<HariPage> {
  final TextEditingController dayController = TextEditingController();

  String hari = "";
  List<String> nama = [
    'Minggu',
    'Senin',
    'Selasa',
    'Rabu',
    'Kamis',
    'Jumat',
    'Sabtu'
  ];

  void _hitungHari() {
    int input = int.parse(dayController.text);

    setState(() {
      hari = nama[input % 7];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("H I T U N G  H A R I"),
      ),
      body: Padding(
        padding:EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: dayController,
              decoration: InputDecoration(
                labelText: 'Hari ke-',
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: _hitungHari,
              child: Text('Hitung Hari'),
            ),
            SizedBox(height: 16),
            Text(
              'Hari: $hari',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
