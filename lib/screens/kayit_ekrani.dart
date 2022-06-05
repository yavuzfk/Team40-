import 'package:flutter/material.dart';
import 'package:room_mate/screens/ozellestirme_sayfasi.dart';

class KayitEkrani extends StatefulWidget {
  const KayitEkrani({Key? key}) : super(key: key);

  @override
  State<KayitEkrani> createState() => _KayitEkraniState();
}

class _KayitEkraniState extends State<KayitEkrani> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: const Text('Kayıt Ekranı'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(children: [
          TextField(
            controller: nameController,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.person),
              labelText: 'İsim Soyisim',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
          ),
          SizedBox(
            height: 12.0,
          ),
          TextField(
            controller: emailController,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.mail),
              labelText: 'E-Mail',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
          ),
          SizedBox(
            height: 12.0,
          ),
          TextField(
            obscureText: true,
            controller: passwordController,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.password),
              labelText: 'Parola',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
          ),
          SizedBox(
            height: 12.0,
          ),
          GestureDetector(
            onTap: register,
            child: Container(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Center(
                  child: Text(
                    'Kayıt Ol',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0),
                  ),
                ),
              ),
              decoration: BoxDecoration(
                  color: Colors.black87,
                  borderRadius: BorderRadius.circular(10.0)),
            ),
          ),
        ]),
      ),
    );
  }

  void register() {
    print(nameController.text);
    print(emailController.text);
    print(passwordController.text);
  }
}
