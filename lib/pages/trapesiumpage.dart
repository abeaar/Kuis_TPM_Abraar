import 'dart:math';

import 'package:flutter/material.dart';

class TrapesiumPage extends StatefulWidget {
  const TrapesiumPage({super.key});

  @override
  State<TrapesiumPage> createState() => _TrapesiumPageState();
}

class _TrapesiumPageState extends State<TrapesiumPage> {
  // Input fields
  final TextEditingController base1Controller = TextEditingController();
  final TextEditingController base2Controller = TextEditingController();
  final TextEditingController heightController = TextEditingController();

  // Results
  double luas = 0;
  double keliling = 0;

  void _hitungluas() {
    double base1 = double.parse(base1Controller.text);
    double base2 = double.parse(base2Controller.text);
    double height = double.parse(heightController.text);

    setState(() {
      luas = 0.5 * (base1 + base2) * height;
    });
  }

  void _hitungkeliling() {
    double base1 = double.parse(base1Controller.text);
    double base2 = double.parse(base2Controller.text);
    double height = double.parse(heightController.text);
    double x = (base2 - base1).abs();
    double side = sqrt(pow(x, 2) + pow(height, 2));

    setState(() {
      keliling = base1 + base2 + side + side;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "TRAPESIUM",
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
                  'assets/images/trapesium.jpg',
                  scale: 3,
                ),
              ),
              TextField(
                controller: base1Controller,
                style: const TextStyle(color: Colors.white), // Warna teks putih
                decoration: InputDecoration(
                  labelText: 'Panjang Atas',
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
              const SizedBox(height: 10),
              TextField(
                controller: base2Controller,
                style: const TextStyle(color: Colors.white), // Warna teks putih
                decoration: InputDecoration(
                  labelText: 'Panjang Bawah',
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
              const SizedBox(height: 10),
              TextField(
                controller: heightController,
                style: const TextStyle(color: Colors.white), // Warna teks putih
                decoration: InputDecoration(
                  labelText: 'Tinggi',
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: _hitungluas,
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
                      'Hitung Luas',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: _hitungkeliling,
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
                      'Hitung Keliling',
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
                'Luas : ${luas.toStringAsFixed(2)}',
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white, // Warna teks putih
                ),
              ),
              Text(
                'Keliling : ${keliling.toStringAsFixed(2)}',
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
