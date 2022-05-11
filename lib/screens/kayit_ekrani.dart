import 'package:flutter/material.dart';
import 'package:room_mate/screens/ozellestirme_sayfasi.dart';

class KayitEkrani extends StatelessWidget {
  const KayitEkrani({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kayıt Ekranı'),
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
              child: const Text('Özelleştirme Ekranı'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const OzellestirmeSayfasi()),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}