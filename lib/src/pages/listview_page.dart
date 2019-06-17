import 'dart:async';

import 'package:flutter/material.dart';


class ListPage extends StatefulWidget {
  ListPage({Key key}) : super(key: key);

  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {

  ScrollController _scrollController = new ScrollController();
  
  List<int> _numberList = new List();
  int _lastItem = 0;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _add10();

    _scrollController.addListener( () {
      if (_scrollController.position.pixels == _scrollController.position.maxScrollExtent) {
        // _add10();
        fetchData();
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lists'),
      ),
      body: Stack(
        children: <Widget>[
          _createList(),
          _crearLoading(),
        ],
      )
    );
  }

  Widget _createList() {
    return RefreshIndicator(
      onRefresh: obtainInitialPage,
      child: ListView.builder(
        controller: _scrollController,
        itemCount: _numberList.length,
        itemBuilder: (BuildContext context, int index) {
          final image = _numberList[index];
            return FadeInImage(
              image: NetworkImage('https://picsum.photos/id/$image/500/300'),
              placeholder: AssetImage('assets/jar-loading.gif'),
            );
        },
      ),
    );
  }

  Future<Null> obtainInitialPage() async {
    final duration = new Duration( seconds: 2 );
    new Timer(duration, () {
      _numberList.clear();
      _lastItem++;
      _add10();
    });

    return Future.delayed(duration);
  }


  void _add10() {
    for (var i = 0; i < 10; i++) {
      _lastItem++;
      _numberList.add(_lastItem);
    }

    setState(() {
      
    });
  }

  Future<Null> fetchData() async {
    _isLoading =true;
    setState(() {});

    final duration = new Duration(seconds: 2);
    new Timer( duration, httpResponse );

  }

  void httpResponse() {
    _isLoading = false;

    _scrollController.animateTo(
      _scrollController.position.pixels + 100,
      curve: Curves.fastOutSlowIn,
      duration: Duration(
        milliseconds: 250
      )
    );
    _add10();
  }

  Widget _crearLoading() {
    if ( _isLoading ) {
      return Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircularProgressIndicator(),
            ],
          ),
          SizedBox(
            height: 15.0,
          )
        ],
      );
    } else {
      return Container();
    }
  }

}