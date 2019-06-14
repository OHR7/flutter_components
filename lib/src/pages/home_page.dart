import 'package:flutter/material.dart';
// import 'package:flutter_components/src/pages/alert_page.dart';
import 'package:flutter_components/src/providers/menu_provider.dart';
import 'package:flutter_components/src/utils/icon_str_util.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Components'),
      ),
      body: _list(),
    );
  }

  Widget _list() {

    // print(menuProvider.options);
    // menuProvider.loadData()

    return FutureBuilder(
      future: menuProvider.loadData(),
      initialData: [],
      builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot){
        
        return ListView(
          children: _listItems(snapshot.data, context),
        );
      },

    );

  }

  List<Widget>_listItems( List<dynamic> data, BuildContext context ) {

    final List<Widget> options = [];

    data.forEach( (opt) {
      final widgetTemp = ListTile(
        title: Text(opt['texto']),
        leading: getIcon(opt['icon']),
        trailing: Icon(Icons.keyboard_arrow_right, color: Colors.blue),
        onTap: () {

          Navigator.pushNamed(context, opt['ruta']);

          // final route = MaterialPageRoute( 
          //   builder: ( context ) =>  AlertPage()
          // );
          // Navigator.push(context, route);
        },
      );

    options..add( widgetTemp )
           ..add( Divider() );
    });

    return options;

  }
}