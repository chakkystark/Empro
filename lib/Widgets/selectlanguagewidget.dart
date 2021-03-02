import 'package:flutter/material.dart';

class SelectLanguage extends StatefulWidget {
  SelectLanguage({Key key}) : super(key: key);

  @override
  _SelectLanguageState createState() => _SelectLanguageState();
}

class _SelectLanguageState extends State<SelectLanguage> {
  static const menuItems = <String>[
    'English',
    'Hindi',
  ];
  final List<DropdownMenuItem<String>> _dropDownMenuItems = menuItems
      .map(
        (String value) => DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        ),
      )
      .toList();

  String _btn1SelectedVal = 'English';

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Text(
          'Select Language',
          style: TextStyle(fontSize: 16),
        ),
        SizedBox(
          height: 5,
        ),
        Container(
          height: 35,
          width: 200,
          decoration: BoxDecoration(
              border: Border.all(
                color: Colors.blue[100],
              ),
              borderRadius: BorderRadius.circular(2)),
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
                focusColor: Colors.blue[200],
                onTap: () {},
                dropdownColor: Colors.grey[50],
                elevation: 50,
                value: _btn1SelectedVal,
                items: this._dropDownMenuItems,
                onChanged: (newValue) {
                  setState(() {
                    _btn1SelectedVal = newValue;
                  });
                }),
          ),
        )
      ],
    );
  }
}
