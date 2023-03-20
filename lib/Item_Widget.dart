import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ItemWidget extends StatelessWidget {
  String title;
  String image;
  String price;
  ItemWidget({Key? key, required this.title, required this.image, required this.price})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.18,
      child: Card(
        elevation: 5.0,
          shadowColor: Colors.green.shade500,
          //mistake
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        //

        Flexible(
          flex: 2,
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Image.network(
              image,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Flexible(
          flex: 2,
          child: Center(
            child: ListTile(
              title: Padding(
                padding: const EdgeInsets.symmetric(vertical: 7.0),
                child: Text(
                  title,
                  style: const TextStyle(
                      fontSize: 21,
                      color: Colors.black,
                      fontFamily: 'Ubuntu',
                      fontStyle: FontStyle.normal,
                  ),
                ),
              ),
              subtitle: Text(price),
            ),
          ),
        ),
      ])),
    );
  }
}
