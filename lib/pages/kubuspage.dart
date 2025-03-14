import 'package:flutter/material.dart';

class KubusPage extends StatefulWidget {
  const KubusPage({super.key});

  @override
  State<KubusPage> createState() => _KubusPageState();
}

class _KubusPageState extends State<KubusPage> {
  final TextEditingController sisiController = TextEditingController();

  double volume = 0;
  double luasPermukaan = 0;

  void _hitungVolume() {
    double sisi = double.parse(sisiController.text);

    setState(() {
      volume = sisi * sisi * sisi;
    });
  }

  void _hitungLuasPermukaan() {
    double sisi = double.parse(sisiController.text);

    setState(() {
      luasPermukaan = sisi * sisi * 6;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "KUBUS",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.black87, // Latar belakang AppBar hitam
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
            children: [
              Center(
                child: Image.asset(
                  'assets/images/kubus.jpg',
                  scale: 5,
                ),
              ),
              TextField(
                controller: sisiController,
                style: const TextStyle(color: Colors.white), // Warna teks putih
                decoration: InputDecoration(
                  labelText: 'Panjang Sisi',
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
                keyboardType: TextInputType.number, // Hanya angka
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: _hitungVolume,
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          vertical: 15, horizontal: 20),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      backgroundColor: Colors.white
                          .withOpacity(0.1), // Latar belakang transparan
                      shadowColor: Colors.black.withOpacity(0.2),
                      elevation: 5,
                    ),
                    child: const Text(
                      'Hitung Volume',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: _hitungLuasPermukaan,
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          vertical: 15, horizontal: 20),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      backgroundColor: Colors.white
                          .withOpacity(0.1), // Latar belakang transparan
                      shadowColor: Colors.black.withOpacity(0.2),
                      elevation: 5,
                    ),
                    child: const Text(
                      'Hitung Luas Permukaan',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Text(
                'Volume : $volume',
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white, // Warna teks putih
                ),
              ),
              Text(
                'Luas Permukaan : $luasPermukaan',
                style: const TextStyle(
                  fontSize: 18,
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
