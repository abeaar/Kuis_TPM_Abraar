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
        title: Text("KUBUS"),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Center(
                child: Image.asset(
              'assets/images/kubus.png',
              scale: 5,
            )),
            TextField(
              controller: sisiController,
              decoration: InputDecoration(
                labelText: 'Panjang Sisi',
              ),
              keyboardType: TextInputType.number, // Hanya angka
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: _hitungVolume,
                  child: Text('Hitung Volume'),
                ),
                ElevatedButton(
                  onPressed: _hitungLuasPermukaan,
                  child: Text('Hitung Luas Permukaan'),
                ),
              ],
            ),
            SizedBox(height: 16),
            Text('Volume : $volume'),
            Text('Luas Permukaan : $luasPermukaan'),
          ],
        ),
      ),
    );
  }
}
