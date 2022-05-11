import 'package:flutter/material.dart';
import 'package:room_mate/screens/kayit_ekrani.dart';

class GirisEkrani extends StatelessWidget {
  const GirisEkrani({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Giriş Ekranı'),
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
              child: const Text('Kayıt Ekrani'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const KayitEkrani()),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
