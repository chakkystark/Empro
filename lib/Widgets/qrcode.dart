import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';

class QrCode extends StatefulWidget {
  static const routename = '/qrcode';

  @override
  _QrCodeState createState() => _QrCodeState();
}

class _QrCodeState extends State<QrCode> {
  var textcontroller = TextEditingController();
  @override
  void initState() {
    textcontroller = TextEditingController();
    super.initState();
  }

  void dispose() {
    textcontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: <Widget>[
        Container(
          child: BarcodeWidget(
              data: textcontroller.text ?? 'no text entered yet',
              barcode: Barcode.qrCode()),
        ),
        TextField(
          // onSubmitted: ,
          controller: textcontroller,
          keyboardType: TextInputType.name,
          decoration: InputDecoration(
            hintText: 'Enter the text generate QRCOde',
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey),
                borderRadius: BorderRadius.circular(2)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blue),
                borderRadius: BorderRadius.circular(2)),
          ),
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontFamily: 'SF-Pro',
          ),
        ),
      ]),
    );
  }
}
