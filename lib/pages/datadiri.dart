import 'package:flutter/material.dart';

class DataDiriPage extends StatelessWidget {
  const DataDiriPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "DATA DIRI",
          style: TextStyle(fontWeight: FontWeight.w900),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  'assets/images/Nathaleon.jpg',
                  width: 200,
                  height: 200,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromARGB(255, 235, 221, 203),
                ),
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Nama   : Nathaleon Ranggainaya Dian Kuncoro",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "NIM       : 123220015",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Kelas    : IF-B",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Hobi      : Bermain Gitar",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
