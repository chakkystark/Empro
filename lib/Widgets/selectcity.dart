import 'package:flutter/material.dart';

class SelectCity extends StatefulWidget {
  @override
  _SelectCityState createState() => _SelectCityState();
}

class _SelectCityState extends State<SelectCity> {
  static const menuItems = <String>[];
  final List<DropdownMenuItem<String>> _dropDownMenuItems = menuItems
      .map(
        (String value) => DropdownMenuItem<String>(
          value: value,
          child: Text(
            value,
          ),
        ),
      )
      .toList();

  String _btn1SelectedVal;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: double.infinity,
      child: DropdownButtonHideUnderline(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: DropdownButton(
              hint: Text('--SELECT YOUR CITY--'),
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
      ),
    );
  }
}
