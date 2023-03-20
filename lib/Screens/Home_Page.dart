import 'package:flutter/material.dart';
import 'package:insoil_app1/Services/Consultancy.dart';
import 'package:insoil_app1/Services/Fertilizer.dart';
import 'package:insoil_app1/Services/dashboard.dart';
import 'package:insoil_app1/Services/our_product.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../components.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({Key? key}) : super(key: key);

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  List<String> titles = ['Our Device','Consultancy','Fertilizers','DashBoard'];
  List<String> images = [
    'https://img.freepik.com/premium-photo/arabic-lantern-with-burning-candle-night-sky-with-waning-crecent-moon-background-ramadan-generative-ai_796128-603.jpg?w=1380',
    'https://img.freepik.com/premium-photo/arabic-lantern-with-burning-candle-night-sky-with-waning-crecent-moon-background-ramadan-generative-ai_796128-603.jpg?w=1380',
    'https://img.freepik.com/premium-photo/arabic-lantern-with-burning-candle-night-sky-with-waning-crecent-moon-background-ramadan-generative-ai_796128-603.jpg?w=1380',
    'https://img.freepik.com/premium-photo/arabic-lantern-with-burning-candle-night-sky-with-waning-crecent-moon-background-ramadan-generative-ai_796128-603.jpg?w=1380',
  ];
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var width = size.width;
    var height = size.height;
    var cardheight = height * 0.35;
    final Uri _url = Uri.parse('https://form.jotform.com/222788095072059');
    Future<void> _launchUrl() async {
      if (!await launchUrl(_url)) {
        throw 'Could not launch $_url';
      }
    }

    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: const Text("InSoil"),
          ),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Text(
                "Our Services ",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    fontStyle: FontStyle.italic),
              ),
              const SizedBox(
                height: 20,
              ),
              GridView.count(
                crossAxisCount: 2,
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 10.0,
              childAspectRatio: 0.6,
              shrinkWrap: true,
              children: List.generate(4, (index){
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 3.0 , vertical: 8.0),
                  child: HomePageCardWidget(
                    image: images[index],
                    title: titles[index],
                    ontap: (index == 0)? (){
                      _launchUrl();
                    } : (index == 1)? (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> Consult()));
                    } : (index == 2)? (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> Fertilizer_Page()));
                    } : (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> dashboard()));
                    },
                  ),
                );
              }),),
            ],
          ),
        ),
      ),
    );
  }

  Widget Service(String ser, String url) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsetsDirectional.only(start: 5),
        child: MaterialButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Product()),
            );
          },
          child: Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.grey[300],
            ),
            child: const Padding(
              padding: EdgeInsetsDirectional.only(top: 190),
              child: Center(
                  child: Text(
                "Our device ",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    fontStyle: FontStyle.italic),
              )),
            ),
          ),
        ),
      ),
    );
  }
}



//Book a visit
//


