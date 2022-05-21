import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:uts_flutter/ui/warna.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);
  static const TextStyle judul =
      TextStyle(color: Color.fromARGB(233, 255, 255, 255));
  static const TextStyle info =
      TextStyle(fontWeight: FontWeight.w500, fontSize: 20);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Profil',
          style: judul,
        ),
        backgroundColor: darkBlue,
        shadowColor: Colors.black,
        elevation: 20,
      ),
      body: Center(
          child: Column(
        children: [
          Container(
            height: 650,
            width: 500,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.blue, Colors.white70],
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 20,
                ),
                Container(
                    height: 150,
                    width: 150,
                    child: const CircleAvatar(
                      backgroundImage: AssetImage("assets/img/me.png"),
                      backgroundColor: Color.fromARGB(169, 232, 231, 221),
                    )),
                Text(
                  'Yoni Tribber',
                  style: GoogleFonts.comfortaa(
                      textStyle: const TextStyle(
                          fontWeight: FontWeight.w700, fontSize: 30)),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  margin: const EdgeInsets.all(15),
                  height: 220,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: const BorderRadius.all(Radius.circular(30)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.7),
                        spreadRadius: 9,
                        blurRadius: 9,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('20200120052', style: info),
                        Text('Teknik Informatika IS 1/4', style: info),
                        Text('Mobile Programing', style: info),
                      ]),
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
