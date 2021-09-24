import 'package:flutter/material.dart';

class Hotel extends StatefulWidget {
  final String title;
  const Hotel({Key? key, required this.title}) : super(key: key);

  @override
  _HotelState createState() => _HotelState();
}

class _HotelState extends State<Hotel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Column(
          children: [
            Image.network(
              "https://images.unsplash.com/photo-1626777552726-4a6b54c97e46?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=80",
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 24.0,
              width: double.infinity,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                  text: TextSpan(
                    text: '( Open/Close time )',
                    style: TextStyle(
                      fontFamily: "Roboto",
                      fontWeight: FontWeight.bold,
                      fontSize: Theme.of(context).textTheme.bodyText1?.fontSize,
                      color: Theme.of(context).colorScheme.onSurface,
                      // clearly legible color according to the background
                    ),
                  ),
                ),
                RichText(
                  text: TextSpan(
                    text: '( Visited sticker )',
                    style: TextStyle(
                      fontFamily: "Roboto",
                      fontWeight: FontWeight.bold,
                      fontSize: Theme.of(context).textTheme.bodyText1?.fontSize,
                      color: Theme.of(context).colorScheme.onSurface,
                      // clearly legible color according to the background
                    ),
                  ),
                ),
              ],
            ),
            Card(
              child: Container(
                padding: EdgeInsets.all(12),
              ),
            )
          ],
        ));
  }
}
