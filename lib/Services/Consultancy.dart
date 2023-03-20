import 'dart:core';
import 'package:flutter/material.dart';
import 'package:insoil_app1/Screens/Phone_consult.dart';
import 'package:insoil_app1/components.dart';

class Expert{
  String name;
  String title;
  String image;
  double rating;
  String phone;

  Expert(this.name, this.title, this.image, this.rating,this.phone);

}
class Consult extends StatefulWidget {
  const Consult({Key? key}) : super(key: key);

  @override
  State<Consult> createState() => _ConsultState();
}

class _ConsultState extends State<Consult> {
  List<Expert> experts = [
    Expert('Mohamed Elsayed', 'Agricultural Engineer', 'https://img.freepik.com/premium-photo/arabic-lantern-with-burning-candle-night-sky-with-waning-crecent-moon-background-ramadan-generative-ai_796128-603.jpg?w=1380'
        , 3.5, '01095986878'),
    Expert('Hany Emad ', 'Agricultural Specialist', 'https://img.freepik.com/premium-photo/arabic-lantern-with-burning-candle-night-sky-with-waning-crecent-moon-background-ramadan-generative-ai_796128-603.jpg?w=1380'
        , 5, '01095986878'),
    Expert('Mohamed Elsayed', 'Agricultural Engineer', 'https://img.freepik.com/premium-photo/arabic-lantern-with-burning-candle-night-sky-with-waning-crecent-moon-background-ramadan-generative-ai_796128-603.jpg?w=1380'
        , 3.5, '01095986878'),
    Expert('Hany Emad ', 'Agricultural Specialist', 'https://img.freepik.com/premium-photo/arabic-lantern-with-burning-candle-night-sky-with-waning-crecent-moon-background-ramadan-generative-ai_796128-603.jpg?w=1380'
        , 5, '01095986878'),
    Expert('Mohamed Elsayed', 'Agricultural Engineer', 'https://img.freepik.com/premium-photo/arabic-lantern-with-burning-candle-night-sky-with-waning-crecent-moon-background-ramadan-generative-ai_796128-603.jpg?w=1380'
        , 3.5, '01095986878'),
    Expert('Hany Emad ', 'Agricultural Specialist', 'https://img.freepik.com/premium-photo/arabic-lantern-with-burning-candle-night-sky-with-waning-crecent-moon-background-ramadan-generative-ai_796128-603.jpg?w=1380'
        , 5, '01095986878'),
    Expert('Mohamed Elsayed', 'Agricultural Engineer', 'https://img.freepik.com/premium-photo/arabic-lantern-with-burning-candle-night-sky-with-waning-crecent-moon-background-ramadan-generative-ai_796128-603.jpg?w=1380'
        , 3.5, '01095986878'),
    Expert('Hany Emad ', 'Agricultural Specialist', 'https://img.freepik.com/premium-photo/arabic-lantern-with-burning-candle-night-sky-with-waning-crecent-moon-background-ramadan-generative-ai_796128-603.jpg?w=1380'
        , 5, '01095986878'),
    Expert('Mohamed Elsayed', 'Agricultural Engineer', 'https://img.freepik.com/premium-photo/arabic-lantern-with-burning-candle-night-sky-with-waning-crecent-moon-background-ramadan-generative-ai_796128-603.jpg?w=1380'
        , 3.5, '01095986878'),
    Expert('Hany Emad', 'Agricultural Specialist', 'https://img.freepik.com/premium-photo/arabic-lantern-with-burning-candle-night-sky-with-waning-crecent-moon-background-ramadan-generative-ai_796128-603.jpg?w=1380'
        , 5, '01095986878'),
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var width = size.width;
    var height = size.height;
    var cardheight = height * 0.35;
    var cardwidth = width * 0.45;
    Container Expert(String Name) {
      return Container(
        height: cardheight,
        width: cardwidth,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
        ),
        child: Column(
          children: [
            Icon(
              Icons.person,
              size: 150,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                Name,
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    fontStyle: FontStyle.italic),
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(title: const Text("Consultancy")),
      body: ExpertBuilder(experts, context),
    );
  }
}

