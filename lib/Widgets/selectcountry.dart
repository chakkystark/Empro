import 'package:flutter/material.dart';

class SelectCountry extends StatefulWidget {
  @override
  _SelectCountryState createState() => _SelectCountryState();
}

class _SelectCountryState extends State<SelectCountry> {
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
      alignment: Alignment.centerLeft,
      width: double.infinity,
      child: DropdownButtonHideUnderline(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: DropdownButton(
              hint: Text('--SELECT YOUR COUNTRY--'),
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
