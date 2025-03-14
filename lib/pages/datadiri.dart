import 'package:flutter/material.dart';

class DataDiriPage extends StatelessWidget {
  const DataDiriPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "DATA DIRI",
          style: TextStyle(
            fontWeight: FontWeight.w900,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.black87, // Warna gelap untuk AppBar
      ),
      body: Container(
        color: Colors.black87, // Latar belakang gelap untuk body
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    'assets/images/abraar.jpg',
                    width: 200,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Center(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(
                        255, 50, 50, 50), // Warna abu-abu gelap
                  ),
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Nama   : Abraar Jihaad Hibatullah",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white, // Teks putih untuk kontras
                        ),
                      ),
                      Text(
                        "NIM       : 123220109",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white, // Teks putih untuk kontras
                        ),
                      ),
                      Text(
                        "Kelas    : IF-D",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white, // Teks putih untuk kontras
                        ),
                      ),
                      Text(
                        "Hobi      : Keyboard warrior",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white, // Teks putih untuk kontras
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
