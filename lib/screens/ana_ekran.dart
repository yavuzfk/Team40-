import 'package:flutter/material.dart';
import 'package:room_mate/screens/kayit_ekrani.dart';
import 'giris_ekrani.dart';

class AnaEkran extends StatelessWidget {
  const AnaEkran({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: const Text('Ana Ekran'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                  child: const Text('Giris Yap'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const GirisEkrani()),
                    );
                  },
                ),
                SizedBox(
                  width: 26.0,
                ),
                ElevatedButton(
                  child: const Text('Kayıt Ol'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const KayitEkrani()),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

