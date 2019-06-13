import 'package:flutter/material.dart';


class HomePageTemp extends StatelessWidget {

  final options = ['One', 'Two','Three','Four','Five','Six'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Components Temp'),
      ),
      body: ListView(
        // children: _createItems(),
        children: _createItemsShort(),
      ),
    );
  }

  List<Widget> _createItems() {

    List<Widget> list = new List<Widget>();

    for (String opt in options) {
      final tempWidget = ListTile(
        title: Text(opt),
      );

      list..add( tempWidget )
          ..add(Divider());
    }

    return list;
  }

  List<Widget> _createItemsShort() {

    return options.map( (opt) {
      
      return Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.account_balance_wallet),
            trailing: Icon(Icons.keyboard_arrow_right),
            subtitle: Text('Subtext'),
            title: Text(opt),
            onTap: (){},
          ),
          Divider()
        ],
      );

    }).toList();

  }

}