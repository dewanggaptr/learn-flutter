import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.red),
        home: Scaffold(
            appBar: AppBar(title: const Text("MyApp")),
            body: ListView(
              children: <Widget>[
                Container(
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        // width: MediaQuery.of(context).size.width,
                        height: 50,
                        child: Row(
                          children: <Widget>[
                            Expanded(
                                child: Center(
                              child: Text(
                                'berita terbaru'.toUpperCase(),
                                style: TextStyle(fontSize: 12),
                              ),
                            )),
                            Expanded(
                                child: Center(
                              child: Text(
                                'pertandingan hari ini'.toUpperCase(),
                                style: TextStyle(fontSize: 12),
                              ),
                            ))
                          ],
                        ),
                      ),
                      Container(
                        child: const Image(
                            image: NetworkImage(
                                'https://pict.sindonews.net/dyn/620/content/2020/02/12/11/1524916/lima-pesepak-bola-yang-terkenal-dermawan-iYy-thumb.jpg')),
                      ),
                      Container(
                        height: 40,
                        decoration: const BoxDecoration(
                            border: Border(
                                bottom:
                                    BorderSide(width: 3, color: Colors.red))),
                        child: const Center(
                          child: Text(
                            'Lima Pesepak Bola yang Terkenal Rendah Hati',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: <Widget>[
                      Container(
                          margin: const EdgeInsets.only(top: 10),
                          // height: 100,
                          alignment: Alignment.center,
                          padding: const EdgeInsets.only(
                              left: 50, top: 20, right: 50, bottom: 20),
                          color: Colors.red,
                          child: Row(
                            children: [
                              const Image(
                                image: NetworkImage(
                                    'https://i2-prod.football.london/incoming/article24087231.ece/ALTERNATES/s1200b/0_Ngolo-Kante-has-missed-a-number-of-games-for-Chelsea-this-season.jpg'),
                                height: 120,
                                width: 200,
                                // height: 200,
                                fit: BoxFit.fitWidth,
                              ),
                              const SizedBox(
                                width: 75,
                              ),
                              Container(
                                child: const Text("1. N'golo Kante",
                                    style: TextStyle(color: Colors.white)),
                              ),
                            ],
                          )),
                      Container(
                          margin: const EdgeInsets.only(top: 10),
                          // height: 100,
                          alignment: Alignment.center,
                          padding: const EdgeInsets.only(
                              left: 50, top: 20, right: 50, bottom: 20),
                          color: Colors.red,
                          child: Row(
                            children: [
                              const Image(
                                image: NetworkImage(
                                    'https://images2.minutemediacdn.com/image/fetch/w_2000,h_2000,c_fit/https%3A%2F%2Frushthekop.com%2Fwp-content%2Fuploads%2Fgetty-images%2F2017%2F07%2F1255593136.jpeg'),
                                width: 200,
                                height: 120,
                                fit: BoxFit.fitWidth,
                              ),
                              const SizedBox(
                                width: 75,
                              ),
                              Container(
                                child: const Text('2. Sadio Mane',
                                    style: TextStyle(color: Colors.white)),
                              ),
                            ],
                          )),
                      Container(
                          margin: const EdgeInsets.only(top: 10),
                          // height: 100,
                          alignment: Alignment.center,
                          padding: const EdgeInsets.only(
                              left: 50, top: 20, right: 50, bottom: 20),
                          color: Colors.red,
                          child: Row(
                            children: [
                              const Image(
                                image: NetworkImage(
                                    'https://static.foxnews.com/foxnews.com/content/uploads/2019/01/Andres-Iniesta-1.jpg'),
                                width: 200,
                                height: 120,
                                fit: BoxFit.fitWidth,
                              ),
                              const SizedBox(
                                width: 75,
                              ),
                              Container(
                                child: const Text('3. Andres Iniesta',
                                    style: TextStyle(color: Colors.white)),
                              ),
                            ],
                          )),
                      Container(
                          margin: const EdgeInsets.only(top: 10),
                          // height: 100,
                          alignment: Alignment.center,
                          padding: const EdgeInsets.only(
                              left: 50, top: 20, right: 50, bottom: 20),
                          color: Colors.red,
                          child: Row(
                            children: [
                              const Image(
                                image: NetworkImage(
                                    'https://awsimages.detik.net.id/community/media/visual/2022/10/14/mohamed-salah.jpeg?w=1200'),
                                width: 200,
                                height: 120,
                                fit: BoxFit.fitWidth,
                              ),
                              const SizedBox(
                                width: 75,
                              ),
                              Container(
                                child: const Text('4. Mohamed Salah',
                                    style: TextStyle(color: Colors.white)),
                              ),
                            ],
                          )),
                      Container(
                          margin: const EdgeInsets.only(top: 10),
                          // height: 100,
                          alignment: Alignment.center,
                          padding: const EdgeInsets.only(
                              left: 50, top: 20, right: 50, bottom: 20),
                          color: Colors.red,
                          child: Row(
                            children: [
                              const Image(
                                image: NetworkImage(
                                    'https://assets.goal.com/v3/assets/bltcc7a7ffd2fbf71f5/blt7577002f0ea3f778/60db0bf3cbc6070f5c3a0c88/14dbdaa6c1b90052cebcccad9f2393ab7c42c088.jpg'),
                                width: 200,
                                height: 120,
                                fit: BoxFit.fitWidth,
                              ),
                              const SizedBox(
                                width: 75,
                              ),
                              Container(
                                child: const Text('5. Rodri',
                                    style: TextStyle(color: Colors.white)),
                              ),
                            ],
                          )),
                    ],
                  ),
                ),
              ],
            )));
  }
}
