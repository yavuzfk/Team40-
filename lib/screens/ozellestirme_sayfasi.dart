import 'package:flutter/material.dart';
import 'package:room_mate/screens/ana_ekran.dart';

void main() {
  runApp(const OzellestirmeSayfasi());
}

class OzellestirmeSayfasi extends StatelessWidget {
  const OzellestirmeSayfasi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData(
      //   primaryColor: Colors.lightBlue[200],
      // ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black87,
          title: const Text(
            'Özelleştirme Ekranı',
          ),
        ),
        body: Container(
        child: ListView(
          children: <Widget>[
            SizedBox(
              height: 20.0,
            ),
            Center(
              child: Text(
                'Seni daha yakından tanıyalım',
                style: TextStyle(height: 1, fontSize: 20),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),

                Center(
                  child: Card(
                    elevation: 8,
                    shadowColor: Colors.green,
                    color: Colors.blueGrey[80],
                    child: Padding(
                      padding:
                      const EdgeInsets.symmetric(horizontal: 50, vertical: 0),
                      child: SizedBox(
                        width: 250,
                        height: 100,
                        child: Center(
                          child: TextFormField(
                              keyboardType: TextInputType
                                  .text, // Use email input type for emails.
                              decoration: new InputDecoration(
                                hintText: 'Taşınacağın Yaşayacağın Şehir',
                                labelText: 'Şehrin Adı',
                              )),
                        ),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Card(
                    elevation: 8,
                    shadowColor: Colors.green,
                    color: Colors.blueGrey[80],
                    child: Padding(
                      padding:
                      const EdgeInsets.symmetric(horizontal: 50, vertical: 0),
                      child: SizedBox(
                        width: 250,
                        height: 100,
                        child: Center(child: UniversityNameList()),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Card(
                    elevation: 8,
                    shadowColor: Colors.green,
                    color: Colors.blueGrey[80],
                    child: Padding(
                      padding:
                      const EdgeInsets.symmetric(horizontal: 50, vertical: 0),
                      child: SizedBox(
                        width: 250,
                        height: 100,
                        child: Center(child: MeasureList()),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text('Geri Dön'),
                      ),
                      SizedBox(
                        width: 26.0,
                      ),
                      ElevatedButton(
                        child: const Text('Kaydet'),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const AnaEkran()),
                          );
                        },
                      ),
                    ],
                  ),
                ),
                Spacer(),
          ],
        ),
        ),
      ),
    );
  }
}

class FilledCardExample extends StatelessWidget {
  const FilledCardExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        elevation: 0,
        color: Colors.lightBlue[100],
        child: const SizedBox(
          width: 300,
          height: 100,
          child: Center(child: Text('Filled Card')),
        ),
      ),
    );
  }
}

class UniversityNameList extends StatefulWidget {
  const UniversityNameList({Key? key}) : super(key: key);

  @override
  State<UniversityNameList> createState() => _UniversityNameListState();
}

class _UniversityNameListState extends State<UniversityNameList> {
  String dropdownValue = 'Kazandığınız Üniversite';

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.arrow_downward),
      elevation: 16,
      style: const TextStyle(color: Colors.deepPurple),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: (String? newValue) {
        setState(() {
          dropdownValue = newValue!;
        });
      },
      items: <String>[
        'Kazandığınız Üniversite',
        'Yeditepe University',
        'Bogazici University',
        'ODTU',
        'ITU'
      ].map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}

class MeasureList extends StatefulWidget {
  const MeasureList({Key? key}) : super(key: key);

  @override
  State<MeasureList> createState() => _MeasureListState();
}

class _MeasureListState extends State<MeasureList> {
  String dropdownValue = 'Evden Okula Maksimum Uzaklık';

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.arrow_downward),
      elevation: 16,
      style: const TextStyle(color: Colors.deepPurple),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: (String? newValue) {
        setState(() {
          dropdownValue = newValue!;
        });
      },
      items: <String>[
        'Evden Okula Maksimum Uzaklık',
        '10km',
        '20km',
        '30km',
        '40km'
      ].map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}

/*
*             Container(
                padding: const EdgeInsets.only(top: 10.0),
                child: new TextFormField(
                    keyboardType: TextInputType.text, // Use email input type for emails.
                    decoration: new InputDecoration(
                      hintText: 'User Name',
                      labelText: 'Enter your user name',
                      icon: new Icon(Icons.person),
                    )

                )
            ),
* */
