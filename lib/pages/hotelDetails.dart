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
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(183),
        child: AppBar(
          title: Text(widget.title),
          flexibleSpace: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: Image.network(
                  "https://images.unsplash.com/photo-1626777552726-4a6b54c97e46?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=80",
                  fit: BoxFit.cover,
                  width: double.infinity,
                ).image,
              ),
            ),
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: 24.0,
            width: double.infinity,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
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
            elevation: 0,
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
              ],
            ),
          ),
          Expanded(
            child: ListView(
              physics: BouncingScrollPhysics(
                  parent: AlwaysScrollableScrollPhysics()),
              children: [
                ListTile(
                  tileColor: Colors.white,
                  leading: Icon(Icons.person),
                  title: Text("User's name"),
                  subtitle: Text("User's comment"),
                  trailing: PopupMenuButton(
                    // onSelected: (){
                    // handle what happens after clicking menu items
                    // },
                    itemBuilder: (BuildContext context) {
                      return {'Report'}
                          .map(
                            (String text) => PopupMenuItem(
                              value: text,
                              child: Row(
                                children: [
                                  Icon(Icons.flag_outlined),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Text(text),
                                ],
                              ),
                            ),
                          )
                          .toList();
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
