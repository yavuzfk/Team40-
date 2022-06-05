import 'package:flutter/material.dart';

class KesifEkrani extends StatefulWidget {
  const KesifEkrani({Key? key}) : super(key: key);

  @override
  State<KesifEkrani> createState() => _KesifEkraniState();
}

class _KesifEkraniState extends State<KesifEkrani> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 32.0,
                ),
                Text(
                  '**Ankara** ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 32.0,
                  ),
                ),
                Text(
                  'Yakınlarda *match size* kullanıcı bulundu.',
                  style: TextStyle(),
                ),
                SizedBox(height: 10.0,),
                Text(
                  '// BU SAYFADA SADECe ARAYÜZ TASARLANMIŞTIR',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 16.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Wrap(
                      direction: Axis.horizontal,
                      spacing: 4.0,
                      runSpacing: 4.0,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: [
                        Icon(
                          Icons.list,
                          color: Colors.blueAccent,
                          size: 14,
                        ),
                        Text(
                          'Sırala',
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                        )
                      ],
                    ),
                    Wrap(
                      direction: Axis.horizontal,
                      spacing: 4.0,
                      runSpacing: 4.0,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: [
                        Icon(
                          Icons.filter_vintage,
                          color: Colors.blueAccent,
                          size: 14,
                        ),
                        Text(
                          'Filtrele',
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 16.0),
                ListView(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://thumbs.dreamstime.com/b/beauty-black-skin-woman-african-ethnic-female-face-young-african-american-model-long-afro-hair-smiling-model-isolated-163819623.jpg'),
                      ),
                      title: Text(
                        'Ebru Kalaycı',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text('14km uzakta...'),
                      trailing: Icon(Icons.chevron_right),
                    ),
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://us.123rf.com/450wm/deagreez/deagreez1907/deagreez190700039/129609545-portrait-of-gorgeous-nice-charming-pretty-man-millennial-he-his-good-looking-touch-head-neck-palm-ha.jpg?ver=6'),
                      ),
                      title: Text(
                        'Selim Şekerci',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text('2km uzakta...'),
                      trailing: Icon(Icons.chevron_right),
                    ),
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://www.maxpixel.net/static/photo/1x/Model-Female-Woman-Girl-Portrait-Lady-Modeling-5538854.jpg'),
                      ),
                      title: Text(
                        'Rümeysa Özçelik',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text('800m uzakta...'),
                      trailing: Icon(Icons.chevron_right),
                    ),
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://cdn.create.vista.com/api/media/small/160529826/stock-photo-beautiful-model-girl-with-smooth'),
                      ),
                      title: Text(
                        'Cemre Dere',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text('22km uzakta...'),
                      trailing: Icon(Icons.chevron_right),
                    ),
                  ],
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'Devamını Gör',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 16.0),
                Text(
                  'Ev İlanları',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 32.0,
                  ),
                ),
                Text(
                  'Yakınlarda 12 ev sahibi bulundu.',
                  style: TextStyle(),
                ),
                SizedBox(height: 8.0),
                ListView(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    homeAd(
                        photo:
                            'https://www.fusionstudents.co.uk/wp-content/uploads/2021/02/SwanseaScreenRes-3925_croped.jpg',
                        profilePhoto:
                            'https://www.maxpixel.net/static/photo/1x/Model-Female-Woman-Girl-Portrait-Lady-Modeling-5538854.jpg',
                        username: 'Rümeysa Özçelik'),
                    homeAd(
                        photo: 'https://i.pinimg.com/originals/bd/54/54/bd5454383c17d7c748381f511230fe05.jpg',
                        profilePhoto:
                            'https://images.pexels.com/photos/2379004/pexels-photo-2379004.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                        username: 'Fırat Çakır'),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget homeAd({required String photo, required String profilePhoto, required String username}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Container(
        height: 150,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Stack(
          children: [
            Positioned.fill(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.network(
                  photo,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned.fill(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.black.withOpacity(0.3),
                ),
              ),
            ),
            Positioned(
              bottom: 8.0,
              left: 8.0,
              child: Row(
                children: [
                  Wrap(
                    direction: Axis.horizontal,
                    spacing: 8.0,
                    runSpacing: 8.0,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundImage: NetworkImage(profilePhoto),
                        radius: 18,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Ev arkadaşı arıyorum!',
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.white),
                          ),
                          Text(
                            username,
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10, color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
