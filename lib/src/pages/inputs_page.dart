import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  
  String _name = '';
  String _email = '';
  String _date = '';
  String _optionSelected = 'fly';

  List<String> _powers = ['fly', 'X-Ray', 'Strenght'];

  TextEditingController _inputFieldDateController = new TextEditingController();
  
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
          _createDate(context),
          Divider(),
          _createDropdown(),
          Divider(),
          _createPerson(),
        ],
      ),
    );
  }

  Widget _crateInput() {

    return TextField(
      // autofocus: true,
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
      trailing: Text(_optionSelected),
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

  Widget _createDate( BuildContext context ) {
    return TextField(
      enableInteractiveSelection: false,
      controller: _inputFieldDateController,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.0)
        ),
        hintText: 'Birth Date',
        labelText: 'Birth Date',
        suffixIcon: Icon(Icons.calendar_today),
        icon: Icon(Icons.calendar_today)
      ),
      onTap: () {

        FocusScope.of(context).requestFocus(new FocusNode());
        _selectDate(context);

      },
    ); 
  }

  _selectDate(BuildContext context) async {
    DateTime picked = await showDatePicker(
      context: context,
      initialDate: new DateTime.now(),
      firstDate: new DateTime(2018),
      lastDate: new DateTime(2025),
      locale: Locale('es', 'ES')
    );

    if ( picked != null ) {
      setState(() {
        _date = picked.toString();
        _inputFieldDateController.text = _date;
      });
    }
  }

  List<DropdownMenuItem<String>> getDropdownOptions() {
    List<DropdownMenuItem<String>> list = new List();

    _powers.forEach( (power) {
      list.add(DropdownMenuItem(
        child: Text(power),
        value: power,
      ));
    });

    return list;
  }
  
  Widget _createDropdown() {

    return Row(
      children: <Widget>[
        Icon(Icons.select_all),
        SizedBox(width: 30.0),
        Expanded(
          child: DropdownButton(
            value: _optionSelected,
            items: getDropdownOptions(),
            onChanged: (opt) {
              setState(() {
                _optionSelected = opt;
              });
            },
          ),
        ),
      ],
    );
  

  }
}