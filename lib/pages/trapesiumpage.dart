import 'package:flutter/material.dart';
import 'dart:math';

class TrapesiumPage extends StatefulWidget {
  const TrapesiumPage({super.key});

  @override
  State<TrapesiumPage> createState() => _TrapesiumPageState();
}

class _TrapesiumPageState extends State<TrapesiumPage> {
  final TextEditingController base1Controller = TextEditingController();
  final TextEditingController base2Controller = TextEditingController();
  final TextEditingController heightController = TextEditingController();

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
    double x = base2 - base1;
    double side = sqrt(pow(x, 2) + pow(height, 2));

    setState(() {
      keliling = base1 + base2 + side + side;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TRAPESIUM"),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Center(child: Image.asset('assets/images/trapesium.png')),
            TextField(
              controller: base1Controller,
              decoration: InputDecoration(
                labelText: 'Panjang Atas',
              ),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: base2Controller,
              decoration: InputDecoration(
                labelText: 'Panjang Bawah',
              ),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: heightController,
              decoration: InputDecoration(
                labelText: 'Tinggi',
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: _hitungluas,
                  child: Text('Hitung Luas'),
                ),
                ElevatedButton(
                  onPressed: _hitungkeliling,
                  child: Text('Hitung Keliling'),
                ),
              ],
            ),
            SizedBox(height: 16),
            Text('Luas : $luas'),
            Text('Keliling : $keliling'),
          ],
        ),
      ),
    );
  }
}
