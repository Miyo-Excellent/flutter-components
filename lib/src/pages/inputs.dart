import 'package:flutter/material.dart';

class Inputs extends StatefulWidget {
  @override
  _InputsState createState() => _InputsState();
}

class _InputsState extends State<Inputs> {
  String _name = '';
  String _email = '';
  String _password = '';
  String _date = '';
  String _from = 'Antioquia, Medellín';

  final List<String> _dropDownItems = <String>[
    'Amazonas, Leticia',
    'Antioquia, Medellín',
    'Arauca, Arauca',
    'Atlántico, Barranquilla',
    'Bolívar, Cartagena de Indias',
    'Boyacá, Tunja',
    'Caldas, Manizales',
    'Caquetá, Florencia',
    'Casanare, Yopal',
    'Cauca, Popayán',
  ];

  final TextEditingController _inputDateController =
      new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inputs'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        children: <Widget>[
          TextField(
            //  autofocus: true,
            decoration: InputDecoration(
                counter: Text(_name.length.toString()),
                hintText: 'Name: ',
                helperText: 'Only your first name',
                //  icon: Icon(Icons.assignment),
                prefixIcon: Icon(Icons.person),
                suffixIcon: Icon(Icons.widgets),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0))),
            textCapitalization: TextCapitalization.sentences,
            onChanged: (String text) => setState(() => _name = text),
          ),
          TextField(
            //  autofocus: true,
            decoration: InputDecoration(
                counter: Text(_email.length.toString()),
                hintText: 'Email: ',
                helperText: 'example@emial.com',
                //  icon: Icon(Icons.assignment),
                prefixIcon: Icon(Icons.alternate_email),
                suffixIcon: Icon(Icons.accessibility_new),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0))),
            //  textCapitalization: TextCapitalization.sentences,
            onChanged: (String text) => setState(() => _email = text),
          ),
          TextField(
            //  autofocus: true,
            obscureText: true,
            decoration: InputDecoration(
                counter: Text(_password.length.toString()),
                hintText: 'password: ',
                helperText: 'insert your account password',
                //  icon: Icon(Icons.adjust),
                prefixIcon: Icon(Icons.dialpad),
                suffixIcon: Icon(Icons.lock),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0))),
            //  textCapitalization: TextCapitalization.sentences,
            onChanged: (String text) => setState(() => _password = text),
          ),
          TextField(
            //  autofocus: true,
            //  obscureText: true,
            controller: _inputDateController,
            enableInteractiveSelection: false,
            decoration: InputDecoration(
                counter: Text(_date.length.toString()),
                hintText: 'Date Of Birth: ',
                helperText: 'insert your date of birth',
                //  icon: Icon(Icons.adjust),
                prefixIcon: Icon(Icons.calendar_today),
                suffixIcon: Icon(Icons.recent_actors),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0))),
            //  textCapitalization: TextCapitalization.sentences,
            onTap: () async {
              FocusScope.of(context).requestFocus(new FocusNode());

              DateTime picked = await showDatePicker(
                  initialDatePickerMode: DatePickerMode.year,
                  context: context,
                  initialDate: new DateTime.now(),
                  firstDate: new DateTime(1970),
                  lastDate: new DateTime(2050),
                  locale: Locale('es', 'ES'));

              if (picked != null)
                setState(() {
                  _date = picked.toUtc().toString();

                  _inputDateController.text = _date;
                });
            },
          ),
          Divider(height: 5.0, thickness: 1.0, color: Colors.black26),
          Row(
            children: <Widget>[
              Expanded(
                child: Container(),
              ),
              DropdownButton(
                value: _from,
                icon: Icon(Icons.location_city),
                onChanged: (String item) => setState(() => _from = item),
                items: _dropDownItems
                    .map((item) => DropdownMenuItem(
                          child: Text(item),
                          value: item,
                        ))
                    .toList(),
              ),
              Expanded(
                child: Container(),
              ),
            ],
          ),
          Divider(height: 5.0, thickness: 1.0, color: Colors.black26),
          ListTile(
            title: Text(
              'Name: $_name',
              style: TextStyle(
                  color: Colors.black54,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            title: Text(
              'Email: $_email',
              style: TextStyle(
                  color: Colors.black54,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500),
            ),
          ),
          ListTile(
            title: Text(
              'Date Of Birth: $_date',
              style: TextStyle(
                  color: Colors.black54,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500),
            ),
          ),
          ListTile(
            title: Text(
              'From: $_from',
              style: TextStyle(
                  color: Colors.black54,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500),
            ),
          )
        ],
      ),
    );
  }
}
