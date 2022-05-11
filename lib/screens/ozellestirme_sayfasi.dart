import 'package:flutter/material.dart';
import 'package:room_mate/screens/ana_ekran.dart';

class OzellestirmeSayfasi extends StatelessWidget {
  const OzellestirmeSayfasi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Özelleştirme Sayfası'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Geri Dön!'),
            ),
            ElevatedButton(
              child: const Text('Ana Ekran'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AnaEkran()),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}