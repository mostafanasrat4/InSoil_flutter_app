import 'package:flutter/material.dart';
import 'package:insoil_app1/Item_Widget.dart';

// ignore: camel_case_types
class Fertilizer_Page extends StatefulWidget {
  const Fertilizer_Page({Key? key}) : super(key: key);

  @override
  State<Fertilizer_Page> createState() => _Fertilizer_PageState();
}

// ignore: camel_case_types
class _Fertilizer_PageState extends State<Fertilizer_Page> {
  @override
  Widget build(BuildContext context) {
    List<String> Names = [
      "Sample1",
      "Sample2",
      "Sample3",
      "Sample4",
      "Sample5",
      "Sample6",
      "Sample7",
      "Sample8"
    ];
    List<String> images = [
      "https://m.media-amazon.com/images/I/81+DOyVIA2L._SL1500_.jpg",
      "https://www.foodicine.co.in/img/products/seaweed-fertilizer.jpg",
      "https://kellogggarden.com/wp-content/uploads/2020/02/Products_GB_Organics_Fertilizers.jpg",
      "http://katekfertilizers.com.au/wp-content/uploads/2017/07/Super-Growth-Bag-NEW-PNG.png",
      "https://www.yara.ph/siteassets/philippines/01-yaramila-f-2.jpg",
      "https://evergrowfert.com/wp-content/uploads/2020/01/assets__up__file-1508672699-KCESGP.jpg",
      "https://www.alphaoneinc.com/wp-content/uploads/2022/03/Nat-Organic-Product.png",
      "http://statnano.com/filereader.php?p1=main_c4ca4238a0b923820dcc509a6f75849b586.png&p2=pr_brand&p3=21&p4=2"
    ];
    List<String> Prices = [
      "200 LE",
      "150 LE",
      "275 LE",
      "120 LE",
      "200 LE",
      "300 LE",
      "350 LE",
      "325 LE"
    ];
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(title: const Text(
        'Fertilizers'
      )),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "Recommended Fertilizers ",
                  style: TextStyle(
                    fontFamily: 'Ubuntu',
                      fontWeight: FontWeight.bold,
                      fontSize: 20,),
                ),
              ],
            ),
            Padding(padding: EdgeInsets.symmetric(vertical: 10)),
            Expanded(
                child: ListView.separated(
                  physics: BouncingScrollPhysics(),
              primary: false,
              shrinkWrap: false,
              itemBuilder: (context, index) {
                return ItemWidget(
                  image: images[index],
                  title: Names[index],
                  price: Prices[index],
                );
              },
                  separatorBuilder: (context, index)=> SizedBox(height: 10.0,),
              itemCount: Names.length,
            )),
          ],
        ),
      ),
    );
  }
}
