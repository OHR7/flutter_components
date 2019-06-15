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
          _cardType1(),
          SizedBox(height: 30.0),
          _cardType2(),
          SizedBox(height: 30.0),
          _cardType2(),
          SizedBox(height: 30.0),
          _cardType2(),
          SizedBox(height: 30.0),
          _cardType2(),
          SizedBox(height: 30.0),
          _cardType2(),
          SizedBox(height: 30.0),
          _cardType2(),
          SizedBox(height: 30.0),
          _cardType2(),
        ],
      ),
    );
  }

  _cardType2(){

    final card =  Container(
      child: Column(
        children: <Widget>[
          FadeInImage(
            image: NetworkImage('https://static.photocdn.pt/images/articles/2017_1/iStock-545347988.jpg'),
            placeholder: AssetImage('assets/jar-loading.gif'),
            fadeInDuration: Duration( milliseconds: 200 ),
            height: 300.0,
            fit: BoxFit.cover,
          ),
          // Image(
          //   image: NetworkImage('https://static.photocdn.pt/images/articles/2017_1/iStock-545347988.jpg'),
          // ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text('No tengo idea')
          )
        ],
      ),
    );

    return Container(
      child: ClipRRect(
        child: card,
        borderRadius: BorderRadius.circular(30.0),
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10.0,
            spreadRadius: 2.0,
            offset: Offset(2.0, 10.0)
          )
        ] ,
        borderRadius: BorderRadius.circular(30.0),
      ),
    );

  }

  _cardType1() {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0)
      ),
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