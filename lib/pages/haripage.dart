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
        title: const Text(
          "H I T U N G  H A R I",
          style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20),
        ),
        backgroundColor:
            Colors.transparent, // Transparan agar sesuai dengan gradient
        elevation: 0, // Hilangkan shadow AppBar
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.black, Colors.grey[850]!], // Gradien hitam
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.black, Colors.grey[850]!], // Gradien hitam
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: dayController,
                style: const TextStyle(color: Colors.white), // Warna teks putih
                decoration: InputDecoration(
                  labelText: 'Hari ke-',
                  labelStyle: const TextStyle(
                      color: Colors.white70), // Label berwarna abu-abu terang
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none, // Hilangkan border
                  ),
                  filled: true,
                  fillColor: Colors.white
                      .withOpacity(0.1), // Latar belakang transparan
                ),
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: _hitungHari,
                style: ElevatedButton.styleFrom(
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  backgroundColor: Colors.white
                      .withOpacity(0.1), // Latar belakang transparan
                  shadowColor: Colors.black.withOpacity(0.2),
                  elevation: 5,
                ),
                child: const Text(
                  'Hitung Hari',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Text(
                'Hari: $hari',
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white, // Warna teks putih
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
