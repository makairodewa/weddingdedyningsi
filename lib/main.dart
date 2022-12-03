import 'package:audioplayers/audioplayers.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:date_count_down/date_count_down.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CoverPage(),
    );
  }
}

class CoverPage extends StatelessWidget {
  const CoverPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/img/bg1.jpg"),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(Colors.black54, BlendMode.darken),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage("assets/img/img5.jpg"),
              foregroundColor: Colors.black,
              backgroundColor: Colors.black26,
            ),
            const Text(
              "Dedy & Ningsih",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 48,
                  fontFamily: "Playball",
                  fontWeight: FontWeight.w400),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Kepada Bapak/Ibu/Saudara/i",
              style: TextStyle(
                  color: Colors.white, fontSize: 18, fontFamily: "Assistant"),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Kami Mengundang Anda Untuk Hadir Di Acara Pernikahan Kami.",
              style: TextStyle(
                  color: Colors.white, fontSize: 16, fontFamily: "Assistant"),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 100,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => const MainPages()));
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.pink.shade900,
              ),
              child: const Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  "Buka Undangan",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontFamily: "Assistant"),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MainPages extends StatefulWidget {
  const MainPages({Key? key}) : super(key: key);

  @override
  State<MainPages> createState() => _MainPagesState();
}

class _MainPagesState extends State<MainPages> {
  TextEditingController namaController = TextEditingController();
  String fullName = '';

  List<String> images = [
    "assets/img/img1.jpg",
    "assets/img/img2.jpg",
    "assets/img/img3.jpg",
    "assets/img/img4.jpg",
    "assets/img/img5.jpg",
    "assets/img/img6.jpg",
    "assets/img/img7.jpg",
    "assets/img/img8.jpg",
    "assets/img/img9.jpg",
    "assets/img/img10.jpg",
  ];
  bool isPlay = false;
  final player = AudioPlayer();

  static void navigateTo(String url) async {
    var uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      // ignore: deprecated_member_use
      await launch(uri.toString());
    } else {
      throw 'Could not launch ${uri.toString()}';
    }
  }

  @override
  void initState() {
    super.initState();
    player.play(AssetSource('music/bgmusic.mp3'));
    isPlay = true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/img/img5.jpg"),
                  fit: BoxFit.cover,
                  colorFilter:
                      ColorFilter.mode(Colors.black54, BlendMode.darken),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    "Dedy & Ningsih",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 48,
                        fontFamily: "Playball",
                        fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Akan segera melangsungkan pernikahan",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: "Assistant",
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const Text(
                    "Minggu, 11 Desember 2022",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: "Assistant"),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 2,
                  ),
                  CountDownText(
                    due: DateTime.parse("2022-12-11 14:00:00"),
                    finishedText: "Done",
                    daysTextLong: " Hari ",
                    hoursTextLong: " Jam ",
                    minutesTextLong: " Menit ",
                    secondsTextLong: " Detik ",
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                        fontFamily: "Assistant",
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Container(
              decoration: const BoxDecoration(color: Colors.white),
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: Column(
                children: [
                  const Text(
                    "Tuhan membuat segala sesuatu indah pada waktunya indah saat Dia mempertemukan, indah saat Dia menumbuhkan kasih, dan indah saat Dia mempersatukan putra-putri kami dalam pernikahan kudus",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                        fontFamily: "Bodebeck"),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Column(
                    children: const [
                      CircleAvatar(
                        radius: 100,
                        backgroundImage: AssetImage("assets/img/alone1.jpg"),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Sandedi Umbu Zasa, S.Kep, Ns",
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: "Playball",
                            fontSize: 22,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Putra dari",
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: "Assistant",
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Bpk Ananias Ngongo Bulu (Alm) & Ibu Yohana Dada Milla",
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: "Assistant",
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 60),
                    child: Text(
                      "dengan",
                      style: TextStyle(
                          color: Colors.amberAccent,
                          fontFamily: "Playball",
                          fontSize: 40,
                          fontWeight: FontWeight.normal),
                    ),
                  ),
                  Column(
                    children: const [
                      CircleAvatar(
                        radius: 100,
                        backgroundImage: AssetImage("assets/img/alone.jpg"),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Hermin Ningsih Susanti Ege Ate, S.Pd",
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: "Playball",
                            fontSize: 22,
                            fontWeight: FontWeight.normal),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Putri dari",
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: "Assistant",
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Bpk Bili Umbu Rey (Alm) & Ibu Yohana Dairo Bili",
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: "Assistant",
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                        maxLines: 3,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/img/bg2.jpg"),
                  fit: BoxFit.cover,
                  colorFilter:
                      ColorFilter.mode(Colors.black54, BlendMode.darken),
                ),
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: 40,
                  ),
                  const Text(
                    "Undangan dan Acara",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Assistant",
                        fontSize: 25),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      "Bahagia rasanya apabila bapak/ibu saudara/ri berkenan hadir dan memberikan doa restu kepada kami. kami mengundang bapak/ibu saudara/ri untuk hadir dalam acara pemberkatan dan resepsi pernikahan Kami",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: "Bodebeck",
                          fontWeight: FontWeight.bold),
                      maxLines: 4,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(
                    height: 70,
                  ),
                  cardUdangan(
                      judul: "PEMBERKATAN PERNIKAHAN",
                      hari: "Minggu",
                      tgl: "11 Desember 2022",
                      pukul: "Pukul",
                      pukulJam: "08:00 WITA - Selesai",
                      lokasi: "Bertempat di GKS Wee Kombaka"),
                  cardUdangan(
                      judul: "RESEPSI PERNIKAHAN",
                      hari: "Minggu",
                      tgl: "11 Desember 2022",
                      pukul: "Pukul",
                      pukulJam: "14:00 WITA - Selesai",
                      lokasi: "Bertempat di GKS Wee Kombaka"),
                  const SizedBox(
                    height: 50,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 40),
                    decoration: const BoxDecoration(
                        gradient: LinearGradient(
                            colors: [
                          Color.fromARGB(255, 144, 72, 207),
                          Color.fromARGB(255, 177, 30, 138)
                        ],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight)),
                    child: Column(
                      children: const [
                        Text(
                          "Sehati Sepikiranlah kamu, dan hiduplah dalam damai sejahtera; maka Allah, sumber kasih dan damai sejahtera akan menyertai kamu.",
                          style: TextStyle(
                              fontFamily: "Bodebeck",
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          "2 Korintus 13:11",
                          style: TextStyle(
                              fontFamily: "Assistant",
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 40),
              child: Column(
                children: [
                  const Text(
                    "Photo Gallery",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Playball",
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CarouselSlider(
                    options: CarouselOptions(
                        height: 300.0,
                        autoPlay: true,
                        reverse: true,
                        enlargeCenterPage: true,
                        scrollPhysics: const ScrollPhysics()),
                    items: images.map((i) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Container(
                            width: MediaQuery.of(context).size.width,
                            margin: const EdgeInsets.symmetric(horizontal: 5.0),
                            decoration:
                                const BoxDecoration(color: Colors.white),
                            child: Image(
                              image: AssetImage(i),
                              fit: BoxFit.cover,
                            ),
                          );
                        },
                      );
                    }).toList(),
                  ),
                ],
              ),
            ),
            const Text(
              "Lokasi",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.normal,
                fontFamily: "Playball",
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () async {
                navigateTo(
                    "https://www.google.com/maps/dir/?api=1&destination=-9.500496160198542,119.15776253971354&mode=d");
              },
              child: Container(
                height: 200,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/img/mp.png"),
                        fit: BoxFit.cover),
                    gradient: LinearGradient(
                        colors: [Colors.black, Colors.white, Colors.black54])),
              ),
            ),
            const UcapanWidgets(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'Build with',
                        style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 12.0,
                            color: Color(0xFF162A49)),
                      ),
                      Icon(
                        Icons.favorite,
                        size: 15,
                        color: Colors.red,
                      ),
                      SizedBox(
                        width: 2,
                      ),
                      Text(
                        "And",
                        style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 12.0,
                            color: Color(0xFF162A49)),
                      ),
                      SizedBox(
                        width: 2,
                      ),
                      Icon(
                        Icons.coffee_outlined,
                        size: 15,
                      ),
                      SizedBox(
                        width: 2,
                      ),
                      Text(
                        "by Ranus Ate",
                        style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 12.0,
                            color: Color(0xFF162A49)),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                          height: 45.0,
                          width: 45.0,
                          child: Center(
                            child: Card(
                              elevation: 5.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    25.0), // half of height and width of Image
                              ),
                              child: IconButton(
                                icon: const Icon(
                                  Icons.whatsapp_rounded,
                                  color: Colors.green,
                                  size: 20.0,
                                ),
                                color: const Color(0xFF162A49),
                                onPressed: () {
                                  navigateTo(
                                      "https://api.whatsapp.com/send?phone=+6282247459503&text=Hallo Ranus");
                                },
                              ),
                            ),
                          )),
                      SizedBox(
                          height: 45.0,
                          width: 45.0,
                          child: Center(
                            child: Card(
                              elevation: 5.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    25.0), // half of height and width of Image
                              ),
                              child: IconButton(
                                icon: const FaIcon(
                                  FontAwesomeIcons.instagram,
                                  color: Color.fromARGB(255, 224, 44, 86),
                                ),
                                color: const Color(0xFF162A49),
                                onPressed: () {
                                  navigateTo(
                                      "https://www.instagram.com/ranus_ate/");
                                },
                              ),
                            ),
                          )),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: IconButton(
          onPressed: () {
            if (isPlay) {
              setState(() {
                player.stop();
                isPlay = false;
              });
            } else {
              setState(() {
                player.play(AssetSource('music/bgmusic.mp3'));
                isPlay = true;
              });
            }
          },
          icon: FaIcon(
            isPlay ? FontAwesomeIcons.pause : FontAwesomeIcons.play,
            color: Colors.amberAccent,
          )),
    );
  }

  Padding cardUdangan(
      {String? judul,
      String? hari,
      String? tgl,
      String? pukul,
      String? pukulJam,
      String? lokasi}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 20,
            ),
            Text(
              judul!,
              style: const TextStyle(
                  fontWeight: FontWeight.w700,
                  fontFamily: "Assistant",
                  color: Colors.black,
                  fontSize: 18),
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(Icons.date_range),
                    Text(hari!),
                    Text(tgl!)
                  ],
                ),
                Column(
                  children: [
                    const Icon(Icons.watch_later_outlined),
                    Text(pukul!),
                    Text(pukulJam!)
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              lokasi!,
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  fontFamily: "Assistant"),
            ),
            const SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class UcapanWidgets extends StatefulWidget {
  const UcapanWidgets({Key? key}) : super(key: key);

  @override
  State<UcapanWidgets> createState() => _UcapanWidgetsState();
}

class _UcapanWidgetsState extends State<UcapanWidgets> {
  late TextEditingController ucapanController;
  late TextEditingController namaController;
  @override
  void initState() {
    super.initState();
    namaController = TextEditingController();
    ucapanController = TextEditingController();
  }

  @override
  void dispose() {
    namaController.dispose();
    ucapanController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20, bottom: 20),
      decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
        Color.fromARGB(255, 142, 142, 148),
        Color.fromARGB(255, 174, 50, 179),
      ], begin: Alignment.topRight, end: Alignment.bottomRight)),
      child: Container(
        color: Colors.white,
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            const Text(
              "Kirim doa dan Ucapan",
              style: TextStyle(
                  fontFamily: "Assistant",
                  fontWeight: FontWeight.w600,
                  fontSize: 18),
            ),
            const SizedBox(
              height: 25,
            ),
            const Text(
              "Tuliskan sesuatu ucapan berupa harapan ataupun doa untuk kedua mempelai.",
              style: TextStyle(
                fontFamily: "Assistant",
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: namaController,
                decoration: const InputDecoration(hintText: "Nama"),
                style: const TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.normal,
                ),
                onChanged: (value) => value = namaController.text,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: ucapanController,
                  maxLines: 8, //or null
                  decoration: const InputDecoration.collapsed(
                      hintText: "Ucapan atau doa untuk kedua mempelai"),
                  onChanged: (value) => value = ucapanController.text,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: ElevatedButton(
                  onPressed: () {
                    if (namaController.text.isEmpty &&
                        ucapanController.text.isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                          shape: StadiumBorder(),
                          backgroundColor: Colors.red,
                          content:
                              Text("Nama & ucapan diisi dulu ya kak 😊😊")));
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          shape: const StadiumBorder(),
                          backgroundColor: Colors.teal,
                          content: Text(
                              "Terima kasih ${namaController.text}.....🙏🙏")));
                      namaController.text = "";
                      ucapanController.text = "";
                    }
                  },
                  child: const SizedBox(
                      height: 20,
                      child: Text(
                        "Kirim",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                        textAlign: TextAlign.center,
                      ))),
            )
          ],
        ),
      ),
    );
  }
}
