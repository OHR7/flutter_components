import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  const CardPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          _cardType1()
        ],
      ),
    );
  }

  _cardType1() {
    return Card(
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.photo_album, color: Colors.blue),
            title: Text('Card Title'),
            subtitle: Text('Card Description that is very log to see new features in the card app and page.'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                child: Text('Cancel'),
                onPressed: () {

                },
              ),
              FlatButton(
                child: Text('Ok'),
                onPressed: () {

                },
              )
            ],
          )
        ],
      ),
    );
  }

}