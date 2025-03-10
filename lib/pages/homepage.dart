import 'package:flutter/material.dart';
import 'trapesiumpage.dart';
import 'kubuspage.dart';
import 'haripage.dart';
import 'datadiri.dart'; 

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            "KUIS TEKNOLOGI PEMROGRAMAN MOBILE",
            style: TextStyle(fontWeight: FontWeight.w900),
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Column(
          children: [
            // Tombol untuk menuju halaman Data Diri
            Container(
              width: double.infinity,
              constraints: const BoxConstraints(minHeight: 80),
              padding: const EdgeInsets.only(bottom: 10),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const DataDiriPage()),
                  );
                },
                child: const Text(
                  "DATA DIRI",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),

            // Tombol Trapesium
            Container(
              width: double.infinity,
              constraints: const BoxConstraints(minHeight: 80),
              padding: const EdgeInsets.only(bottom: 10),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const TrapesiumPage()),
                  );
                },
                child: const Text(
                  "TRAPESIUM",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),

            // Tombol Kubus
            Container(
              width: double.infinity,
              constraints: const BoxConstraints(minHeight: 80),
              padding: const EdgeInsets.only(bottom: 10),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const KubusPage()),
                  );
                },
                child: const Text(
                  "KUBUS",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),

            // Tombol Hitung Hari
            Container(
              width: double.infinity,
              constraints: const BoxConstraints(minHeight: 80),
              padding: const EdgeInsets.only(bottom: 10),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HariPage()),
                  );
                },
                child: const Text(
                  "HITUNG HARI",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
