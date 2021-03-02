import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class FileUpload extends StatefulWidget {
  FileUpload({Key key}) : super(key: key);

  @override
  _FileUploadState createState() => _FileUploadState();
}

class _FileUploadState extends State<FileUpload> {
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
    return Container(
      height: 50,
      width: 300,
      child: FlatButton(
        onPressed: getImage,
        child:
            _image == null ? Text('no Image bot selected') : Image.file(_image),
      ),
    );
  }
}
