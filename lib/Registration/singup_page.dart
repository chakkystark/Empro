import 'dart:io';

import 'package:Empro/Widgets/selectcity.dart';
import 'package:Empro/Widgets/selectcountry.dart';
import 'package:Empro/Widgets/selectuser.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

class SignUp extends StatefulWidget {
  static const routename = '/signuppage';

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  File _image;
  Future getImage() async {
    // ignore: deprecated_member_use
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      _image = image;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 40,
                        child: Image.asset(
                          'assets/images/login_head.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: 60,
                        child: Image.asset(
                          'assets/images/logo.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Please Fill',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Column(
                    children: <Widget>[
                      buildContainerTextField('Full Name'),
                      SizedBox(height: 5),
                      buildContainerTextField('Your Email'),
                      SizedBox(height: 5),
                      buildContainerTextField('Your Phone No'),
                      SizedBox(height: 5),
                      buildDropDownMenuContainer(SelectUser()),
                      SizedBox(height: 5),
                      buildDropDownMenuContainer(SelectCity()),
                      SizedBox(height: 5),
                      buildDropDownMenuContainer(
                        SelectCountry(),
                      ),
                      SizedBox(height: 15),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('Upload Your Selfi Pic*'),
                            SizedBox(height: 5),
                            Container(
                              height: 50,
                              width: double.infinity,
                              alignment: Alignment.centerLeft,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(2)),
                              child: Row(children: <Widget>[
                                RaisedButton(
                                  color: Colors.white70,
                                  elevation: 5,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(6)),
                                  child: Text('Choose file'),
                                  onPressed: getImage,
                                ),
                                Text(' No File Choosen Yet'),
                              ]),
                            ),
                            SizedBox(height: 5),
                            Text('Upload Your ID Proof*'),
                            SizedBox(height: 5),
                            Container(
                              height: 50,
                              width: double.infinity,
                              alignment: Alignment.centerLeft,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(2)),
                              child: Row(children: <Widget>[
                                RaisedButton(
                                  color: Colors.white70,
                                  elevation: 5,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(6)),
                                  child: Text('Choose file'),
                                  onPressed: getImage,
                                ),
                                Text(' No File Choosen Yet'),
                              ]),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: RichText(
                                  text: TextSpan(children: [
                                TextSpan(
                                    text: 'Please upload Aadhaar card,',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 16)),
                                TextSpan(
                                    text: 'Pan card or Voter Id \n (AnyOne)',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 16))
                              ])),
                            )
                          ]),
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Submit',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w300),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Back',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.w300),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container buildDropDownMenuContainer(child) {
    return Container(
        height: 50,
        alignment: Alignment.center,
        width: double.infinity,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(4)),
        child: child);
  }

  Container buildContainerTextField(
    String hinttext,
  ) {
    return Container(
      height: 50,
      width: double.infinity,
      child: TextField(
        onSubmitted: (_) {},
        keyboardType: TextInputType.name,
        decoration: InputDecoration(
          hintText: hinttext,
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
    );
  }
}
