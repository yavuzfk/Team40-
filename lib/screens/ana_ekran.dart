import 'package:flutter/material.dart';
import 'giris_ekrani.dart';

class AnaEkran extends StatelessWidget {
  const AnaEkran({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ana Ekran'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Giris Ekrani'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const GirisEkrani()),
            );
          },
        ),
      ),
    );
  }
}

