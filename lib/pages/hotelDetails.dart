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
        crossAxisAlignment: CrossAxisAlignment.stretch,
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
              Text(
                '( Open/Close time )',
                style: TextStyle(
                  fontFamily: "Roboto",
                  fontWeight: FontWeight.bold,
                  fontSize: Theme.of(context).textTheme.bodyText1?.fontSize,
                  color: Theme.of(context).colorScheme.onSurface,
                  // clearly legible color according to the background
                ),
              ),
              Text(
                '( Visited sticker )',
                style: TextStyle(
                  fontFamily: "Roboto",
                  fontWeight: FontWeight.bold,
                  fontSize: Theme.of(context).textTheme.bodyText1?.fontSize,
                  color: Theme.of(context).colorScheme.onSurface,
                  // clearly legible color according to the background
                ),
              ),
            ],
          ),
          SizedBox(
            width: double.infinity,
            height: 48.0,
          ),
          Card(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(12.0),
                  child: Text(
                    'Description',
                    style: TextStyle(
                      fontFamily: "Roboto",
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      fontSize: Theme.of(context).textTheme.headline5?.fontSize,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(21.0),
                  child: Text(
                    'Hotel\'s description goes here. The hotel can describe what it is known for what is it\'s most populat dish and so on... Also multiple photos can be added to give a better idea to the users',
                    style: TextStyle(
                      fontFamily: "Roboto",
                      fontWeight: FontWeight.normal,
                      fontSize: Theme.of(context).textTheme.headline6?.fontSize,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: double.infinity,
            height: 48.0,
          ),
          Card(
            child: Column(
              children: [
                Text(
                  "Comments",
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    fontSize: Theme.of(context).textTheme.headline5?.fontSize,
                  ),
                ),
                Container(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
