import 'dart:async';

import 'package:flutter/material.dart';

class Horloge extends StatefulWidget {
  const Horloge({super.key});

  @override
  State<Horloge> createState() => _HorlogeState();
}

class _HorlogeState extends State<Horloge> {
  String _hCourant = "00";
  String _mCourant = "00";
  String _sCourant = "00";
  late Timer _timerHorloge;
  bool _startHorloge = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Montre Petit camp villageP',
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w400,
                color: Colors.blueGrey,
              )),
          backgroundColor: const Color.fromARGB(255, 253, 189, 189),
        ),
        body: Center(
          child: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.topRight,
                    colors: [
                  Color(0xFFe66465),
                  Color(0xFF9198e5),
                  Colors.white
                ])),
            child: buildColoneCentral(),
          ),
        ));
  }

  ElevatedButton buildStartButton() {
    return ElevatedButton(
      onPressed: () {
        if (_startHorloge == false) _startHorloge = !_startHorloge;
        demarrerHorloge();
      },
      child: Icon(
        Icons.play_arrow,
        size: 25,
        color: Colors.white,
      ),
      style: ElevatedButton.styleFrom(
          backgroundColor: Colors.green, minimumSize: const Size(100, 50)),
    );
  }

  ElevatedButton buildPauseButton() {
    return ElevatedButton(
      onPressed: () {
        if (_startHorloge == true) _startHorloge = !_startHorloge;
        arretHorloge();
      },
      child: Icon(
        Icons.pause,
        size: 25,
        color: Colors.white,
      ),
      style: ElevatedButton.styleFrom(
          backgroundColor: Colors.red, minimumSize: const Size(100, 50)),
    );
  }

  Row builLigneControle() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [buildStartButton(), buildPauseButton()],
    );
  }

  Widget buildAffichageHoraire(value, texte) {
    return Container(
      height: 150,
      width: 100,
      margin: const EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('$value',
              style: const TextStyle(
                  color: Colors.blueGrey,
                  fontSize: 80,
                  fontWeight: FontWeight.w500)),
          Text(
            '$texte',
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
          )
        ],
      ),
    );
  }

  Row buildHeurCourant() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        buildAffichageHoraire(_hCourant, "Heures"),
        buildAffichageHoraire(_mCourant, "minutes"),
        buildAffichageHoraire(_sCourant, "secondes")
      ],
    );
  }

  Column buildColoneCentral() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [buildHeurCourant(), builLigneControle()],
    );
  }

  void demarrerHorloge() {
    if (_startHorloge == true) {
      _timerHorloge = Timer.periodic(Duration(seconds: 1), (timer) {
        setState(() {
          _hCourant = DateTime.now().hour.toString().padLeft(2, '0');
          _mCourant = DateTime.now().minute.toString().padLeft(2, '0');
          _sCourant = DateTime.now().second.toString().padLeft(2, '0');
        });
      });
    }
  }

  void arretHorloge() {
    if (_startHorloge == false) {
      _timerHorloge.cancel();
    }
  }
}
