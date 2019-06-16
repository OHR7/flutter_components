import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  
  String _name = '';
  String _email = '';
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inputs'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        children: <Widget>[
          _crateInput(),
          Divider(),
          _createEmail(),
          Divider(),
          _createPassword(),
          Divider(),
          _createPerson(),
        ],
      ),
    );
  }

  Widget _crateInput() {

    return TextField(
      autofocus: true,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.0)
        ),
        counter: Text('Letters ${_name.length}'),
        hintText: 'Hint text',
        labelText: 'Label',
        helperText: 'Helper text',
        suffixIcon: Icon(Icons.accessibility),
        icon: Icon(Icons.account_circle)
      ),
      onChanged: (value) {
        setState(() {
          _name = value;
          print(value);
        });
      },
    );

  }

  Widget _createPerson() {

    return ListTile(
      title: Text('Name is: $_name'),
      subtitle: Text('Email is: $_email'),
    );
  }

  Widget _createEmail() {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.0)
        ),
        counter: Text('Letters ${_name.length}'),
        hintText: 'Email',
        labelText: 'Email',
        suffixIcon: Icon(Icons.alternate_email),
        icon: Icon(Icons.email)
      ),
      onChanged: (value) => setState(() {
          _email = value;
      })
    );
  }

  Widget _createPassword() {
   return TextField(
      obscureText: true,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.0)
        ),
        counter: Text('Letters ${_name.length}'),
        hintText: 'Password',
        labelText: 'Password',
        suffixIcon: Icon(Icons.lock),
        icon: Icon(Icons.lock)
      ),
      onChanged: (value) {}
    ); 
  }
}